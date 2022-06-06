<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\DestinationController;
use App\Http\Controllers\API\UserAdminController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\DestinationCategoryController;
use App\Http\Controllers\API\DestinationImageController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Public Routes
Route::get('/', function () {
    // Artisan::call('storage:link');
    return view('home', [
        "title" => "Beranda",
        "image1" => "1.png",
        "image2" => "2.png",
        "image3" => "3.jpeg",
        
    ]);
});
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::resource('destination', DestinationController::class)->only([
    'index', 'show'
]);
Route::get('/destinationByCategory/{id}', [DestinationController::class, 'destinationByCategory']);
Route::resource('destinationCategory', DestinationCategoryController::class)->only([
    'index', 'show'
]);


// Protected Routes for Admin
Route::group(['middleware' => ['auth:sanctum', 'admin']], function () {
    Route::resource('destination', DestinationController::class)->only([
        'store', 'update', 'destroy'
    ]);;
    Route::resource('user-admin', UserAdminController::class);
    Route::resource('destinationCategory', DestinationCategoryController::class)->only([
        'store', 'update', 'destroy'
    ]);
});

// Protected Routes for User
Route::group(['middleware' => 'auth:sanctum'], function () {
    Route::resource('user', UserController::class);
    Route::put('/user', [UserController::class, 'updateUser']);
    Route::delete('/user', [UserController::class, 'destroyUser']);
    Route::post('/logout', [AuthController::class, 'logout']);
});


