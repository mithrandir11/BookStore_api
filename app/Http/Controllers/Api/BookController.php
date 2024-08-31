<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BookResource;
use App\Models\Book;
use App\Repositories\Criteria\EagerLoad;
use App\Repositories\Interfaces\IBookRepository;
use Illuminate\Http\Request;

class BookController extends Controller
{
    protected $bookRepository;

    public function __construct(IBookRepository $bookRepository)
    {
        $this->bookRepository = $bookRepository;
    }

    public function index()
    {
        $books = $this->bookRepository->getAllBooks(10);
        return  BookResource::collection($books);
    }

    public function findById($id)
    {
        $books = $this->bookRepository->getBookById($id);
        return new BookResource($books);
    }

    public function findByIds(Request $request)
    {
        $ids = explode(',', $request->ids);
       
        $books = $this->bookRepository->getBooksByIds($ids);
        return  BookResource::collection($books);
    }

    public function findByCategoryId($id)
    {
        $books = $this->bookRepository->getBookByCategoryId($id);
        return BookResource::collection($books);
    }

    public function bestSellers(){
        $books = $this->bookRepository->getBestSellersBooks(10);
        return BookResource::collection($books);
    }

    public function latest(){
        $books = $this->bookRepository->getLatestBooks(10);
        return BookResource::collection($books);
    }

}
