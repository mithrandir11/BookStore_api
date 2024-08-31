<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Repositories\Interfaces\IBookRepository;
use App\Repositories\Interfaces\IOrderItemRepository;
use App\Repositories\Interfaces\IOrderRepository;
use App\Repositories\Interfaces\ITransactionRepository;
use App\Repositories\PaymentRepository;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PurchaseController extends Controller
{
    protected $orderRepository;
    protected $orderItemRepository;
    protected $bookRepository;
    protected $transactionRepository;
    protected $paymentRepository;

    public function __construct(
        IOrderRepository $orderRepository, 
        IOrderItemRepository $orderItemRepository, 
        IBookRepository $bookRepository,
        ITransactionRepository $transactionRepository,
        PaymentRepository $paymentRepository
        )
    {
        $this->orderRepository = $orderRepository;
        $this->orderItemRepository = $orderItemRepository;
        $this->bookRepository = $bookRepository;
        $this->transactionRepository = $transactionRepository;
        $this->paymentRepository = $paymentRepository;
    }


    public function handlePurchaseProcessing(Request $request)
    {
        $order = $this->handleCreateOrder($request->all());
        $transaction = $this->handleCreateTransaction($request->gateway, $order);
        $response = $this->createTransactionInPaymentGateway($request->gateway, $transaction);
        $transaction = $this->handleUpdateTransaction($request->gateway, $transaction->id, $response);
        
        return $this->createPaymentGatewayLink($request->gateway, $response);
    }


    public function handleVerifyProcessing(Request $request)
    {
        $gateway = $this->identifyGatewayByParams($request);
        $uu_id = $this->paymentRepository->getUuId($gateway, $request);
        $transaction = $this->transactionRepository->findWhereFirst('uu_id', $uu_id);

        if(!$transaction){
            $error = 'تراکنش یافت نشد';
            return Response::error($error, null, 403);
        }
        
        $data = $this->paymentRepository->prepareVerifyProcessingData($gateway, $request);
        $response = $this->paymentRepository->verifyTransaction($gateway, $data);
        $trans_id = $this->paymentRepository->getTransId($gateway, $response);

        if($this->transactionRepository->exists('trans_id', $trans_id)){
            $error = 'این تراکنش قبلا ثبت شده است';
            return Response::error($error, null, 403);
        }

        $transaction = $this->handleUpdateTransaction($gateway, $transaction->id, $response);
        
        $message = 'پرداخت با موفقیت انجام شد';
        // return Response::success($message, $transaction);
        return redirect()->away('http://localhost:3000/payment/result?transaction_id=' . $transaction->id);
        // return redirect()->away('http://localhost:3000/')->with($message);
    }


    protected function handleUpdateTransaction($gateway, $id, $data)
    {
        $data = $this->paymentRepository->prepareUpdateTransactionData($gateway, $data);
        return $this->transactionRepository->updateTransaction($id, $data);
    }


    protected function createPaymentGatewayLink($gateway, $response){
        return $this->paymentRepository->createPaymentGatewayLink($gateway, $response);
    }



    protected function createTransactionInPaymentGateway($gateway, $transaction)
    {
        $data = $this->paymentRepository->prepareCreateTransactionData($gateway, $transaction);
        return $this->paymentRepository->createTransaction($gateway, $data);
    }


    


    protected function identifyGatewayByParams(Request $request)
    {
        if ($request->has('id') && $request->has('track_id')) {
            return 'idpay';
        } elseif ($request->has('token')) {
            return 'pay';
        }
        throw new \Exception('Unsupported payment gateway');
    }


    


    protected function handleCreateTransaction($gateway, $order)
    {
        $data=[
            'order_id' => $order->id,
            'amount' => $order->total_amount,
            'status' => 'pending',
            'gateway' => $gateway,
        ];
        return $this->transactionRepository->createTransaction($data);
    }


    protected function handleCreateOrder($data)
    {
        // return response()->json($data);
        $order = $this->orderRepository->createOrder();
        $book_ids = array_column($data['items'], 'book_id');
        $books = $this->getbooksbyIds($book_ids);
        $total_amount = 0;
        $total_items = 0;
        foreach ($data['items'] as $item){
            $item = array_merge(
                ['order_id'=>$order->id], 
                ['price'=>$this->getPriceBookById($books, $item['book_id'])], 
                $item
            );

            if((int)$item['quantity'] > (int)$this->getQuantityBookById($books, $item['book_id'])){
                throw new Exception("Error Processing Request", 1);
            }

            $order_item = $this->orderItemRepository->createOrderItem($item);
            $total_amount += $order_item->price * $order_item->quantity;
            $total_items += $order_item->quantity;
        }
        $order = $this->orderRepository->updateOrder($order->id, [
            'total_amount' => $total_amount,
            'total_items' => $total_items,
        ]);
        return $order;
    }

    protected function getbooksbyIds($book_ids)
    {
        return $this->bookRepository->getBooksByIds($book_ids);
    }

    protected function getPriceBookById($books, $book_id)
    {
        foreach ($books as $book) {
            if ($book['id'] == $book_id) {
                return $book['price'];
            }
        }
        return null;
    }

    protected function getQuantityBookById($books, $book_id)
    {
        foreach ($books as $book) {
            if ($book['id'] == $book_id) {
                return $book['quantity'];
            }
        }
        return null;
    }
}
