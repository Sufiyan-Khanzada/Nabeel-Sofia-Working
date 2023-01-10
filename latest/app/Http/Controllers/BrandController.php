<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Http\Request;
use App\Models\Brand;

class BrandController extends Controller
{
    protected $model;

    public function __construct()
    {
        $this->model = new Brand();
    }

    public function index()
    {
        try {
            $brands = $this->model::all();
            return response()->json(['success' => true, 'data' => $brands], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 200);
        }
    }
    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'status' => 'required'
        ]);
        if($validate->fails()){
            return response()->json([
                'success' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validate->errors()
            ]);
        }
        $brand = $this->model::create([
            'name' => $request->name,
            'status' => $request->status
        ]);
        if($brand){
            return response()->json(['success' => true, 'message' => 'brand inserted successfully'], 200);
        }
        return response()->json(['success' => false, 'message' => 'something went wrong'], 406);
    }
    public function update(Request $request, $id)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'status' => 'required'
        ]);
        if($validate->fails()){
            return response()->json([
                'success' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validate->errors()
            ]);
        }
        $brand = $this->model::find($id);
        if($brand){
            $brand->update([
                'name' => $request->name,
                'status' => $request->status
            ]);
            return response()->json(['success' => true, 'message' => 'brand updated successfully', 'data' => $brand], 200);
        }
        return response()->json(['success' => true, 'message' => 'something went wrong'], 404);
    }
    public function destroy($id)
    {
        $brand = $this->model::find($id);
        if($brand){
            $brand->delete($id);
            return response()->json(['success' => true, 'message' => 'brand deleted successfully'], 200);
        }
        return response()->json(['success' => true, 'message' => 'brand not found'], 404);
    }
    public function view($id)
    {
        $brand = $this->model::find($id);
        if($brand){
            return response()->json(['success' => true, 'message' => 'brand fetch successfully', 'data' => $brand], 200);
        }
        return response()->json(['success' => true, 'message' => 'brand not found'], 404);
    }
}
