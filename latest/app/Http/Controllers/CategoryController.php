<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\Hash;
use Laravel\Passport\TokenRepository;
use Laravel\Passport\RefreshTokenRepository;
use Validator;

class CategoryController extends Controller
{
    //
     public function allChildCat()
    {
        $cat = Category::where('is_child', 1);
        if($cat == null){
        return response()->json([
            'success' => true,
            'message' => 'Category Not Found Done.'
        ], 404);
        }else{
        return response()->json([
            'success' => true,
            'message' => 'Category Fetch Successfully Done.',
            'data' => $cat->get()

        ], 200);
    }
}

public function relationCategory($id)
    {
        try {
            $parent = Category::where('id', $id)->where('is_child', 0)->get();
            if($parent){
                $child = Category::where('child_of', $id)->get();
                $result = $parent->merge($child);
            }
            return response()->json(['success' => true, 'data' => $result], 200);
        } catch (\Exception $th) {
            return response()->json(['error' => true, 'message' => $th], 402);
        }
    }

public function allParentCat()
{
    $cat = Category::where('is_child', 0);
    if($cat == null){
    return response()->json([
        'success' => true,
        'message' => 'Category Not Found Done.'
    ], 404);
    }else{
    return response()->json([
        'success' => true,
        'message' => 'Category Fetch Successfully Done.',
        'data' => $cat->get()

    ], 200);
}
}


public function store(Request $request)
    {
        
        $input = $request->all();
        $validator = Validator::make($input, [
            'name'=>'required|string',
            'is_child' => 'required|integer',
            'child_of' => 'nullable|integer',
            ]);
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validator->errors()
            ]);
        }
            $cat = new Category();
            $cat->name=$request->name;
            $cat->is_child=$request->is_child;
            $cat->child_of=$request->child_of;
            $cat->save();
        return response()->json([
            'success' => true,
            'message' => 'Category Details Added Successfully.',
            'data'=> $cat,
        ], 200);

         }

public function show_single_category(Request $request , $id)
    {
         $cat = Category::find($id);
        if (is_null($cat)) {
            return response()->json([
                'success' => false,
                'message' => 'Category Details Not Found'
            ], 404);
        }
        return response()->json([
                'success' => false,
                'message' => 'Items Details Found',
                'data' => $cat
            ], 404);
    }


public function update_cat(Request $request , $id)
    {
         $input = $request->all();
            $cat = new Category();
            $cat = Category::find($id);
            
           
         if($cat){
           
            $cat->name=$request->name;
            $cat->is_child=$request->is_child;
            $cat->child_of=$request->child_of;
            $cat->save();
            
             return response()->json([
            'success' => true,
            'message' => 'Category Details Updated Successfully.',
            'data' => $cat
        ], 200);

            
         } 
         else{
             return response()->json([
            'success' => true,
            'message' => 'Category Not Found.'
        ], 404);
 
             
         }
       
         
   
    }


 public function destroy_cat($id)
    {
        $delete_cat = Category::find($id);
        if($delete_cat){
            $delete_cat->delete();
            return response()->json([
                'success' => true,
                'message' => 'Category Remove Successfully Done.'
            ], 200);
        }
        else{
            return response()->json([
                'success' => false,
                'message' => 'Category Not Found.'
            ], 404);
        }
   
    }








}
