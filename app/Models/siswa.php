<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Siswa extends Model
{
    use HasFactory;

    protected $table = 'siswa'; // Nama tabel yang sesuai

    protected $fillable = ['nama', 'nim', 'jurusan', 'fakultas', 'tanggal_lahir', 'alamat_rumah']; // Kolom yang dapat diisi

    protected $primaryKey = 'id'; // Atur primary key tabel

    protected $keyType = 'int'; // Tipe data primary key

    public $incrementing = true; // Atur apakah primary key bertipe auto-increment atau bukan

    protected $dates = ['created_at', 'updated_at', 'tanggal_lahir']; // Atur kolom-kolom tanggal

    protected $dateFormat = 'Y-m-d H:i:s'; // Format tanggal yang akan disimpan dalam database

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->nim = '2021' . Str::random(8); // Menggunakan tahun 2021 dan 8 karakter acak sebagai NIM
            $model->nim = substr($model->nim, 0, 12); // Memastikan NIM tidak lebih dari 12 karakter
        });
    }
}
