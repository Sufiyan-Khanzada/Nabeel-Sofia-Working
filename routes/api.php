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
use App\Http\Controllers\BrandController;
use App\Http\Controllers\FavouriteController;

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
Route::post('reset-password', [PassportController::class, 'password_reset']);
Route::post('verify-otp', [PassportController::class, 'verifyOtp']);






///Products API's /////////
Route::post('insert-product', [ProductController::class, 'create_product']);
Route::post('update_product/{id}',[ProductController::class,'update_product']);
Route::delete('delete-product/{id}',[ProductController::class,'destroy_product']);
Route::get('get-products', [ProductController::class, 'allproducts']);
Route::get('single-product/{id}',[ProductController::class,'show_product']);
Route::get('trending-product', [ProductController::class, 'trendingProduct']);
Route::get('product-by-user/{id}', [ProductController::class, 'UserProducts']);
Route::post('product-trending/{id}', [ProductController::class, 'productCount']);

//Category API's////
Route::post('add-category', [CategoryController::class, 'store']);
Route::get('all-child-category', [CategoryController::class, 'allChildCat']);
Route::get('all-parents-category',[CategoryController::class, 'allParentCat']);
Route::get('single-category/{id}',[CategoryController::class, 'show_single_category']);
Route::get('relation-category/{id}',[CategoryController::class, 'relationCategory']);
Route::delete('delete-category/{id}', [CategoryController::class, 'destroy_cat']);
Route::post('edit-category/{id}',[CategoryController::class,'update_cat']);


Route::controller(RecommendedProductController::class)->group(function(){
    Route::get('recommeded-products', 'getRecommendedProducts');
    Route::post('search-product', 'searchProduct');
});
Route::middleware('auth:api')->group(function (){
    Route::controller(RecommendedProductController::class)->group(function(){
        Route::post('add-recommended-products', 'setRecommendedProducts');
    });
});

Route::middleware('auth:api')->group(function (){
    Route::controller(FavouriteController::class)->group(function(){
        Route::post('add-favourite', 'store');
        Route::delete('delete-favourite/{id}', 'delete');
        Route::get('get-favourite', 'index');
    });
});
Route::controller(BrandController::class)->group(function(){
    Route::get('single-brand/{id}', 'view');
    Route::get('all-brands', 'index');
});
Route::middleware('auth:api')->group(function (){
    Route::controller(BrandController::class)->group(function(){
        Route::post('add-brand', 'store');
        Route::post('edit-brand/{id}', 'update');
        Route::delete('delete-brand/{id}', 'destroy');
    });
});
// Filter product API
    Route::get('filter-product', FilterController::class);

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
        Route::post('available-product/{id}', 'checkAvailability');
        Route::post('request-rental', 'requestRental');
        Route::post('approve-rental/{id}', 'approveRental');
        Route::post('reject-rental/{id}', 'rejectRental');
        Route::post('return-product/{id}', 'returnProduct');
        Route::post('owner-usage', 'personalUse');
        Route::get('rented-product-by-seller/{id}', 'getSellingUser');
        Route::get('rented-product-by-buyer/{id}', 'getBuyingUser');
    });
});

Route::middleware('auth:api')->group(function (){
    Route::controller(ReviewsController::class)->group(function(){
        Route::post('add-reviews', 'addReview');
        Route::post('update-reviews/{id}', 'updateReview');
        Route::get('reviews-by-user/{id}', 'allByUsers');
        Route::get('reviews-by-product/{id}', 'allByProduct');
        Route::get('single-review/{id}', 'singleReview');
        Route::get('reviews-for-user/{id}', 'allReviewsForUser');
    });
});

Route::post('product-trending/{id}', [ProductController::class, 'productCount']);





// put all api protected routes here
Route::middleware('auth:api')->group(function () {
    Route::get('user-stats/{id}', [PassportController::class, 'statsUser']);
    Route::post('user-detail', [PassportController::class, 'userDetail']);
    Route::get('get-unread-notification/{id}', [PassportController::class, 'userUnreadNotification']);
    Route::get('get-notification/{id}', [PassportController::class, 'userNotification']);
    Route::post('notification-read/{id}', [PassportController::class, 'readNotification']);
    Route::post('approve-product/{id}', [ProductController::class, 'approvedProduct']);
    Route::post('reject-product/{id}', [ProductController::class, 'rejectProduct']);
    Route::post('logout', [PassportController::class, 'logout']);
});
