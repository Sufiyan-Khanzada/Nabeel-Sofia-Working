<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Http\Request;
use App\Models\RecommendedProduct;
use App\Models\Products;

class RecommendedProductController extends Controller
{
    protected $primary_model;
    protected $product_model;
    protected $user_id;
    public function __construct()
    {
        $this->product_model = new Products();
        $this->primary_model = new RecommendedProduct();
    }
    public function setUserID()
    {
        $this->user_id = auth()->user()->id;
        return $this->user_id;
    }
    public function getRecommendedProducts()
    {
        try {
            $recommend = $this->primary_model->getRecommended($this->setUserID());
            return response()->json(['success' => true, 'data' => $recommend], 200);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => 'something went wrong', 'Exception' => $e], 403);
        }
    }

    public function setRecommendedProducts(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'search_query' => 'required'
        ]);
        if($validate->fails())
        {
            return response()->json([
                'status' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validate->errors()
            ]);
        }
        try 
        {
            $result = $this->primary_model->setRecommended($request->search_query,$this->setUserID());
            return response()->json(['success' => true, 'data' => $result], 200);    
        } catch (\Exception $e) 
        {
            return response()->json(['success' => false, 'message' => 'something went wrong', 'Exception' => $e], 403);
        }
    }

    public function searchProduct(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'search_query' => 'required'
        ]);
        if($validate->fails())
        {
            return response()->json([
                'status' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validate->errors()
            ]);
        }
        try 
        {
            $result = $this->product_model->searchProduct($request->search_query, $this->setUserID());
            return response()->json(['success' => true, 'data' => $result], 200);    
        } catch (\Exception $e) 
        {
            return response()->json(['success' => false, 'message' => 'something went wrong', 'Exception' => $e], 403);
        }
    }
}
