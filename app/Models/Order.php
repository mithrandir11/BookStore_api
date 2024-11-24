<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $guarded = [];

    // public function coupons()
    // {
    //     return $this->belongsToMany(Coupon::class, 'coupon_order')->withPivot('discount_amount');
    // }

    public function getStatusAttribute($status)
    {
        switch ($status) {
            case 'pending':
                $status = 'در انتظار پرداخت';
                break;
            case 'completed':
                $status = 'پرداخت شده';
                break;
            case 'refunded':
                $status = 'مرجوع شده';
                break;
            case 'cancelled':
                $status = 'کنسل شده';
                break;
        }
        return $status;
    }

    public function coupon()
    {
        return $this->belongsTo(Coupon::class);
    }

    public function address()
    {
        return $this->belongsTo(Address::class);
    }

    public function orderItems()
    {
        return $this->hasMany(OrderItem::class);
    }
}
