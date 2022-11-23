<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class RentedProduct extends Model
{

    protected $fillable = [
        'buyer_id', 'seller_id', 'product_id', 'price', 'status', 'from', 'to'
    ];
    use HasFactory;

    public function requestrent($request)
    {
        $product = RentedProduct::where('status', 'approved')
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
                    "buyer_id" => $request->buyer_id,
                    "seller_id" => $request->seller_id,
                    "product_id" => $request->product_id,
                    "price" => $request->price,
                    "status" => $request->status,
                    "from" => Carbon::createFromFormat('d-m-Y', $request->from),
                    "to" => Carbon::createFromFormat('d-m-Y', $request->to)
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
        if ($reject->status == "pending") {
            $reject->update([
                'status' => 'rejected'
            ]);
            return response()->json(['success' => true, 'message' => 'Request for product rent has been rejected'], 200);
        } else {
            return response()->json(['success' => true, 'message' => 'You can not reject already rejected or approved product'], 401);
        }
    }

    public function approverent($id)
    {
        $approve = RentedProduct::where('id', $id)->first();
        if ($approve->status == "pending") {
            $approve->update([
                'status' => 'approved'
            ]);
            return response()->json(['success' => true, 'message' => 'Request for product rent has been approved'], 200);
        } else {
            return response()->json(['success' => true, 'message' => 'You can not approve already rejected or approved product'], 401);
        }
    }

    public function checkavailable($id, $request)
    {
        $product = RentedProduct::where('status', 'approved')
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
            return response()->json(['error' => true,
            'message' => 'this product is not available from '.date('d-m-Y',reset($from)). ' to '.date('d-m-Y',end($to)).''], 404);
        }
        else{
            return response()->json(['error' => true,
            'message' => 'this product is available from '.date('d-m-Y',strtotime($request->from)). ' to '.date('d-m-Y',strtotime($request->to)).''], 200);
        }
    }
}
