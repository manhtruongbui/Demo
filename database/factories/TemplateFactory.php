<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(App\templates::class, function (Faker $faker) {
    return [
        //
        'templates_type_id' => $faker->randomDigit,
        'image_front_url' => $faker->imageUrl($width = 640, $height = 480),
        'tenplate_border_url'=>$faker->imageUrl($width = 640, $height = 480),
        'name'=>$faker->name,
        'thumbnail'=>$faker->realText($maxNbChars = 200, $indexSize = 2),
        'description'=>$faker->realText($maxNbChars = 200, $indexSize = 2),
        'price'=>$faker->numberBetween($min = 1000, $max = 9000),
        'height'=>$faker->numberBetween($min = 100, $max = 900),
        'width'=>$faker->numberBetween($min = 100, $max = 900),
    ];
});
