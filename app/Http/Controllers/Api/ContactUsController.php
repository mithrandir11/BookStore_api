<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Repositories\Interfaces\IContactRepository;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class ContactUsController extends Controller
{
    protected $contactRepository;
    public function __construct(IContactRepository $contactRepository)
    {
        $this->contactRepository = $contactRepository;
    }

    public function createContact(Request $request){
        $validated = $request->validate([
            'email' => ['required','email'],
            'subject' => ['required','string'],
            'text' => ['required','string'],
        ]);
        $contact = $this->contactRepository->create($validated);
        return Response::success(null, $contact);
    }

}
