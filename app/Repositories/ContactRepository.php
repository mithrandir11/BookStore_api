<?php

namespace App\Repositories;

use App\Models\ContactUs;
use App\Repositories\Interfaces\IContactRepository;

class ContactRepository implements IContactRepository
{

    protected $model;

    public function __construct(ContactUs $model)
    {
        $this->model = $model;
    }

    public function create($data){
        return $this->model->create($data);
    }    

}