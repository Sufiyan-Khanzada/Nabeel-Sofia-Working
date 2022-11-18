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
     public function allcat()
    {
        $cat = Category::all();
        if($cat==""){
        return response()->json([
            'success' => true,
            'message' => 'Category Not Found Done.',
            // 'data' => $Items

        ], 404);
        

        }else{
        return response()->json([
            'success' => true,
            'message' => 'Category Fetch Successfully Done.',
            'data' => $cat

        ], 200);
        
    }
}


public function store(Request $request)
    {
        
        $input = $request->all();
   
        $validator = Validator::make($input, [
          
            'main_category'=>'required|string',
            'sub_category' => 'required|string',
            'sub_category1' => 'required|string',
            ]);
   
        
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validator->errors()
            ]);
        }  
     
     
        

            $cat = new Category();
            $cat->main_category=$request->main_category;
            $cat->sub_category=$request->sub_category;
            $cat->sub_category1=$request->sub_category1;
            $cat->save();

        return response()->json([
            'success' => true,
            'message' => 'Category Details Added Successfully.',
            'Images'=> 'Image Not Added',
            
            
        ], 200);

         }

public function show_single_category(Request $request , $id)
    {
         $cat = Category::find($id);
        // $ids = $request->input('ids', []); // via injected instance of Request
      // $items1 = items::whereIn('id', explode(',', $id))->get();
       // $items1 = items::whereIn('id', explode(',', $id->$request->get()));
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

       // return $items;
    }


public function update_cat(Request $request , $id)
    {

         $input = $request->all();
        
            $cat = new Category();
            $cat = Category::find($id);
            
           
         if($cat){
           
            $cat->main_category=$request->main_category;
            $cat->sub_category=$request->sub_category;
            $cat->sub_category1=$request->sub_category1;
            
            
           
            $cat->save();
            
             return response()->json([
            'success' => true,
            'message' => 'Category Details Updated Successfully.'
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
        $delete_cat->delete();
   
        return response()->json([
            'success' => true,
            'message' => 'Category Remove Successfully Done.'
        ], 200);
    }








}
