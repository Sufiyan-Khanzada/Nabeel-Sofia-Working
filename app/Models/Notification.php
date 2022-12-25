<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'data',
        'read_at',
        'rented_id',
        'product_id'
    ];

    public function rented(){
        return $this->hasMany(RentedProduct::class, 'id','rented_id');
    }
    public function products(){
        return $this->hasMany(Products::class, 'id','product_id');
    }
}
