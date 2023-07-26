<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Faker\Factory as Faker;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('siswa', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('nim')->unique();
            $table->string('fakultas')->nullable();
            $table->string('jurusan')->nullable();
            $table->date('tanggal_lahir')->nullable();
            $table->string('alamat_rumah')->nullable();
            $table->timestamps();
        });

        // Populate table with fake data
        $faker = Faker::create('id_ID');
        for ($i = 0; $i < 10; $i++) {
            $nim = '2021' . $faker->unique()->numerify('##########');
            if (strlen($nim) > 12) {
                $nim = substr($nim, 0, 12);
            }

            DB::table('siswa')->insert([
                'nama' => $faker->name,
                'nim' => $nim,
                'fakultas' => 'Ilmu Komputer',
                'jurusan' => $faker->randomElement(['Teknik Informatika', 'Sistem Informasi', 'Teknik Elektro']),
                'tanggal_lahir' => $faker->date('Y-m-d', '2002-01-01'),
                'alamat_rumah' => $faker->address,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('siswa');
    }
};
