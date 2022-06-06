<?php

namespace Database\Seeders;

use App\Models\Destination;
use Illuminate\Database\Seeder;

class DataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Destination::create(['destination_name'=> 'Pulau Lemukutan', 'destination_description'=>'Pulau Lemukutan adalah sebuah pulau yang secara administratif terletak di Kecamatan Sungai Raya Kepulauan, Kabupaten Bengkayang, Provinsi Kalimantan Barat. Aktivitas menarik yang dapat dilakukan di Pulau Lemukutan adalah naik perahu menuju pulau, pesona bawah laut, snorkling, diving, bermain kano, dan lain-lain.', 'destination_location' => 'https://goo.gl/maps/fbAo8HFm6EVPybiq5' ,'destination_day_temp' => '29' , 'destination_night_temp' => '31', 'destination_rating' => 5, 'destination_image' => '1649056524829.lemukutan 2.jpg","uploads\/destination_image\/Pulau Lemukutan-DestinationImage-1649056524456.lemukutan 3.jpg"]', 'destination_category_id' => '1']);
    }
}
