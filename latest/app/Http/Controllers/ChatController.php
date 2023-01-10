<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class ChatController extends Controller
{
    protected $model;
    public function __construct(User $model)
    {
        $this->model = $model;
    }
    public function dashboard()
    {
        if (auth()->check()) {
            $user = $this->model->getChatUsers();
            return response()->json(['success' => true, 'data' => $user]);
        }
        return view('login');
    }

    public function sendmessage(Request $request)
    {
        $sender = auth()->user()->id;
        $receiver = $request->receiver_id;
        $message = $request->message;
        return $this->model->sendMessages($sender, $receiver, $message);
    }
    public function getMessage($id)
    {
        $messages = $this->model->getMessages($id);
        return $messages;
    }

    public function getRefreshMessage(Request $request)
    {
        $messages = $this->model->getRefreshMessage($request);
        return $messages;
    }
}
