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
        $order->update($data);
        return $order;
    }

    public function getUserOrders($user_id){
        return  $this->model->where('user_id', $user_id)->latest()->paginate(10);
    }

    public function userHasUsedCoupon($userId, $couponId)
    {
        return $this->model
            ->where('user_id', $userId)
            ->where('coupon_id', $couponId)
            ->where('status', 'completed')
            ->exists();
    }

}