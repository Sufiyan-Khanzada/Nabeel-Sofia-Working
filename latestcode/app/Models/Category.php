<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'is_child',
        'child_of',
        
            
  ];

  public function products()
  {
     return $this->belongsTo(Products::class, 'id', 'category_id');
  }
}
