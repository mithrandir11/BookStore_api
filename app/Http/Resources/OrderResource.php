<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id" => $this->id,
            "total_amount" => $this->total_amount,
            // "items" => $this->orderItems,
            "items" => OrderItemResource::collection($this->orderItems),
            "address" => $this->address->full_address,
            // "coupon_id" => $this->coupon_id,
            "discount_amount" => $this->discount_amount,
            "status" => $this->status,
            "created_at" => $this->created_at,
            "updated_at" => $this->updated_at,
        ];
    }
}
