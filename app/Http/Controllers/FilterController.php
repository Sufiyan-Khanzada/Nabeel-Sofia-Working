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
            $query = Products::with('categories','brands')->where('status', 'approved');
            if($request->has('min_price') && $request->has('max_price')){
                $query->whereBetween('Item_price', [$min, $max]);
            }
            if($request->has('category_id')){
                $query->whereHas('categories', function($q) use($request){
                    $q->where('id', $request->category_id)
                    ->orWhere('child_of', $request->category_id);
                });
            }
            if($request->has('tags')){
                $query->where('tags','LIKE', "%$request->tags%");
            }
            if($request->has('color')){
                $query->where('color', "$request->color");
            }
            return $query->get();
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => 'something went wrong', 'Exception' => $e], 403);
        }
    }
}
