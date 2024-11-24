<?php

use App\Http\Controllers\Api\AddressController;
use App\Http\Controllers\Api\Auth\AuthController;
use App\Http\Controllers\Api\AuthorController;
use App\Http\Controllers\Api\BookController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\CommentController;
use App\Http\Controllers\Api\ContactUsController;
use App\Http\Controllers\Api\CouponController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Api\OrderItemController;
use App\Http\Controllers\Api\PublisherController;
use App\Http\Controllers\Api\PurchaseController;
use App\Http\Controllers\Api\UserController;
use Illuminate\Support\Facades\Route;

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');

Route::get('/currentUser', [UserController::class, 'getCurrentUser'])->middleware('auth:sanctum');
Route::get('/profile/info', [UserController::class, 'getUserInfo'])->middleware('auth:sanctum');
Route::post('/profile/info/edit', [UserController::class, 'editUserInfo'])->middleware('auth:sanctum');


Route::get('/addresses/userAddresses', [AddressController::class, 'getUserAddresses'])->middleware('auth:sanctum');
Route::post('/addresses/create', [AddressController::class, 'createAddress'])->middleware('auth:sanctum');
Route::post('/addresses/edit/{id}', [AddressController::class, 'editAddress'])->middleware('auth:sanctum');
Route::post('/addresses/delete/{id}', [AddressController::class, 'deleteAddress'])->middleware('auth:sanctum');

Route::get('/{commentableType}/{commentableId}/comments', [CommentController::class, 'index']);
Route::post('/{commentableType}/{commentableId}/comments/create', [CommentController::class, 'createComment'])->middleware('auth:sanctum');

Route::get('/books', [BookController::class, 'index']);
Route::get('/books/findById/{id}', [BookController::class, 'findById']);
Route::get('/books/findByIds', [BookController::class, 'findByIds']);
Route::get('/books/findByCategoryId/{id}', [BookController::class, 'findByCategoryId']);
Route::get('/books/bestSellers', [BookController::class, 'bestSellers']);
Route::get('/books/latest', [BookController::class, 'latest']);
Route::get('/books/relatedBooks', [BookController::class, 'relatedBooks']);
Route::post('/books/search', [BookController::class, 'search']);
Route::get('/books/sort', [BookController::class, 'sortedBooks']);

Route::get('/publishers', [PublisherController::class, 'index']);

Route::get('/authors', [AuthorController::class, 'index']);

Route::get('/categories', [CategoryController::class, 'index']);
Route::get('/categories/findById/{id}', [CategoryController::class, 'findById']);

Route::get('/orders/userOrders', [OrderController::class, 'getUserOrders'])->middleware('auth:sanctum');
Route::post('/order/create', [OrderController::class, 'createOrder']);

Route::post('/orderItem/create', [OrderItemController::class, 'createOrderItem']);

// Route::get('/transactions/userTransactions', [TransactionController::class, 'getUserTransactions'])->middleware('auth:sanctum');

Route::post('/coupons/findByCode/{code}', [CouponController::class, 'findByCode']);

Route::post('purchaseProcessing', [PurchaseController::class, 'handlePurchaseProcessing'])->middleware('auth:sanctum');
Route::match(['get', 'post'], 'verifyProcessing', [PurchaseController::class, 'handleVerifyProcessing'])->name('handleVerifyProcessing');


Route::post('/contact-us', [ContactUsController::class, 'createContact']);