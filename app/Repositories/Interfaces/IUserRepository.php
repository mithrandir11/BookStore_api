<?php

namespace App\Repositories\Interfaces;

interface IUserRepository
{
    public function createUser($data);
    public function updateUser($id, $data);
    public function findWhereFirst($column, $value);

}