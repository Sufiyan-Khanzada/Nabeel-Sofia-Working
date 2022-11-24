<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\Products;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Laravel\Passport\TokenRepository;
use Laravel\Passport\RefreshTokenRepository;


class ProductController extends Controller
{
    public function allproducts()
    {
        $products = products::all();
        return response()->json([
            'success' => true,
            'message' => 'Items Fetched SuccessFully.',
            'data' => $products,
        ], 200);
    }

    public function all_trending()
    {
        $products = products::select('id', 'Item_image', 'Item_name', 'Item_price', 'Item_brand', 'size')->where('trending', 'yes')->get();;

        return response()->json([
            'success' => true,
            'message' => 'Detail Fetched SuccessFully',
            'data' => $products
        ], 200);
    }

    public function productCount($id)
    {
        $product = Products::where('id', $id)->first();
        if ($product) {
            $count = ++$product->views;
            $product->update([
                'views' => $count
            ]);
        }
    }

    public function trendingProduct()
    {
        try {
            $product = Products::where('views', '!=', 0)->get();
            if(count($product) > 5)
            {
                $product = Products::where('views', '!=', 0)->paginate(5);
            }
            return response()->json(['success' => true, 'data' => $product], 200);
        } catch (\Exception $th) {
            return response()->json(['error' => true, 'message' => $th], 402);
        }
    }

    public function create_product(Request $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'Item_name' => 'nullable',
            'Item_brand' => 'nullable',
            'Item_price' => 'nullable',
            'Item_rating' => 'nullable',
            'Item_mode' => 'nullable',
            'Item_image' => 'nullable',
            'username' => 'nullable',
            'rental_price_week' => 'nullable',
            'category' => 'nullable',
            'subcategory' => 'nullable',
            'size' => 'nullable',
            'color' => 'nullable',
            'insuretype' => 'nullable',
            'condition' => 'nullabled',
            'description' => 'nullable',
            'tags' => 'nullable',
            'damageinfo' => 'nullable',
            'damage_pic' => 'nullable',
            'purchaseproof' => 'nullable',
            'rental_price_oneday' => 'nullable',

        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validator->errors()
            ]);
        }
        //              $images=$request->file('Item_image');
        //              $imageName="";
        //              $imagepath="https://testlinks.code7labs.com/Testing/storage/app/public/media_files";

        // if($images!=''){


        // $newname=rand().'.'.$images->getClientOriginalExtension();
        // $images->move('testing/storage/app/public/media_files',$newname);
        // $imageName=$imageName.$newname;
        // $full_image=$imagepath."/".$imageName;

        $products = new products();
        $products->Item_name = $request->Item_name;
        $products->Item_brand = $request->Item_brand;
        $products->Item_price = $request->Item_price;

        $products->Item_rating = $request->Item_rating;
        $products->Item_mode = $request->Item_mode;
        $products->Item_image = $request->Item_image;
        $products->username = $request->username;


        $products->rental_price_week = $request->rental_price_week;
        $products->category = $request->category;
        $products->subcategory = $request->subcategory;
        $products->size = $request->size;

        $products->color = $request->color;
        $products->insuretype = $request->insuretype;
        $products->item_condition = $request->item_condition;
        $products->description = $request->description;

        $products->tags = $request->tags;
        $products->damageinfo = $request->damageinfo;
        $products->damage_pic = $request->damage_pic;
        $products->purchaseproof = $request->purchaseproof;
        $products->rental_price_oneday = $request->rental_price_oneday;


        $products->save();

        return response()->json([
            'status' => true,
            'message' => 'Item Added SuccessFully.',

        ], 200);
    }



    public function show_product($id)
    {
        $products = products::find($id);

        if (is_null($products)) {
            return response()->json([
                'status' => false,
                'message' => 'Products Details Not Found'
            ], 404);
        }
        return response()->json([
            'status' => true,
            'message' => 'Item Fetched SuccessFully.',
            'data' => $products,
        ], 200);
    }





    public function destroy_product($id)
    {
        $delete_product = products::find($id);
        if ($delete_product != "") {
            $delete_product->delete();
            return response()->json([
                'success' => true,
                'message' => 'Product Remove Successfully Done.'
            ], 200);
        } else {
            return response()->json([
                'success' => true,
                'message' => 'Product Not Found.'
            ], 404);
        }
    }

    public function update_product(Request $request, $id)
    {

        $input = $request->all();

        $products = new products();
        $products = products::find($id);

        if ($products) {

            $products->Item_name = $request->Item_name;
            $products->Item_brand = $request->Item_brand;
            $products->Item_price = $request->Item_price;

            $products->Item_rating = $request->Item_rating;
            $products->Item_mode = $request->Item_mode;
            // $products->Item_image=$request->Item_image;
            $products->username = $request->username;


            $products->rental_price_week = $request->rental_price_week;
            $products->category = $request->category;
            $products->subcategory = $request->subcategory;
            $products->size = $request->size;

            $products->color = $request->color;
            $products->insuretype = $request->insuretype;
            $products->item_condition = $request->item_condition;
            $products->description = $request->description;

            // $products->tags=$request->tags;
            // $products->damageinfo=$request->damageinfo;
            // $products->damage_pic=$request->damage_pic;
            // $products->purchaseproof=$request->purchaseproof;
            // $products->rental_price_oneday=$request->rental_price_oneday;

            $products->save();



            return response()->json([
                'status' => true,
                'message' => 'Products Details Updated Successfully.'
            ], 200);
        }
    }


    public function show_product_cat($cat)
    {
        $products = products::where('category', $cat)->get();

        if (is_null($products)) {
            return response()->json([
                'success' => false,
                'message' => 'Products Details Not Found'
            ], 200);
        }
        return response()->json([
            'success' => true,
            'message' => 'Item Fetched SuccessFully.',
            'data' => $products,
        ], 200);
    }
}
