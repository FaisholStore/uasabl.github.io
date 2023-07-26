<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    /**
     * Handle user registration.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function registerUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users',
            'password' => [
                'required',
                'string',
                'min:8',
                'regex:/^(?=.*[A-Z])(?=.*[@#!]).*$/'
            ],
        ], [
            'password.regex' => 'The password must contain an uppercase letter at the beginning and at least one of the characters: @, #, or !',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 422);
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        return response()->json(['message' => 'User registered successfully', 'user' => $user],200);
    }


    public function loginUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                "status" => "error",
                "message" => "Login gagal",
                "data" => $validator->errors()
            ], 422);
        }
        if (!Auth::attempt(($request->only(['email','password'])))){
            return response()->json([
                "status" => "failed",
                "message" => "Email atau password salah!",

            ],402);
        };
       $datauser   =User::where('email',$request->email)->first();
       return response()->json([
        "status"=>true,
        'message'=>'berhasil login',
        "name" => $datauser->name,
        'token'=>$datauser->createToken('api-product')->plainTextToken
       ],200);
    }

}
