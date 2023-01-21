<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('Item_name');
            $table->string('Item_price');
            $table->string('brand_id');
            $table->string('user_id');
            $table->string('Item_mode');
            $table->string('Item_image');
            $table->tinyInteger('views');
            $table->string('rental_price_week');
            $table->string('rental_price_oneday');
            $table->string('category_id');
            $table->string('size');
            $table->string('color');
            $table->string('insuretype');
            $table->string('item_condition');
            $table->string('description');
            $table->string('tags');
            $table->string('damageinfo');
            $table->string('damage_pic');
            $table->string('purchaseproof');
            $table->string('is_featured');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
