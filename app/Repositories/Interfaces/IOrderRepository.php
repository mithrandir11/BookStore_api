<?php

namespace App\Repositories\Interfaces;

interface IOrderRepository
{
    public function find($id);
    public function createOrder($data);
    public function updateOrder($id, $data);
    public function getUserOrders($user_id);
    // public function applyCouponToOrder($data);
   
}