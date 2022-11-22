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
        Schema::create('rented_products', function (Blueprint $table) {
            $table->id();
            $table->tinyInteger('buyer_id');
            $table->tinyInteger('seller_id');
            $table->tinyInteger('product_id');
            $table->string('price');
            $table->string('status');
            $table->dateTime('from');
            $table->dateTime('to');
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
        Schema::dropIfExists('rented_products');
    }
};
