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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('firstname');
            $table->string('lastname');
            $table->string('username')->unique(); 
            $table->string('city'); 
            $table->string('postalcode'); 
            $table->string('country');
            $table->string('address');
            $table->string('state');
            $table->string('phone');
            $table->string('image');
            $table->string('cnic_front');
            $table->string('cnic_back');
            $table->string('insuretype'); 
            $table->string('cpassword'); 
            $table->string('proofid');
            $table->string('payment'); 
            $table->string('confirmpass'); 
            $table->string('privacypolicy');
            $table->string('termscondition');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
};
