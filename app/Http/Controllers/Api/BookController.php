<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BookResource;
use App\Models\Book;
use App\Repositories\Criteria\EagerLoad;
use App\Repositories\Interfaces\IBookRepository;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

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
        return Response::success(null, BookResource::collection($books));
        // return  BookResource::collection($books);
    }

    public function findById($id)
    {
        $books = $this->bookRepository->getBookById($id);
        return Response::success(null, new BookResource($books));
        // return new BookResource($books);
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
        return Response::success(null, BookResource::collection($books));
    }

    public function latest(){
        $books = $this->bookRepository->getLatestBooks(10);
        return Response::success(null, BookResource::collection($books));
    }

    // public function createComment(Request $request){
    //     $validated = $request->validate([
    //         'body' => ['required','string'],
    //     ]);
    //     $validated['user_id'] = $request->user()->id;
    //     $comment = $this->bookRepository->createComment($validated);
    //     return Response::success(null, $comment);
    // }

}
