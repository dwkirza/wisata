<?php

namespace App\Http\Controllers\Login;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register(Request $request) {
        $fields = $request->validate([
            'users_first_name' => 'required|string',
            'users_last_name' => 'required|string',
            'users_email' => 'required|string|email|unique:users,email',
            'users_password' => 'required|string|confirmed'
        ]);

        $user = User::create([
            'users_first_name' => $fields['users_first_name'],
            'users_last_name' => $fields['users_last_name'],
            'email' => $fields['users_email'],
            'password' => bcrypt($fields['users_password'])
        ]);

        $response = [
            'success' => true,
            'message' => 'register success',
            'user' => $user
        ];

        return response($response, 201);
    }

    public function loginIndex(){
        return view('login.index',[
        'title' => 'Login'
    ]);
    }

    public function loginAuth(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
            ]);
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $request->session()->regenerate();
            return redirect()->intended('/dashboard');
        }
        return back()->with(['loginError' => 'Login Gagal - Email atau Password Salah']);
    }

    public function logout(Request $request) {
        Auth::logout();
        return redirect('/');
    }
}
