<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SiswaController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/', function () {
return response()->json([
    'status'=> false,
    'message' => 'kamu belom mendapatkan akses'

],404);
})->name('login');

Route::get('siswa', [SiswaController::class,'index'])->middleware('auth:sanctum','ablity:admin1');

Route::post('siswa', [SiswaController::class,'store'])->middleware('auth:sanctum', 'ablity:superadmin');
Route::post('registerUser', [AuthController::class, 'registerUser']);
Route::post('loginUser', [AuthController::class, 'loginUser']);
