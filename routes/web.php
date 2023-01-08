<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\JobController;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\UserController;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/report',[ReportController::class,'index'])
    ->name('report.index');

Route::resource('/jobs',JobController::class)->except(['show']);

Route::resource('/departments',DepartmentController::class)->except(['show']);

Route::resource('/users',UserController::class)->except(['show']);
