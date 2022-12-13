<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\Review;
use Illuminate\Http\Request;

class ReviewsController extends Controller
{
    protected $model;

    public function __construct()
    {
        $this->model = new Review();
    }
    public function addReview(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'user_id' => 'required',
            'product_id' => 'required',
            'rating' => 'required',
            'reviews' => 'required',
            'review_image' => 'nullable'
        ]);
        if($validate->fails())
        {
            return response()->json(['error' => true, 'message' => $validate->errors()], 422);
        }
        try {
            return $this->model->addReviews($request);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 406);
        }
    }

    public function updateReview($id, Request $request)
    {
        $validate = Validator::make($request->all(), [
            'user_id' => 'required',
            'product_id' => 'required',
            'rating' => 'required',
            'reviews' => 'required',
            'review_image' => 'nullable'
        ]);
        if($validate->fails())
        {
            return response()->json(['error' => true, 'message' => $validate->errors()], 422);
        }
        try {
            return $this->model->updateReview($id, $request);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 406);
        }
    }

    public function allByUsers($id)
    {
        try {
            return $this->model->allByUser($id);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 406);
        }
    }

    public function allByProduct($id)
    {
        try {
            return $this->model->allByProduct($id);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 406);
        }
    }
    public function singleReview($id)
    {
        try {
            return $this->model->singleReview($id);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 406);
        }
    }

    public function allReviewsForUser($id)
    {
        try {
            return $this->model->allReviewsForUser($id);
        } catch (\Exception $e) {
            return response()->json(['error' => true, 'message' => $e], 406);
        }
    }
}
