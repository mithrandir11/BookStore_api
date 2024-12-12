<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Morilog\Jalali\Jalalian;

class CommentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $data = [
            "id" => $this->id,
            "body" => $this->body,
            "user" => $this->user->name,
            // "created_at" => $this->created_at->diffForHumans()
            'created_at' => Jalalian::fromDateTime($this->created_at)->format('Y/m/d -- H:i')
        ];

        return $data;
    }
}
