<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Laravel\Passport\TokenRepository;
use Laravel\Passport\RefreshTokenRepository;

class PassportController extends Controller
{

    public function all_users()
    {
        $user = User::all();

        return response()->json([
            'success' => true,
            'message' => 'Detail Fetched SuccessFully',
            'data' => $user
        ], 200);
}

public function all_branded()
    {
        $user = User::select('id','profile','name')->where('featured','yes')->get();;

        return response()->json([
            'success' => true,
            'message' => 'Detail Fetched SuccessFully',
            'data' => $user
        ], 200);
}
    /**
     * Register user.
     *
     * @return json
     */
    public function register(Request $request)
    {
        $input = $request->all();

        $validate_data = [
            'name' => 'required|string|min:4',
            'email' => 'unique:users|required|email',
            'password' => 'required|regex:A-Za-z0-9\!-_',
            'confirm_password' => 'same:password|required',
            'lastname' => 'required|string',
            'postalcode' => 'nullable|string', 
            'city' => 'nullable|string', 
            'address' => 'nullable|string',
            'phone' => 'nullable|string', 
            'insuretype' => 'nullable|string',
            'cnic_back' => 'nullable',
            'cnic_front' => 'nullable',
            'payement' => 'nullable',
            'privacypolicy' => 'nullable|string', 
            'termscondition' => 'nullable|string',
            'profile' => 'nullable',
            
        ];

        $validator = Validator::make($input, $validate_data);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validator->errors()
            ]);
        }
 


        // $user = User::create([
        //     'name' => $input['name'],
        //     'email' => $input['email'],
        //     'password' => Hash::make($input['password'])
        // ]);

            //  $imageName="";
            //  $imagepath="https://testlink.code7labs.com/storage/app/public/uploads/profile";
        
            //  $imageName1="";
            //  $imagepath1="https://testlink.code7labs.com/storage/app/public/uploads/media_files";

            //  $imageName2="";
            //  $imagepath2="https://testlink.code7labs.com/storage/app/public/uploads/media_files";   

            // $images=$request->file('profile');
            // $imagepath="https://testlinks.code7labs.com/storage/app/public/uploads/cars";
            // $newname=rand().'.'.$images->getClientOriginalExtension();
            // $images->move('storage/app/public/uploads/profile',$newname);
            // $imageName=$imageName.$newname;
            // $full_image=$imagepath."/".$imageName;

            // $images1=$request->file('cnic_back');
            // $imagepath1="https://testlinks.code7labs.com/storage/app/public/uploads/cars";
            // $newname1=rand().'.'.$images1->getClientOriginalExtension();
            // $images1->move('storage/app/public/uploads/cnic',$newname1);
            // $imageName1=$imageName1.$newname1;
            // $full_image1=$imagepath1."/".$imageName1;


            // $images2=$request->file('cnic_front');
            // $imagepath2="https://testlinks.code7labs.com/storage/app/public/uploads/cars";
            // $newname2=rand().'.'.$images2->getClientOriginalExtension();
            // $images2->move('storage/app/public/uploads/cnic',$newname2);
            // $imageName2=$imageName2.$newname2;
            // $full_image2=$imagepath2."/".$imageName2;




            $user = new User(); 
            $user->name=$request->name;
            $user->email=$request->email;
            $user->password=Hash::make($input['password']);
            $user->lastname=$request->lastname;
            $user->username=$request->username;
            $user->postalcode=$request->postalcode;
            $user->city=$request->city;
            $user->address=$request->address;
            $user->phone=$request->postalcode;
            $user->insuretype=$request->insuretype;
            // $user->cnic_back=$full_image1;
            // $user->cnic_front=$full_image2;
            $user->payement=$request->payement;
            $user->privacypolicy=$request->privacypolicy;
            $user->termscondition=$request->termscondition;
             $user->featured=$request->featured;
             $user->country=$request->country;
            $user->state=$request->state;
            $user->profile->$request->profile;
            $user->save();

         
        return response()->json([
            'status' => true,
            'message' => 'User registered succesfully, Use Login method to receive token.'
        ], 200);
    }
 
    /**
     * Login user.
     *
     * @return json
     */
    public function login(Request $request)
    {
        $input = $request->only(['email', 'password']);

        $validate_data = [
            'email' => 'required|email',
            'password' => 'required|min:8',
        ];

        $validator = Validator::make($input, $validate_data);
        
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Please see errors parameter for all errors.',
                'errors' => $validator->errors()
            ]);
        }

        // authentication attempt
        if (auth()->attempt($input)) {
            $token = auth()->user()->createToken('passport_token')->accessToken;
            
            return response()->json([
                'status' => true,
                'message' => 'User login succesfully, Use token to authenticate.',
                'token' => $token
            ], 200);
        } else {
            return response()->json([
                'status' => false,
                'message' => 'User authentication failed.'
            ], 401);
        }
    }

    /**
     * Access method to authenticate.
     *
     * @return json
     */
    public function userDetail()
    {
        return response()->json([
            'status' => true,
            'message' => 'Data fetched successfully.',
            'data' => auth()->user()
        ], 200);
    }

    /**
     * Logout user.
     *
     * @return json
     */
    public function logout()
    {
        $access_token = auth()->user()->token();

        // logout from only current device
        $tokenRepository = app(TokenRepository::class);
        $tokenRepository->revokeAccessToken($access_token->id);

        // use this method to logout from all devices
        // $refreshTokenRepository = app(RefreshTokenRepository::class);
        // $refreshTokenRepository->revokeRefreshTokensByAccessTokenId($$access_token->id);

        return response()->json([
            'success' => true,
            'message' => 'User logout successfully.'
        ], 200);
    }

      public function update_user( Request $request,$id)
    {

         $input = $request->all();
         
        //  $images=$request->file('');


            
        //      $imageName="";
        //      $imagepath="https://testlink.code7labs.com/storage/app/public/uploads/profile";
        
        //      $imageName1="";
        //      $imagepath1="https://testlink.code7labs.com/storage/app/public/uploads/cnic";

        //      $imageName2="";
        //      $imagepath2="https://testlink.code7labs.com/storage/app/public/uploads/cnic";   

        //      $images=$request->file('profile');
        //      $images1=$request->file('cnic_back');
        //      $images2=$request->file('cnic_front');
            

           
            


         
        //  if($images!='' && $images!='' && $imsgrd!=''){


            // $newname=rand().'.'.$images->getClientOriginalExtension();
            // $images->move('storage/app/public/uploads/profile',$newname);
            // $imageName=$imageName.$newname;
            // $full_image=$imagepath."/".$imageName;



            // $newname1=rand().'.'.$images1->getClientOriginalExtension();
            // $images1->move('storage/app/public/uploads/cnic',$newname1);
            // $imageName1=$imageName1.$newname1;
            // $full_image1=$imagepath1."/".$imageName1;


            
           
            // $newname2=rand().'.'.$images2->getClientOriginalExtension();
            // $images2->move('storage/app/public/uploads/cnic',$newname2);
            // $imageName2=$imageName2.$newname2;
            // $full_image2=$imagepath2."/".$imageName2;

        //     $user = new User();
        //     $user = User::find($id);

        //     $user->name=$request->name;
        //     $user->email=$request->email;
        //     $user->password=Hash::make($input['password']);
        //     $user->lastname=$request->lastname;
        //     // $user->username=$request->username;
        //     $user->postalcode=$request->postalcode;
        //     $user->city=$request->city;
        //     $user->address=$request->address;
        //     $user->phone=$request->postalcode;
        //     $user->insuretype=$request->insuretype;
        //     // $user->cnic_back=$input['cnic_back']=$full_image1;
        //     // $user->cnic_front=$input['cnic_front']=$full_image2;
        //     $user->cnic_front=$full_image2;
        //     $user->payement=$request->payement;
        //     $user->privacypolicy=$request->privacypolicy;
        //     $user->termscondition=$request->termscondition;
        //     // $user->profile=$input['profile']=$full_image;
        //     $user->save();

            
        //     return response()->json([
        //     'status' => true,
        //     'message' => 'User Details Updated Successfully.'
        // ], 200);

                
        //     }
            
           
            
            $user = new User();
            $user = User::find($id);
           
         if($user){
           
            $user->name=$request->name;
            $user->email=$request->email;
            // $user->password=Hash::make($input['password']);
            $user->lastname=$request->lastname;
            // $user->username=$request->username;
            $user->postalcode=$request->postalcode;
            $user->city=$request->city;
            $user->address=$request->address;
            $user->phone=$request->phone;
            $user->insuretype=$request->insuretype;
            // $user->cnic_back=$input['cnic_back']=$full_image1;
            // $user->cnic_front=$input['cnic_front']=$full_image2;
            // $user->cnic_front=$full_image2;
            $user->payement=$request->payement;
            $user->privacypolicy=$request->privacypolicy;
            $user->termscondition=$request->termscondition;
              $user->county=$request->county;
            $user->state=$request->state;
             $user->featured=$request->featured;
               $user->profile=$request->profile;
            $user->save();


           
            
             return response()->json([
            'status' => true,
            'message' => 'User Details Updated Successfully.'
        ], 200);

            
         } 
         else{
             return response()->json([
            'status' => true,
            'message' => 'User Not Found.'
        ], 404);
 
             
         }
       
         
   
    }
    
    
    public function show_single_user(Request $request , $id)
    {
         $user = User::find($id);
        // $ids = $request->input('ids', []); // via injected instance of Request
      // $items1 = items::whereIn('id', explode(',', $id))->get();
       // $items1 = items::whereIn('id', explode(',', $id->$request->get()));
        if (is_null($user)) {
            return response()->json([
                'status' => false,
                'message' => 'User Details Not Found'
            ], 404);
        }
        return response()->json([
                'status' => true,
                'message' => 'User Details Found',
                'data' => $user
            ], 200);

       // return $items;
    }



}