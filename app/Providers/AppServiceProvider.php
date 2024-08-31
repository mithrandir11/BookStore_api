<?php

namespace App\Providers;

use App\Repositories\BookRepository;
use App\Repositories\CategoryRepository;
use App\Repositories\Interfaces\IBookRepository;
use App\Repositories\Interfaces\ICategoryRepository;
use App\Repositories\Interfaces\IOrderItemRepository;
use App\Repositories\Interfaces\IOrderRepository;
use App\Repositories\Interfaces\ITransactionRepository;
use App\Repositories\OrderItemRepository;
use App\Repositories\OrderRepository;
use App\Repositories\TransactionRepository;
use Illuminate\Http\Response;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Str;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(IBookRepository::class, BookRepository::class);
        $this->app->bind(ICategoryRepository::class, CategoryRepository::class);
        $this->app->bind(IOrderRepository::class, OrderRepository::class);
        $this->app->bind(IOrderItemRepository::class, OrderItemRepository::class);
        $this->app->bind(ITransactionRepository::class, TransactionRepository::class);
        // $this->app->bind(IPaymentGatewayRepository::class, IdpayPaymentGatewayRepository::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Str::macro('customSlug', function ($string, $separator = '-') {
            return preg_replace('/\s+/u', $separator, trim($string));
        });

        Response::macro('success', function($message, $data) {
            return response()->json([
                'status' => 1,
                'message' => $message,
                'data' => $data,
            ]);
        });

        Response::macro('error', function($message, $data, $code = 500) {
            return response()->json([
                'status' => 0,
                'error' => $message,
                'data' => $data,
            ], $code);
        });
    }
}
