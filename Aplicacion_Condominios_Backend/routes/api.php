<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriaServicioController;
use App\Models\CategoriaServicio;

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

//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
 //   return $request->user();
//});

Route::get('/CategoriaServicio',[CategoriaServicioController::class,'getCategoriaServicio']);
Route::get('/CategoriaServicio/{id}',[CategoriaServicioController::class,'getCategoriaId']);
//post
Route::post('/CategoriaServicio/insert',[CategoriaServicioController::class,'insertarCategoria']);
//put
Route::put('/CategoriaServicio/update/{id}',[CategoriaServicioController::class,'updateCategoria']);
//delete
Route::delete('/CategoriaServicio/delete/{id}',[CategoriaServicioController::class,'deleteCategoria']);