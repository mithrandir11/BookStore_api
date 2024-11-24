<?php

namespace App\Repositories\Interfaces;

interface IAddressRepository
{
    public function find($id);
    public function create($data);
    public function updateAddress($id, $data);
    public function getUserAddresses($user_id);
}