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
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->constrained()->onDelete('cascade'); // سفارش مربوط به تراکنش

            $table->string('uu_id')->unique()->nullable(); // برای شناسایی تراکنش
            $table->string('trans_id')->unique()->nullable(); // شناسه تراکنش (برای مرجع درگاه پرداخت)

            $table->unsignedBigInteger('amount'); // مبلغ تراکنش
            $table->enum('status', ['pending', 'successful', 'failed'])->default('pending'); // وضعیت تراکنش
            // $table->string('payment_method')->nullable(); // روش پرداخت (کارت، کیف پول دیجیتال، غیره)
            $table->string('gateway')->nullable(); // پاسخ درگاه پرداخت
            $table->text('gateway_response')->nullable(); // پاسخ درگاه پرداخت
            // $table->timestamp('transaction_date')->nullable(); // تاریخ تراکنش
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
