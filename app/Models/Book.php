<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

class Book extends Model
{
    use HasFactory;

    

    // public static function bestsellers($limit = 10)
    // {
    //     return Cache::remember("bestsellers_{$limit}", 60, function() use ($limit) {
    //         return self::select('books.*', DB::raw('SUM(orders.quantity) as total_sales'))
    //             ->join('orders', 'books.id', '=', 'orders.book_id')
    //             ->groupBy('books.id')
    //             ->orderBy('total_sales', 'desc')
    //             ->take($limit)
    //             ->get();
    //     });
    // }

    // public static function bestsellers($limit = 10)
    // {
    //     return Cache::remember("bestsellers_{$limit}", 60, function() use ($limit) {
    //         return self::select('books.id', 'books.title', 'books.price', 'books.image', DB::raw('SUM(orders.quantity) as total_sales'))
    //             ->join('orders', 'books.id', '=', 'orders.book_id')
    //             ->groupBy('books.id', 'books.title', 'books.price', 'books.image')
    //             ->orderBy('total_sales', 'desc')
    //             ->take($limit)
    //             ->get();
    //     });
    // }





    public function author(){
        return $this->belongsTo(Author::class);
    }

    public function publisher(){
        return $this->belongsTo(Publisher::class);
    }

    public function translator(){
        return $this->belongsTo(Translator::class);
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }



    
    // public static function bestsellers($limit = 10)
    // {
    //     return self::with(['author', 'publisher', 'translator'])
    //         ->select('books.*', DB::raw('SUM(orders.quantity) as total_sales'))
    //         ->join('orders', 'books.id', '=', 'orders.book_id')
    //         ->groupBy('books.id')
    //         ->orderBy('total_sales', 'desc')
    //         ->take($limit)
    //         ->get();
    // }

    // public static function bestsellers($limit = 10)
    // {
    //     return self::select('books.*', DB::raw('SUM(orders.quantity) as total_sales'))
    //         ->join('orders', 'books.id', '=', 'orders.book_id')
    //         ->groupBy('books.id')
    //         ->orderBy('total_sales', 'desc')
    //         ->take($limit)
    //         ->get();
    // }
}
