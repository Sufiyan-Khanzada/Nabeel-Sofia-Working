<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;

    public function products()
    {
        return $this->hasMany(Products::class, 'id', 'product_id');
    }

    public function users()
    {
        return $this->hasMany(User::class, 'id', 'user_id');
    }

    protected $fillable = [
        'user_id', 'product_id', 'rating', 'reviews', 'review_image'
    ];
    public function reviewImage($review)
    {
        if(!empty($review)){
            $image = time().'.'.$review->extension();
            $review->move(public_path('reviews'), $image);
            $review = $image;
            return $review;
        }
        else{
            return null;
        }
    }
    public function addReviews($request)
    {
        $owner = Products::where('user_id',auth()->id())
        ->where('id',$request->product_id)
        ->exists();
        if($owner)
        {
            return response()->json(['error' => true, 'message' => 'You are not allowed to give reviews on your own product'], 422);
        }
        $rent = RentedProduct::where('buyer_id', auth()->id())
        ->where('product_id', $request->product_id)
        ->where('request_status', 'approved')
        ->exists();
        $checking = $this->where('user_id', auth()->id())
        ->where('product_id', $request->product_id)
        ->exists();
        if($checking)
        {
            return response()->json(['error' => true, 'message' => 'You are not allowed to give reviews more than 1 time'], 422);
        }
        if($rent)
        {
            $check = RentedProduct::where('buyer_id', auth()->id())
            ->where('product_id', $request->product_id)
            ->where('request_status', 'approved')
            ->first();
            if($check->from >= now()->toDateString())
            {
                return response()->json(['error' => true, 'message' => 'You are not allowed to give reviews instantly'], 422);
            }
            try {
                $final = $this->create([
                    'user_id' => auth()->id(),
                    'product_id' => $request->product_id,
                    'rating' => $request->rating,
                    'reviews' => $request->reviews,
                    'review_image' => $this->reviewImage($request->review_image)
                ]);
                return response()->json(['success' => true, 'data' => $final], 200);
            } catch (\Exception $th) {
                return response()->json(['error' => true, 'message' => $th], 403);
            }
        }
    }

    public function updateReview($id, $request)
    {
        $review = $this::where('user_id', auth()->id())
        ->where('product_id', $request->product_id)
        ->find($id);
        if($review->updated_at == $review->created_at)
        {
            if($request->has('review_image'))
            {
                $review->review_image = $this->reviewImage($request->review_image);
            }
            $review->rating = $request->rating;
            $review->reviews = $request->reviews;
            $review->save();
            return response()->json(['success' => true, 'message' => 'review updated successfully', 'data' => $review], 200);
        }
        else{
            return response()->json(['error' => true, 'messsage' => 'you are not allowed to update review more than once'], 422);
        }
    }

    public function allByUser($id)
    {
        $result = $this::where('user_id', $id)->get();
        if($result->isNotEmpty()){
            return response()->json(['success' => true, 'data' => $result], 200);
        }
        return response()->json(['error' => true, 'message' => 'no reviews yet'], 404);
    }
    public function allByProduct($id)
    {
        $result = $this::where('product_id', $id)->get();
        if($result->isNotEmpty()){
            return response()->json(['success' => true, 'data' => $result, 'count' => $result->count()], 200);
        }
        return response()->json(['error' => true, 'message' => 'no reviews yet'], 404);
    }

    public function singleReview($id)
    {
        $result = $this::find($id);
        if($result){
            return response()->json(['success' => true, 'data' => $result], 200);
        }
        return response()->json(['error' => true, 'message' => 'not found'], 404);
    }

    public function allReviewsForUser($id)
    {
        $review = $this::whereHas('products', function($query) use($id){
            $query->where('user_id', $id);
        })->get();
        $avg = $this::whereHas('products', function($query) use($id){
            $query->where('user_id', $id);
        })->avg('rating');
        if($review->isNotEmpty())
        {
            return response()->json(['success' => true, 'data' => $review, 'count' => count($review), 'average' => $avg], 200);
        }
        return response()->json(['error' => true, 'message' => 'no record found'], 404);
    }
}
