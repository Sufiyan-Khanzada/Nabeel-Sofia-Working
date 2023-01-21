<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class RentedProduct extends Model
{
    use HasFactory;

    protected $fillable = [
        'buyer_id', 'seller_id', 'product_id', 'price', 'shipment_address', 'request_status', 'from', 'to', 'product_status'
    ];

    public function products()
    {
        return $this->hasMany(Products::class, 'id', 'product_id');
    }

    public function brands(){
        return $this->belongsTo(Brand::class, 'product_id');
    }
    public function users()
    {
        return $this->hasMany(User::class, 'id', 'user_id');
    }
    public function requestrent($request)
    {
        $pro = Products::where('id', $request->product_id)->get(['min_rent_day', 'max_rent_day'])->toArray();
        $fromDate = Carbon::parse($request->from);
        $toDate = Carbon::parse($request->to);
        $diffReq = $fromDate->diffInDays($toDate);
        if($diffReq < $pro[0]['min_rent_day'] || $diffReq > $pro[0]['max_rent_day']){
            return response()->json(['error' => true, 'message' => 'minimum rent period for this product is '.$pro[0]['min_rent_day'].' and maximum rent period for this product is '.$pro[0]['max_rent_day']], 400);
        }
        $product = RentedProduct::where('request_status', 'approved')
            ->where('product_id', $request->product_id)
            ->whereDate('from','>=',date('Y-m-d',strtotime($request->from)))
            ->whereDate('to','<=',date('Y-m-d',strtotime($request->to)))
            ->orderBy('from', 'ASC')
            ->get();
        if (!($product->isEmpty())) {
            $product = $product->toArray();
            $from = [];
            $to = [];
            foreach($product as $key => $value)
            {
                array_push($from, strtotime($value['from']));
                array_push($to, strtotime($value['to']));
            }
            return response()->json(['error' => true,
            'message' => 'this product is not available from '.date('d-m-Y',reset($from)). ' to '.date('d-m-Y',end($to)).''], 404);
        }
        else{
            $product = RentedProduct::where('request_status', 'pending')
            ->where('product_id', $request->product_id)
            ->whereDate('from','>=',date('Y-m-d',strtotime($request->from)))
            ->whereDate('to','<=',date('Y-m-d',strtotime($request->to)))
            ->where('buyer_id', $request->buyer_id)
            ->where('seller_id', $request->seller_id)
            ->exists();
            if($product)
            {
                return response()->json(['error' => true,
            'message' => 'you have already apply for rental request'], 406);
            }
            try {
                $rent = RentedProduct::create([
                    "buyer_id" => $request->buyer_id,
                    "seller_id" => $request->seller_id,
                    "product_id" => $request->product_id,
                    "price" => $request->price,
                    "shipment_address" => $request->shipment_address,
                    "request_status" => 'pending',
                    "from" => Carbon::createFromFormat('d-m-Y', $request->from),
                    "to" => Carbon::createFromFormat('d-m-Y', $request->to),
                    "product_status" => "available for rent"
                ]);
                $prod = Products::where('id', $request->product_id)->first();
                $user = User::where('id', $request->buyer_id)->first();
                Notification::create([
                    'user_id' => $request->seller_id,
                    'data' => $user->name.' wants to rent your product '.$prod->Item_name,
                    'read_at' => null,
                    'rented_id' => $rent->id,
                    'product_id' => $request->product_id,
                ]);
                Notification::create([
                    'user_id' => $request->buyer_id,
                    'data' => 'Request sent: waiting for vendor for approval.',
                    'read_at' => null,
                    'product_id' => $request->product_id
                ]);
                return response()->json(['success' => true, 'data' => $rent], 200);
            } catch (\Exception $th) {
                return response()->json(['error' => true, 'message' => $th], 406);
            }
        }
    }

    public function rejectrent($id)
    {
        $reject = RentedProduct::where('id', $id)->first();
        if ($reject->request_status == "pending") {
            $reject->update([
                'request_status' => 'rejected'
            ]);
            Notification::create([
                'user_id' => $reject->buyer_id,
                'data' => 'Request for product rent has been rejected',
                'read_at' => null
            ]);
            return response()->json(['success' => true, 'message' => 'Request for product rent has been rejected'], 200);
        } else {
            return response()->json(['success' => true, 'message' => 'You can not reject already rejected or approved product'], 401);
        }
    }

    public function approverent($id)
    {
        $approve = RentedProduct::where('id', $id)->first();
        if ($approve->request_status == "pending") {
            $approve->update([
                'request_status' => 'approved',
                'product_status' => 'waiting for shipment'

            ]);
            Notification::create([
                'user_id' => $approve->buyer_id,
                'data' => 'Request for product rent has been approved',
                'read_at' => null
            ]);
            return response()->json(['success' => true, 'message' => 'Request for product rent has been approved'], 200);
        } else {
            return response()->json(['success' => true, 'message' => 'You can not approve already rejected or approved product'], 401);
        }
    }

    public function returnProduct($id)
    {
        $approve = RentedProduct::where('id', $id)->first();
        if ($approve->request_status == "approved" && $approve->product_status == "waiting for shipment") {
            $approve->update([
                'product_status' => 'waiting for return'

            ]);
            return response()->json(['success' => true, 'message' => 'product return to user'], 200);
        } else {
            return response()->json(['success' => true, 'message' => 'not found'], 401);
        }
    }

    public function checkavailable($id, $request)
    {
        if(!$request->has(['from', 'to'])){
            $product = RentedProduct::where('request_status', 'approved')
            ->where('product_id', $id)
            ->get(['from', 'to']);
            if (!($product->isEmpty())) {
                $product = $product->toArray();
                $from = [];
                $to = [];
                foreach($product as $key => $value)
                {
                    array_push($from, strtotime($value['from']));
                    array_push($to, strtotime($value['to']));
                }
                $date = array();
                foreach($from as $key=> $value)
                {
                    foreach($to as $k => $v)
                    {
                        $date[date('d-m-Y',$value)] = date('d-m-Y',$v);
                    }
                }
                return response()->json(['success' => true, 'date' => $date], 200);
            }
        }
        $product = RentedProduct::where('request_status', 'approved')
            ->where('product_id', $id)
            ->whereDate('from','>=',date('Y-m-d',strtotime($request->from)))
            ->whereDate('to','<=',date('Y-m-d',strtotime($request->to)))
            ->orderBy('from', 'ASC')
            ->get();
        if (!($product->isEmpty())) {
            $product = $product->toArray();
            $from = [];
            $to = [];
            foreach($product as $key => $value)
            {
                array_push($from, strtotime($value['from']));
                array_push($to, strtotime($value['to']));
            }
            $date = array();
            foreach($from as $key=> $value)
            {
                foreach($to as $k => $v)
                {
                    $date[date('d-m-Y',$value)] = date('d-m-Y',$v);
                }
            }
            return response()->json(['error' => true,
            'message' => 'this product is not available from '.date('d-m-Y',reset($from)). ' to '.date('d-m-Y',end($to)).'',
            'data' => $date], 404);
        }
        else{
            return response()->json(['error' => true,
            'message' => 'this product is available from '.date('d-m-Y',strtotime($request->from)). ' to '.date('d-m-Y',strtotime($request->to)).''], 200);
        }
    }

    public function personalUse($request)
    {
        $product = RentedProduct::where('request_status', 'approved')
            ->where('product_id', $request->product_id)
            ->whereDate('from','>=',date('Y-m-d',strtotime($request->from)))
            ->whereDate('to','<=',date('Y-m-d',strtotime($request->to)))
            ->orderBy('from', 'ASC')
            ->get();
        if (!($product->isEmpty())) {
            $product = $product->toArray();
            $from = [];
            $to = [];
            foreach($product as $key => $value)
            {
                array_push($from, strtotime($value['from']));
                array_push($to, strtotime($value['to']));
            }
            return response()->json(['error' => true,
            'message' => 'this product is not available from '.date('d-m-Y',reset($from)). ' to '.date('d-m-Y',end($to)).''], 404);
        }
        else{
            try {
                $rent = RentedProduct::create([
                    "buyer_id" => auth()->id(),
                    "seller_id" => auth()->id(),
                    "product_id" => $request->product_id,
                    "price" => $request->price,
                    "request_status" => 'approved',
                    "from" => Carbon::createFromFormat('d-m-Y', $request->from),
                    "to" => Carbon::createFromFormat('d-m-Y', $request->to),
                    "product_status" => "not available"
                ]);
                return response()->json(['success' => true, 'data' => $rent], 200);
            } catch (\Exception $th) {
                return response()->json(['error' => true, 'message' => $th], 406);
            }
        }
    }
}
