<?php

namespace App\Repositories;

use App\Models\Book;
use App\Repositories\Interfaces\IBookRepository;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

class BookRepository implements IBookRepository
{

    // public function getAllBooks(){
    //     return Book::with(['author', 'publisher', 'translator', 'category'])->get();
    // }

    protected $model;

    public function __construct(Book $model)
    {
        $this->model = $model;
    }

    public function getAllBooks($perPage = 10)
    {
        return Cache::remember('books_page_' . request('page', 1), 60, function() use ($perPage) {
            // return  $this->model->paginate($perPage);
            return  $this->model->get();
        });
    }

    public function getBookById($id){
        // return Cache::remember("book_id_{$id}", 60, function() use ($id) {
            return  $this->model->findOrFail($id);
        // });
    }

    public function getBooksByIds($data){
            return  Book::whereIn('id', $data)->get();
    }

    public function getBookByCategoryId($id, $perPage = 10){
        // return  $this->model->where('category_id', $id)->paginate($perPage);
        return  $this->model->where('category_id', $id)->get();
    }

    public function getBestSellersBooks($limit = 10)
    {
        $query = $this->model;

        return Cache::remember("bestsellers_{$limit}", 60, function() use ($query, $limit) {
            return $query
                ->select('books.id', 'books.title', 'books.slug', 'books.price', 'books.image', 'books.created_at', DB::raw('SUM(order_items.quantity) as total_sales'))
                ->join('order_items', 'books.id', '=', 'order_items.book_id')
                ->groupBy('books.id', 'books.title', 'books.slug', 'books.price', 'books.image', 'books.created_at')
                ->orderBy('total_sales', 'desc')
                ->take($limit)
                ->get();
        });
    }


    public function getLatestBooks($limit = 10)
    {
        return Cache::remember("latest_books_{$limit}", 60, function() use ($limit) {
            return  $this->model->latest()->take($limit)->get();
        });
    }



    public function withCriteria(array $criteria)
    {
        $query = $this->model->newQuery(); 

        foreach ($criteria as $criterion) {
            $query = $criterion->apply($query);
        }

        $this->model = $query;

        return $this;
    }

}