<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('admin.login');
    }

    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            return redirect('/Hotel');
        }

        return redirect('/Hotel');
        //SAHARUS MEMAKI YANG BAHAS UNTUK MEMUNCULKAN NOTIF SALAH
        // return back()->with('loginError','Login Gagal!');

    }

    public function logout()
    {
        Session::flush();
        Auth::logout();
        return redirect('/');
    }
}
