<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function getCurrentUser(){
        $user = Auth::user();
        if($user) return Response::success(null, ['user'=>$user]);
    }

    // public function getAddresses(){
    //     $user = Auth::user();
    //     // dd($user->addresses);
    //     if($user) return Response::success(null, $user->addresses->sortDesc());
    // }
}
