<?php

namespace App\Repositories\Interfaces;

interface IOrderRepository
{
    public function createOrder();
    public function updateOrder($id, $data);
}