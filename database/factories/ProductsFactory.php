<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use Illuminate\Support\Str;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Products>
 */
class ProductsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'Item_name' => fake()->name(),
            'Item_price' => rand(1,999),
            'brand_id' => rand(1,1),
            'user_id' => User::all()->random()->id,
            'Item_mode' => Str::random(10),
            'Item_image' => Str::random(10),
            'views' => rand(1,1),
            'rental_price_week'=> rand(1,3),
            'rental_price_oneday' => rand(1,5),
            'category_id' => User::all()->random()->id,
            'min_rent_day'=> rand(1,7),
            'max_rent_day' => rand(8,30),
            'status' => fake()->randomElement(['pending'],1),
            'size' => rand(1,1),
            'color' => Str::random(5),
            'insuretype' => Str::random(10),
            'item_condition' => Str::random(10),
            'description' => fake()->sentence(),
            'tags' => fake()->randomElement(['any', 'check', 'text', 'tags'], 2),
            'damageinfo' => Str::random(10),
            'damage_pic' => Str::random(10),
            'purchaseproof' => Str::random(10),
            'is_featured' => fake()->randomElement(['yes', 'no'], 1),
            'featured_image' => Str::random(10),
        ];
    }
}
