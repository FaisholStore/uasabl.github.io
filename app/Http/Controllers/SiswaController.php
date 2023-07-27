<?php

namespace App\Http\Controllers;

use App\Models\siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     */


    public function index()
    {
        $siswa = Siswa::all();

        return response()->json([
            'status' => 'success',
            'message' => 'Daftar data siswa berhasil diambil',
            'data' => $siswa,
        ], 200);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama' => 'required|string|max:255',
            'nim' => 'required|string|max:12|unique:siswa',
            'jurusan' => 'required|string|max:255',
            'fakultas' => 'required|string|max:255',
            'tanggal_lahir' => 'required|date',
            'alamat_rumah' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => 'Gagal menyimpan data siswa',
                'errors' => $validator->errors(),
            ], 422);
        }

        $siswa = Siswa::create([
            'nama' => $request->nama,
            'nim' => $request->nim,
            'jurusan' => $request->jurusan,
            'fakultas' => $request->fakultas,
            'tanggal_lahir' => $request->tanggal_lahir,
            'alamat_rumah' => $request->alamat_rumah,
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Data siswa berhasil disimpan',
            'data' => $siswa,
        ], 201);
    }


    /**
     * Display the specified resource.
     */
    public function show(siswa $siswa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, siswa $siswa)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(siswa $siswa)
    {
        //
    }
}
