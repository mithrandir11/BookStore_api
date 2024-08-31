<?php

use App\Http\Controllers\Api\BookController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Api\OrderItemController;
use App\Http\Controllers\Api\PurchaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

// Route::apiResource('users', UserController::class);

Route::get('/books', [BookController::class, 'index']);
Route::get('/books/findById/{id}', [BookController::class, 'findById']);
Route::get('/books/findByIds', [BookController::class, 'findByIds']);
Route::get('/books/findByCategoryId/{id}', [BookController::class, 'findByCategoryId']);
Route::get('/books/bestSellers', [BookController::class, 'bestSellers']);
Route::get('/books/latest', [BookController::class, 'latest']);

Route::get('/categories', [CategoryController::class, 'index']);
Route::get('/categories/findById/{id}', [CategoryController::class, 'findById']);

Route::post('/order/create', [OrderController::class, 'createOrder']);

Route::post('/orderItem/create', [OrderItemController::class, 'createOrderItem']);

Route::post('purchaseProcessing', [PurchaseController::class, 'handlePurchaseProcessing']);
Route::match(['get', 'post'], 'verifyProcessing', [PurchaseController::class, 'handleVerifyProcessing'])->name('handleVerifyProcessing');
