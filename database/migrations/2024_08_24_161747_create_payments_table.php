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
        // Schema::create('payments', function (Blueprint $table) {
        //     $table->id();
        //     $table->foreignId('transaction_id')->nullable()->constrained()->onDelete('cascade'); // تراکنش مربوط به پرداخت
        //     $table->foreignId('user_id')->constrained()->onDelete('cascade'); // کاربر مربوط به پرداخت
        //     $table->string('payment_reference')->nullable()->unique(); // شناسه مرجع پرداخت
        //     $table->unsignedBigInteger('amount'); // مبلغ پرداخت
        //     $table->enum('status', ['pending', 'successful', 'failed'])->default('pending'); // وضعیت پرداخت
        //     $table->timestamp('paid_at')->nullable(); // زمان پرداخت (در صورت موفقیت)
        //     $table->timestamps();
        // });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payments');
    }
};
