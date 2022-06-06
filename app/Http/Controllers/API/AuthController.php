<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request) {
        $fields = $request->validate([
            'users_first_name' => 'required|string',
            'users_last_name' => 'required|string',
            'users_email' => 'required|string|email|unique:users,users_email',
            'users_password' => 'required|string|confirmed'
        ]);

        $user = User::create([
            'users_first_name' => $fields['users_first_name'],
            'users_last_name' => $fields['users_last_name'],
            'users_email' => $fields['users_email'],
            'users_password' => bcrypt($fields['users_password'])
        ]);

        $response = [
            'success' => true,
            'message' => 'register success',
            'user' => $user
        ];

        return response($response, 201);
    }

    public function login(Request $request)
    {
        $request->validate([
            'users_email' => 'required|string|email',
            'users_password' => 'required|string',
            ]);
        $user = User::where('users_email', $request->users_email)->first();
        if (! $user || ! Hash::check($request->users_password, $user->users_password)) {
            return response()->json([
                'success' => false,
                'message' => 'login failed',
            ],401);
        }
        $user->tokens()->delete();
        $token = $user->createToken($user->users_first_name)->plainTextToken;
        return response()->json([
            'success' => true,
            'message' => 'login success',
            'user'=>$user,
            'token'=>$token,
        ]);
    }

    public function logout(Request $request) {
        $request->user()->currentAccessToken()->delete();

        return [
            'message' => 'Logged out'
        ];
    }
}
