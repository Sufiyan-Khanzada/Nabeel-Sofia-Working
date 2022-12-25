<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;
      protected $fillable = [
        'Item_name',
        'Item_price',
        'brand_id',
        'user_id',
        'Item_mode',
        'Item_image',
        'views',
        'rental_price_week' ,
        'rental_price_oneday' ,
        'category_id' ,
        'min_rent_day',
        'max_rent_day',
        'size' ,
        'status',
        'color' ,
        'insuretype' ,
        'item_condition' ,
        'description' ,
        'tags' ,
        'damageinfo' ,
        'damage_pic' ,
        'purchaseproof' ,
        'is_featured',
        'featured_image'
     ];

    public function categories()
    {
      return $this->hasMany(Category::class, 'id', 'category_id');
    }

    public function users()
    {
      return $this->hasMany(User::class, 'id', 'user_id');
    }
    
    public function reviews()
    {
        return $this->belongsTo(Review::class, 'id', 'product_id');
    }

    public function brands(){
      return $this->hasMany(Brand::class, 'id', 'brand_id');
    }

    public function favourites()
    {
      return $this->belongsTo(Favourite::class, 'id', 'product_id');
    }
    public function rented_products()
    {
        return $this->belongsTo(RentedProduct::class, 'id', 'product_id');
    }
     public function searchProduct($query, $id)
     {
       $data = $this::with('categories')->where('Item_name', 'LIKE', "%$query%")->get();
       if(!empty($data)){
        $data2 = $data->pluck('categories')->toArray();
        foreach($data2 as $key => $value)
        {
          foreach($value as $k=> $v){
            $recommended = new RecommendedProduct();
            $recommended->setRecommended($v['name'], $id);
          }
        }
         if(count($data) > 8)
         {
          return $data->paginate(8);
         }
         return $data;
       }
     }
}
