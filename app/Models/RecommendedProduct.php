<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RecommendedProduct extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'search_query'];

    public function users()
    {
        return $this->belongsTo(User::class);
    }

    public function getRecommended($id)
    {
        $recommend = $this::with('users')->where('user_id', $id)->first();
        if($recommend)
        {
            $products = Products::where('Item_name', 'LIKE', "%$recommend->search_query%")->get();
            if(count($products) > 5)
            {
                return $products->paginate(5);
            }
            return $products;
        }
        else{
            $products = Products::get();
            if(count($products) > 5)
            {
                return $products->paginate(5);
            }
            return $products;
        }
    }
    public function setRecommended($query, $id)
    {
        $set = $this::updateOrCreate(['user_id' => $id], ['search_query' => $query]);
        return $set;
    }
}
