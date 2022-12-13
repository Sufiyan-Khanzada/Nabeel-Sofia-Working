<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PassportController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ChatController;
use App\Http\Controllers\RecommendedProductController;
use App\Http\Controllers\FilterController;
use App\Http\Controllers\RentedProductController;
use App\Http\Controllers\ReviewsController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

//User Authentication Api's
Route::post('register', [PassportController::class, 'register']);
Route::post('login', [PassportController::class, 'login']);
Route::get('allusers', [PassportController::class, 'all_users']);
Route::post('updateuser/{id}', [PassportController::class, 'update_user']);
Route::get('showbrandeduser', [PassportController::class, 'all_branded']);
Route::get('single_user/{id}', [PassportController::class, 'show_single_user']);






///Products API's /////////
Route::post('insert-product', [ProductController::class, 'create_product']);
Route::get('get-products', [ProductController::class, 'allproducts']);
Route::get('single-product/{id}',[ProductController::class,'show_product']);
Route::post('delete-product/{id}',[ProductController::class,'destroy_product']);
Route::post('update_product/{id}',[ProductController::class,'update_product']);
Route::get('showtrendingproducts', [ProductController::class, 'all_trending']);
Route::get('single-product_cat/{cat}',[ProductController::class,'show_product_cat']);

//Category API's////
Route::post('catadd', [CategoryController::class, 'store']);
Route::get('showall-cat', [CategoryController::class, 'allcat']);
Route::post('show-single_cat/{id}',[CategoryController::class, 'show_single_category']);
Route::post('delete-cat/{id}', [CategoryController::class, 'destroy_cat']);
Route::post('{id}/update-cat',[CategoryController::class,'update_cat']);


Route::middleware('auth:api')->group(function (){
    Route::controller(RecommendedProductController::class)->group(function(){
        Route::get('recommeded-products', 'getRecommendedProducts');
        Route::post('add-recommended-products', 'setRecommendedProducts');
        Route::post('search-product', 'searchProduct');
    });
});
Route::middleware('auth:api')->group(function(){
    Route::get('filter-product', FilterController::class);
});

Route::middleware('auth:api')->group(function (){
    Route::controller(ChatController::class)->group(function(){
        Route::get('chat/users', 'dashboard');
        Route::post('chat/send', 'sendmessage');
        Route::get('chat/message/{id}', 'getMessage');
        Route::post('chat/refresh', 'getRefreshMessage');
    });
});

Route::middleware('auth:api')->group(function (){
    Route::controller(RentedProductController::class)->group(function(){
        Route::get('available-product/{id}', 'checkAvailability');
        Route::post('request-rental', 'requestRental');
        Route::post('approve-rental/{id}', 'approveRental');
        Route::post('reject-rental/{id}', 'rejectRental');
    });
});

Route::middleware('auth:api')->group(function (){
    Route::controller(ReviewsController::class)->group(function(){
        Route::post('add-reviews', 'addReview');
        Route::post('update-reviews/{id}', 'updateReview');
        Route::get('reviews-by-user/{id}', 'allByUsers');
        Route::get('reviews-by-product/{id}', 'allByProduct');
        Route::get('single-review/{id}', 'singleReview');
    });
});

Route::post('product-trending/{id}', [ProductController::class, 'productCount']);
Route::get('trending-product', [ProductController::class, 'trendingProduct']);





// put all api protected routes here
Route::middleware('auth:api')->group(function () {
    Route::post('user-detail', [PassportController::class, 'userDetail']);
    Route::post('logout', [PassportController::class, 'logout']);
});
