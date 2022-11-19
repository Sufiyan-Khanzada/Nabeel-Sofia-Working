<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products;

class FilterController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request, Products $query)
    {
        try {
            $min = $request->has('min_price') && !empty($request->min_price) ? $request->min_price : 0;
            $max = $request->has('max_price') && !empty($request->max_price) ? $request->max_price : 100000;
            $query = $query->newQuery();
            if($request->has('min_price') && $request->has('max_price')){
                $query->whereBetween('Item_price', [$min, $max]);
            }
            if($request->has('category')){
                $query->where('category', $request->category);
            }
            if($request->has('sub_category')){
                $query->where('subcategory', $request->sub_category);
            }
            if($request->has('tags')){
                $query->where('tags','LIKE', "%$request->tags%");
            }
            if(count($query->get()) > 8)
            {
                return $query->paginate(8);
            }
            return $query->get();
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => 'something went wrong', 'Exception' => $e], 403);
        }
    }
}
