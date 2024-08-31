<?php

namespace App\Repositories;

use App\Models\Order;
use App\Repositories\Interfaces\IOrderRepository;

class OrderRepository implements IOrderRepository
{

    protected $model;

    public function __construct(Order $model)
    {
        $this->model = $model;
    }

    public function find($id){
        return $this->model::findOrFail($id);
    }

    public function createOrder(){
        return $this->model->create([
            // "user_id" => auth()->id,
            "user_id" => 1,
            "total_amount" => 0,
            "total_items" => 0,
        ]);
    }

    public function updateOrder($id, $data){
        $order = $this->find($id);
        $order->update([
            'total_amount' => $data['total_amount'],
            'total_items' => $data['total_items']
        ]);
        return $order;
    }

}