<?php

namespace App\Repositories\Interfaces;

interface IBookRepository
{
    public function getAllBooks($perPage);
    public function getBookById($id);
    public function getBooksByIds($data);
    public function getBookByCategoryId($id);
    public function getBestSellersBooks($limit);
    public function getLatestBooks($limit);
    // public function createComment($data);
}