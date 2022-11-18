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
        'Item_brand',
        'Item_rating',
        'username',        
        'Item_mode',
        'Item_image',
        'rental_price_week' ,
        'category' ,
        'subcategory' ,
        'size' ,
        'color' ,
        'insuretype' ,
        'condition' ,
        'description' ,
        'tags' ,
        'damageinfo' ,
        'damage_pic' ,
        'purchaseproof' ,
        'rental_price_oneday'
     ];
}
