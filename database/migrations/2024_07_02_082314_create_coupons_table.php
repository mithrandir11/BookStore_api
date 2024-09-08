<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('coupons', function (Blueprint $table) {
            $table->id();
            $table->string('code')->unique(); // کد تخفیف
            $table->unsignedBigInteger('discount_amount')->nullable();
            $table->integer('discount_percentage')->nullable();
            $table->unsignedBigInteger('max_discount_amount')->nullable(); // حداکثر مبلغ تخفیف در صورت استفاده از درصد
            $table->unsignedBigInteger('min_order_amount')->nullable(); // حداقل مبلغ سفارش برای استفاده از تخفیف
            $table->integer('usage_limit')->nullable(); // محدودیت استفاده از کد
            $table->integer('used_count')->default(0); // تعداد استفاده‌شده
            $table->date('expires_at')->nullable(); // تاریخ انقضای کد
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('coupons');
    }
};
