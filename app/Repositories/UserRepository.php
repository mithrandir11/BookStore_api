<?php

namespace App\Repositories;


use App\Models\User;
use App\Repositories\Interfaces\IUserRepository;
use Illuminate\Support\Facades\Hash;

class UserRepository implements IUserRepository
{
    protected $model;

    public function __construct(User $model)
    {
        $this->model = $model;
    }

    public function find($id){
        return $this->model->findOrFail($id);
    }

    public function createUser($data){ 
        return $this->model->create([
            'name' => $data['name'],
            'email' => $data['email'],
            'cellphone' => $data['cellphone'],
            'password' => Hash::make($data['password']),
        ]);
    }

    public function updateUser($id, $data){
        $item = $this->find($id);
        $item->update($data);
        return $item;
    }

    public function findWhereFirst($column, $value){
        return $this->model->where($column, $value)->first();
    }

}