<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Http\Request;
use App\Models\Favourite;

class FavouriteController extends Controller
{
    protected $model;

    public function __construct()
    {
        $this->model = new Favourite();
    }
    public function index()
    {
        try {
            $result= $this->model::with('products')
            ->whereHas('products', function($q){
                $q->join('brands', 'brands.id', '=', 'products.brand_id');
            })
            ->where('user_id', auth()->id())->get();
            if($result)
            {
            return response()->json(['success' => true, 'data' => $result, 'count' => $result->count()], 200);
            }
            return response()->json(['success' => true, 'message' => 'no favourites yet'], 404);
        } catch (\Exception $th) {
            return response()->json(['error' => true, 'message' => $th], 405);
        }
    }

    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'user_id' => 'required',
            'product_id' => 'required'
        ]);
        if($validate->fails())
        {
            return response()->json(['error' => true, 'message' => $validate->errors()], 422);
        }
        try {
            $exist = $this->model::where('product_id', $request->product_id)
            ->where('user_id', auth()->id())->exists();
            if($exist)
            {
                return response()->json(['error' => true, 'message' => 'product is already in favourite list'], 400);
            }
            else{
                $result = $this->model->create($request->only($this->model->getFillable()));
                if($result)
                {
                    return response()->json(['success' => true, 'data' => $result], 200);
                }
            }
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 405);
        }
    }

    public function delete($id)
    {
        try {
            $result = $this->model::where('user_id', auth()->id())->find($id);
            if($result)
            {
                $result->delete();
                return response()->json(['success' => true, 'message' => 'record deleted successfully'], 200);
            }
            return response()->json(['error' => true, 'message' => 'no record found'], 404);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 405);
        }
    }
}
