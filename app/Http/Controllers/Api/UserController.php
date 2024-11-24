<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Repositories\Interfaces\IUserRepository;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    protected $userRepository;
    public function __construct(IUserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function getCurrentUser(){
        $user = Auth::user();
        if($user) return Response::success(null, ['user'=>$user]);
    }

    public function getUserInfo(){
        $user = Auth::user();
        if($user) return Response::success(null, $user);
    }

    public function editUserInfo(Request $request)
    {
        $validated = $request->validate([
            'name' => ['required','string'],
            'email' => ['required','email','unique:users,email,'.$request->user()->id],
        ]);
        // $validated['user_id'] = $request->user()->id;
        $user = $this->userRepository->updateUser($request->user()->id,$validated);
        return Response::success(null, $user);
    }
}
