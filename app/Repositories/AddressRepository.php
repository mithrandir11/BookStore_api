<?php

namespace App\Repositories;

use App\Models\Address;
use App\Repositories\Interfaces\IAddressRepository;

class AddressRepository implements IAddressRepository
{

    protected $model;

    public function __construct(Address $model)
    {
        $this->model = $model;
    }

    public function find($id){
        return $this->model::findOrFail($id);
    }

    public function create($data){
        return $this->model->create($data);
    }

    public function updateAddress($id, $data){
        $address = $this->find($id);
        $address->update($data);
        return $address;
    }

    public function getUserAddresses($user_id){
        return  $this->model->where('user_id', $user_id)->latest()->get();
    }

    

}