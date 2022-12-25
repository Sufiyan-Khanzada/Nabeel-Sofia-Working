<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\Products;
use App\Models\Favourite;
use App\Models\Notification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;
use Laravel\Passport\TokenRepository;
use Laravel\Passport\RefreshTokenRepository;


class ProductController extends Controller
{
    protected $model;

    public function __construct(){
        $this->model = new Products();
    }
    public function allproducts()
    {
        $products = $this->model::with(['categories', 'brands'])->where('status', 'approved')->get();
        return response()->json([
            'success' => true,
            'message' => 'Items Fetched SuccessFully.',
            'data' => $products,
            // 'is_favourtie' => $favourite
        ], 200);
    }

    public function productCount($id)
    {
        $product = $this->model::where('id', $id)->first();
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
            $product = $this->model::where('views', '!=', 0)->where('status', 'approved')->with(['categories', 'brands'])->orderBy('views', 'DESC')->get();
            // if(count($product) > 5)
            // {
            //     $product = $this->model::where('views', '>', 0)->orderBy('views', 'DESC')->paginate(5);
            // }
            return response()->json(['success' => true, 'data' => $product], 200);
        } catch (\Exception $th) {
            return response()->json(['error' => true, 'message' => $th], 402);
        }
    }

    public function create_product(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
        'Item_name' => 'required',
        'Item_price' => 'required',
        'brand_id' => ['required',Rule::exists('brands','id')->where(function ($query) use($request) {
            return $query->where('status', 'whitelist');
        }),],
        'user_id' => 'required|exists:users,id',
        'Item_mode' => 'required',
        'Item_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        'views' => 'nullable',
        'rental_price_week' => 'nullable',
        'rental_price_oneday' => 'nullable',
        'category_id' => 'required|exists:categories,id',
        'min_rent_day' => 'required',
        'max_rent_day' => 'required',
        'size' => 'nullable',
        'color' => 'nullable',
        'insuretype' => 'nullable',
        'item_condition' => 'required',
        'description' => 'required',
        'tags' => 'required',
        'damageinfo' => 'required',
        'damage_pic' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        'purchaseproof' => 'nullable',
        'is_featured' => 'nullable',
        'featured_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validator->errors()
            ]);
        }
        $itemImage = time().'.'.$request->Item_image->extension();
        $request->Item_image->move(public_path('images'), $itemImage);
        $featuredImage = time().'.'.$request->featured_image->extension();
        $request->featured_image->move(public_path('images'), $featuredImage);
        $damageImage = "";
        if($request->has('damage_pic')){
            $damageImage = time().'.'.$request->damage_pic->extension();
            $request->damage_pic->move(public_path('images'), $damageImage);
        }
        $productCreate = $this->model::create([
            'Item_name' => $request->Item_name,
            'Item_price' => $request->Item_price,
            'brand_id' => $request->brand_id,
            'user_id' => $request->user_id,
            'Item_mode' => $request->Item_mode,
            'Item_image' => $itemImage,
            'views' => 0,
            'rental_price_week' => $request->rental_price_week,
            'rental_price_oneday' => $request->rental_price_oneday,
            'category_id' => $request->category_id,
            'min_rent_day' => $request->min_rent_day,
            'max_rent_day' => $request->max_rent_day,
            'size' => $request->size,
            'status' => 'pending',
            'color' => $request->color,
            'insuretype' =>$request->insuretype,
            'item_condition' => $request->item_condition,
            'description' => $request->description,
            'tags' => $request->tags,
            'damageinfo' => $request->damageinfo,
            'damage_pic' => $damageImage,
            'purchaseproof' => $request->purchaseproof,
            'is_featured' => 'no',
            'featured_image' => $featuredImage
        ]);
        if($productCreate){
            return response()->json([
                'status' => true,
                'message' => 'Item Added SuccessFully.',
                'data' => $productCreate
            ], 200);
        }
        return response()->json(['error' => true, 'message' => 'something went wrong'], 405);
    }



    public function show_product($id)
    {
        $products = products::with('users')->find($id);

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
        $product = $this->model::find($id);
        if ($product) {
            if($request->has('Item_image')){
                $image = public_path('images\\').$product->Item_image;
                if(file_exists($image)){
                    unlink($image);
                }
                $itemImage = time().'.'.$request->Item_image->extension();
                $request->Item_image->move(public_path('images'), $itemImage);
                $product->Item_image = $itemImage;
            }
            if($request->has('featured_image')){
                $image = public_path('images\\').$product->featured_image;
                if(file_exists($image)){
                    unlink($image);
                }
                $featuredImage = time().'.'.$request->featured_image->extension();
                $request->featured_image->move(public_path('images'), $featuredImage);
                $product->featured_image = $featuredImage;
            }
            if($request->has('damage_pic')){
                $image = public_path('images\\').$product->damage_pic;
                if(file_exists($image)){
                    unlink($image);
                }
                $damageImage = time().'.'.$request->damage_pic->extension();
                $request->damage_pic->move(public_path('images'), $damageImage);
                $product->damage_pic = $damageImage;
            }
                $product->Item_name = $request->Item_name;
                $product->Item_price = $request->Item_price;
                $product->brand_id = $request->brand_id;
                $product->user_id = $request->user_id;
                $product->Item_mode = $request->Item_mode;
                $product->views = 0;
                $product->rental_price_week = $request->rental_price_week;
                $product->rental_price_oneday = $request->rental_price_oneday;
                $product->category_id = $request->category_id;
                $product->min_rent_day = $request->min_rent_day;
                $product->max_rent_day = $request->max_rent_day;
                $product->size = $request->size;
                $product->color = $request->color;
                $product->insuretype = $request->insuretype;
                $product->item_condition = $request->item_condition;
                $product->description = $request->description;
                $product->tags = $request->tags;
                $product->damageinfo = $request->damageinfo;
                $product->purchaseproof = $request->purchaseproof;
                $product->is_featured = 'no';
                return response()->json([
                    'status' => true,
                    'message' => 'Item Updated SuccessFully.',
                    'data' => $product
                ], 200);
        }
        return response()->json(['error' => true, 'message' => 'something went wrong'], 405);
    }

    public function UserProducts($id)
    {
        try {
            $result = $this->model::where('user_id', $id)->with(['categories', 'brands'])->get();
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

    public function approvedProduct($id)
    {
        $product = $this->model::where('id', $id)->where('status' , 'pending')->first();
        if(!empty($product)){
            $product->update([
                'status' => 'approved'
            ]);
            Notification::create([
                'user_id' => $product->user_id,
                'data' => 'Request for product has been approved',
                'read_at' => null
            ]);
            return response()->json(['success' => true, 'message' => 'Product Has been approved'], 200);
        }
        return response()->json(['success' => true, 'message' => 'No pending product found']);

    }
    public function rejectProduct($id)
    {
        $product = $this->model::where('id', $id)->where('status' , 'pending')->first();
        if($product){
            $product->update([
                'status' => 'rejected'
            ]);
            Notification::create([
                'user_id' => $product->user_id,
                'data' => 'Request for product has been rejected',
                'read_at' => null
            ]);
            return response()->json(['success' => true, 'message' => 'Product Has been rejected'], 200);
        }
        return response()->json(['success' => true, 'message' => 'No pending product found']);
    }
}
