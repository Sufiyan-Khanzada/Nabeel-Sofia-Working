<?php

namespace App\Http\Controllers;

use App\Models\RentedProduct;
use Validator;
use Illuminate\Http\Request;

class RentedProductController extends Controller
{

    protected $model;

    public function __construct()
    {
        $this->model = new RentedProduct();
    }

    public function requestRental(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'buyer_id' => 'required',
            'seller_id' => 'required',
            'product_id' => 'required',
            'shipment_address' => 'nullable',
            'price' => 'required',
            'from' => 'required|after:today',
            'to' => 'required|after:from',
        ]);
        if($validate->fails())
        {
            return response()->json(['error' => true, 'message' => $validate->errors()], 422);
        }
        try{
            $result = $this->model->requestrent($request);
            return $result;
        }
        catch (\Exception $e){
            return response()->json(['error' => true, 'Exception' => $e], 405);
        }
    }

    public function rejectRental($id)
    {
        try {
            return $this->model->rejectrent($id);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 403);
        }
    }

    public function approveRental($id)
    {
        try {
            return $this->model->approverent($id);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 403);
        }
    }

    public function returnProduct($id)
    {
        try {
            return $this->model->returnProduct($id);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 403);
        }
    }

    public function checkAvailability($id, Request $request)
    {
        try {
            return $this->model->checkavailable($id, $request);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 403);
        }
    }

    public function personalUse(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'product_id' => 'required',
            'shipment_address' => 'nullable',
            'price' => 'nullable',
            'from' => 'required|after:today',
            'to' => 'required|after:from',
        ]);
        if($validate->fails())
        {
            return response()->json(['error' => true, 'message' => $validate->errors()], 422);
        }
        try {
            return $this->model->personalUse($request);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 403);
        }
    }

    public function getSellingUser($id)
    {
        try {
            $result = $this->model::with('products')->where('seller_id', $id)->get();
            if($result->isNotEmpty())
            {
                return response()->json(['success' => true, 'data' => $result], 200);
            }
            else{
                return response()->json(['error' => true, 'message' => 'no product found'], 404);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 200);
        }
    }

    public function getBuyingUser($id)
    {
        try {
            $result = $this->model::with('products')->where('buyer_id', $id)->get();
            if($result->isNotEmpty())
            {
                return response()->json(['success' => true, 'data' => $result], 200);
            }
            else{
                return response()->json(['error' => true, 'message' => 'no product found'], 404);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 200);
        }
    }
}
