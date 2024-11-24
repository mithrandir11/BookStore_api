<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\OrderResource;
use App\Repositories\Interfaces\IOrderRepository;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class OrderController extends Controller
{
    protected $orderRepository;
    public function __construct(IOrderRepository $orderRepository)
    {
        $this->orderRepository = $orderRepository;
    }

    public function getUserOrders(Request $request){
        $orders = $this->orderRepository->getUserOrders($request->user()->id);
        $pagination = [
            'currentPage' => $orders->currentPage(),
            'lastPage' => $orders->lastPage(),
            'total' => $orders->total(),
            'perPage' => $orders->perPage(),
        ];
        return Response::success(null, OrderResource::collection($orders), $pagination);
    }
}
