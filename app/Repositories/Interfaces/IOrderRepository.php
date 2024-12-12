<?php

namespace App\Repositories\Interfaces;

interface IOrderRepository
{
    public function find($id);
    public function createOrder($data);
    public function updateOrder($id, $data);
    public function getUserOrders($user_id);
    public function userHasUsedCoupon($userId, $couponId);
    // public function applyCouponToOrder($data);
   
}