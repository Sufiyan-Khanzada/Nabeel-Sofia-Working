<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
//use Laravel\Sanctum\HasApiTokens;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'firstname',
        'lastname',
        'username',
        'city', 
            'postalcode', 
            'country',
            'address',
            'state',
            'phone',
            'image',
            'cnic_front',
            'cnic_back',
            'insuretype', 
            'cpassword', 
            'proofid',
            'payment', 
            'confrimpass', 
            'privacypolicy',
            'termscondition',
    ];
    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [

        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function reviews()
    {
        return $this->belongsTo(Review::class, 'id', 'user_id');
    }

    public function user_messages()
    {
        return $this->belongsTo(UserMessage::class, 'id', 'sender_id');
    }

    public function rented_products()
    {
        return $this->belongsTo(RentedProduct::class, 'id', 'seller_id');
    }
    public function getMessages($id)
    {
        $user = User::where('id', auth()->user()->id)->first();
        $userchat1 = UserMessage::with('messages')
            ->where(['receiver_id' => auth()->id(), 'sender_id' => (int)$id])
            ->get()->pluck('id')->toArray();
        $userchat2 = UserMessage::with('messages')
        ->where(['sender_id' => auth()->id(), 'receiver_id' => (int)$id])
        ->get()->pluck('id')->toArray();
        $userChat = array_merge($userchat1, $userchat2);
            if(!empty($userChat)){
                $chat = Message::with('user_messages')->whereIn('user_messages_id', $userChat)
                    ->orderBy('created_at', 'ASC')
                    ->get();
                return $chat;
            }
            return;
    }
    public function sendMessages($sender, $receiver, $message)
    {
        $usermessage = UserMessage::where(['sender_id' => $sender, 'receiver_id' => $receiver])->first();
        if (!$usermessage) {
            $usermessage = UserMessage::create([
                'sender_id' => $sender,
                'receiver_id' => $receiver
            ]);
            $send = Message::create([
                'user_messages_id' => $usermessage->id,
                'message' => $message
            ]);
            return $send;
        }
        $usermessage->update([
            'updated_at' => now()
        ]);
        $send = Message::create([
            'user_messages_id' => $usermessage->id,
            'message' => $message
        ]);
        return $send;
    }
    public function getChatUsers()
    {
        $chatusers = $this::whereHas('user_messages', function($q){
            $q->where('sender_id', auth()->id())
            ->orWhere('receiver_id', auth()->id());
        })
        ->whereNot('id', auth()->id())
        ->get();
        // $chatusers = $this->whereNot('id', auth()->user()->id)->get();
        return $chatusers;
    }

    public function getRefreshMessage($request)
    {
        if ($request->has('message_id') && !empty($request->has('message_id'))) {
            $ids = [];
            foreach ($request->message_id as $key => $value) {
                foreach ($value as $k => $v) {
                    array_push($ids, $v);
                }
            }
            $usermessage = UserMessage::where([
                'sender_id' => $request->receiver_id,
                'receiver_id' => $request->sender_id
            ])
                ->orWhere([
                    'sender_id' => $request->receiver_id,
                    'receiver_id' => $request->sender_id
                ])
                ->first();
            $newmessage = Message::where('user_messages_id', $usermessage->id)
                ->with('user_messages')->whereNotIn('id', $ids)
                ->get();
            return $newmessage;
        } else {
            return null;
        }
    }

    public function statsUser($id)
    {
$cards = RentedProduct::select([
        \DB::raw("DATE_FORMAT(created_at, '%m') as month"),
        \DB::raw('SUM(price) as amount')
    ])
    ->where('seller_id',$id)
    ->where('request_status','approved')
    ->groupBy('month')
    ->get()->toArray();
    $products = RentedProduct::with(['products'])->select([
        'product_id',
        \DB::raw('SUM(price) as amount')
    ])
    ->where('seller_id',$id)
    ->where('request_status','approved')
    ->groupBy('product_id')
    ->get()->toArray();
    $cat = [];
    foreach($products as $key => $value){
        foreach($value as $k => $v)
        {
            if(is_array($v)){
                foreach($v as $i => $j){
                    array_push($cat, $j['category_id']);
                }
            }
        }
    }
    $products2 = RentedProduct::select([
        'product_id',
        \DB::raw('SUM(price) as amount')
    ])
    ->where('seller_id',$id)
    ->where('request_status','approved')
    ->groupBy('product_id')
    ->get()->pluck('product_id')->toArray();
    // dd($products2);
    $ch = Products::query()->with(['categories' => function($q){
        $q->select(['id','name']);
    }])
    ->with(['rented_products' => function($q){
        $q->select('product_id', 'price');
    }])
    ->whereIn('id', $products2)->get(['id', 'Item_name', 'category_id'])->toArray();
    return response()->json(['success' => true, 'amount' => $cards, 'products' => $products, 'brands' => $ch],200);
    }
}
