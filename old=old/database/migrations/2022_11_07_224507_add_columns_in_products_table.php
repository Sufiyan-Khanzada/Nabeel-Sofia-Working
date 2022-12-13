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
        Schema::table('products', function (Blueprint $table) {
            //
            // $table->string('original_rental_price');
            $table->string('rental_price_week');
            $table->string('rental_price_oneday');
            $table->string('category');
            $table->string('subcategory');
            $table->string('size');
            $table->string('color');
            $table->string('insuretype');
            $table->string('item_condition');
            $table->string('description');
            $table->string('tags');
            $table->string('damageinfo');
            $table->string('damage_pic');
            $table->string('purchaseproof');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            //
        });
    }
};
