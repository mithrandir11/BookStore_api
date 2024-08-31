<?php

namespace App\Repositories;

use App\Models\OrderItem;
use App\Repositories\Interfaces\IOrderItemRepository;

class OrderItemRepository implements IOrderItemRepository
{

    protected $model;

    public function __construct(OrderItem $model)
    {
        $this->model = $model;
    }

    public function createOrderItem($data){
        // $order_item= $this->model->create($data);
        // dd($data['order_id']);
        // $this->model->create([
        //     'order_id' => $order->id,
        //     'book_id' => $book->id,
        //     'quantity' => $item['quantity'],
        //     'price' => $book->price,
        // ]);
        return $this->model->create($data);
    }

}