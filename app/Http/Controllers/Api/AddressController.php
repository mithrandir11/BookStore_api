<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Repositories\Interfaces\IAddressRepository;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class AddressController extends Controller
{
    protected $addressRepository;
    public function __construct(IAddressRepository $addressRepository)
    {
        $this->addressRepository = $addressRepository;
    }

    

    public function getUserAddresses(Request $request){
        $address = $this->addressRepository->getUserAddresses($request->user()->id);
        return Response::success(null, $address);
    }

    public function createAddress(Request $request){
        $validated = $request->validate([
            'full_address' => ['required','string'],
            'recipient_name' => ['required','string'],
            'cellphone' => ['required','string'],
            'city' => ['required','string'],
            'state' => ['required','string'],
            'postal_code' => ['required'],
        ]);
        $validated['user_id'] = $request->user()->id;
        $address = $this->addressRepository->create($validated);
        return Response::success(null, $address);
    }

    public function editAddress(Request $request, $id){
        $validated = $request->validate([
            // 'address_id' => 'required|integer|exists:addresses,id',
            'full_address' => ['required','string'],
            'recipient_name' => ['required','string'],
            'cellphone' => ['required','string'],
            'city' => ['required','string'],
            'state' => ['required','string'],
            'postal_code' => ['required'],
        ]);
        $address = $this->addressRepository->updateAddress($id, $validated);
        return Response::success(null, $address);
    }


    public function deleteAddress($id){
        $address = $this->addressRepository->find($id);
        $address->delete($id);
        return Response::success('آیتم با موفقیت حذف شد', null);
    }
}
