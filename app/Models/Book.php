<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

class Book extends Model
{
    use HasFactory;

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

    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }



    // public function scopeSort($query, ?string $sort)
    public function scopeSort($query)
    {
        if (request()->has('sort_by')) {
            $sort = request()->sort_by;

            if ($sort == 'latest') {
                return $query->latest();
            }
    
            // if ($sort == 'best_seller') {
            //     return $query
            //     ->select('books.id', 'books.title', 'books.slug', 'books.price', 'books.image', 'books.created_at', DB::raw('SUM(most_sold.quantity) as total_sales'))
            //     ->rightJoin('order_items as most_sold', 'books.id', '=', 'most_sold.book_id')
            //     ->groupBy('books.id', 'books.title', 'books.slug', 'books.price', 'books.image', 'books.created_at')
            //     ->orderBy('total_sales', 'DESC');
            // }

            if ($sort == 'best_seller') {
                return $query
                    ->select(
                        'books.id', 
                        'books.title', 
                        'books.slug', 
                        'books.price', 
                        'books.image', 
                        'books.created_at', 
                        DB::raw('SUM(order_items.quantity) as total_sales')
                    )
                    ->join('order_items', 'books.id', '=', 'order_items.book_id')
                    ->join('orders', 'order_items.order_id', '=', 'orders.id')
                    ->where('orders.status', 'completed') // فقط سفارش‌های تکمیل‌شده
                    ->groupBy('books.id', 'books.title', 'books.slug', 'books.price', 'books.image', 'books.created_at')
                    ->orderBy('total_sales', 'DESC');
            }
    
            if ($sort == 'cheapest') {
                return $query
                ->orderBy('price', 'ASC');
            }
    
            if ($sort == 'most_expensive') {
                return $query
                ->orderBy('price', 'DESC');
            }

            
        }


        // if(request()->has('limit')){
        //     return $query
        //         ->take(request()->limit);
        // }

       

        return $query;
    }














    // public function scopeSort($query)
    // {
    //     if (request()->has('sort_by')) {
    //         $sort = request()->sort_by;
    
    //         if ($sort == 'best_seller') {
    //             return $query
    //             ->select('books.id', 'books.title', 'books.slug', 'books.price', 'books.image', 'books.created_at', DB::raw('SUM(most_sold.quantity) as total_sales'))
    //             ->rightJoin('order_items as most_sold', 'books.id', '=', 'most_sold.book_id')
    //             ->groupBy('books.id', 'books.title', 'books.slug', 'books.price', 'books.image', 'books.created_at')
    //             ->orderBy('total_sales', 'DESC');
    //         }
    //     }

    //     return $query;
    // }










    // public function scopeFilterIn($query, ?array $filters = [])
    public function scopeFilterIn($query)
    {
        // if (isset($filters['author_id'])) {
        //     $query->where('author_id', $filters['author_id']);
        // }

        // if (isset($filters['publisher_id'])) {
        //     $query->where('publisher_id', $filters['publisher_id']);
        // }

        if (request()->has('author_id')){
            $query->where('author_id', request()->author_id);
        }

        if (request()->has('publisher_id')){
            $query->where('publisher_id', request()->publisher_id);
        }

        return $query;
    }

    

}
