<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;

    protected $table = 'products_images';

    protected $primaryKey = 'id';

    public $incrementing = true;

    protected $fillable = ['product_id', 'image'];

    public $timestamps = true;

    /**
     * Get all of the product for the ProductImage
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function product(): HasMany
    {
        return $this->belongsTo(Products::class, 'id', 'product_id');
    }
}
