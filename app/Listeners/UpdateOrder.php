<?php

namespace App\Listeners;

use App\Events\PaymentSuccessful;
use App\Repositories\Interfaces\IOrderRepository;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class UpdateOrder
{
    /**
     * Create the event listener.
     */
    protected $orderRepository;

    public function __construct(IOrderRepository $orderRepository)
    {
        $this->orderRepository = $orderRepository;
    }

    /**
     * Handle the event.
     */
    public function handle(PaymentSuccessful $event): void
    {
        $order = $this->orderRepository->find($event->transaction->order_id);
        if ($order) {
            $this->orderRepository->updateOrder($order->id, ['status'=>'completed']);
        }
    }
}
