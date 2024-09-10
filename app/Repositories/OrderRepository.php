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

    public function createOrder($data){
        return $this->model->create($data);
    }

    public function updateOrder($id, $data){
        $order = $this->find($id);
        // $order->update([
        //     'total_amount' => $data['total_amount'],
        //     'total_items' => $data['total_items']
        // ]);
        $order->update($data);
        return $order;
    }

    // public function applyCouponToOrder($data)
    // {
    //     $order = $this->find($data['order_id']);
    //     $order->coupons()->attach($data['coupon_id'], ['discount_amount' => $data['discount_amount']]);
    // }

}