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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade'); // کاربر
            $table->unsignedBigInteger('total_amount');  // مبلغ کل سفارش
            $table->integer('total_items'); // تعداد کل آیتم‌ها در سفارش
            $table->enum('status', ['pending', 'completed', 'cancelled', 'refunded'])->default('pending'); // وضعیت سفارش
            // $table->timestamp('ordered_at'); // زمان ثبت سفارش
            $table->timestamps(); // زمان ایجاد و به‌روزرسانی سفارش
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};