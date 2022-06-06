<?php

use App\Models\Post;
use App\Models\Category;
use function PHPSTORM_META\map;


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DashboardPostController;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\API\DestinationCategoryController;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\DestinationController;
use App\Http\Controllers\API\UserAdminController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\HotelController;
use App\Http\Controllers\InfokamarController;
use Illuminate\Auth\Events\Login;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Navigator
Route::get('/', function () {
    Artisan::call('storage:link');
    return view('home', [
        "title" => "Beranda",
        "image1" => "1.png",
        "image2" => "2.png",
        "image3" => "3.jpeg",

    ]);
})->name('home');

Route::get('/about', function () {
    return view('about', [
        "title" => "Tentang",
        "name" => "reza",
        "email" => "muhammaddwiki01@gmail.com",
        "image1" => "1.png",
    ]);
});

//Auth
Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'authenticate']);


//login
// Route::get('/login', function () {
//     return view('admin.login');
// });

Route::middleware(['auth'])->group(function () {

    //Destination
    Route::resource('destinationCategory', DestinationCategoryController::class)->only([
        'index', 'show'
    ]);
    Route::resource('destination', DestinationController::class)->only([
        'index', 'show'
    ]);
    Route::get('/destinationByCategory/{id}', [DestinationController::class, 'destinationByCategory']);




    //Admin
    Route::get('/dashboard', function () {
        return view('dashboard.index');
    });

    // Route::get('dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug']);
    Route::resource('/dashboard/posts', DashboardPostController::class);

    //List Hotel
    Route::get('/Hotel', [HotelController::class, 'index'])->name('listhotel');
    Route::get('/Hotel/{id}', [HotelController::class, 'show'])->name('detailhotel');
    Route::get('/Hotel/{id}/{category}', [HotelController::class, 'category'])->name('categoryroom');


    // Route Info Kamar
    Route::get('/info-kamar', [InfokamarController::class, 'index'])->name('info-kamar');

    //Route Logout
    Route::get('logout', [LoginController::class, 'logout'])->name('logout');

    //Route Transaksi
    Route::get('/Hotel/{id}/{category}/transaksi', [HotelController::class, 'transaction'])->name('transaksi');

    // ->middleware('auth');
});
