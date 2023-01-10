<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => fake()->name(),
            'email' => fake()->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
            'firstname' => Str::random(10),
            'lastname' => Str::random(10),
            'username' => Str::random(10),
            'city' => Str::random(10),
            'postalcode' => Str::random(10),
            'country' => Str::random(10),
            'address' => Str::random(10),
            'state' => Str::random(10),
            'phone' => Str::random(10),
            'image' => Str::random(10),
            'cnic_front' => Str::random(10),
            'cnic_back' => Str::random(10),
            'insuretype' => Str::random(10),
            'cpassword' => Str::random(10),
            'proofid' => Str::random(10),
            'payment' => Str::random(10),
            'confirmpass' => Str::random(10),
            'privacypolicy' => Str::random(10),
            'termscondition' => Str::random(10)
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return static
     */
    public function unverified()
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
