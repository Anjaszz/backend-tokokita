<?php

namespace App\Http\Controllers;

use App\Models\login;
use App\Models\member;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

use function Laravel\Prompts\password;

class LoginController extends Controller{
    public function login(Request $request){

        $email=$request->input('email');
        $password= $request->input('password');

       $member = member::query()->firstWhere(['email'=>$email]);
       if($member==null){
        return $this->responHasil(400,false,'email tidak ditemukan');
       }
        if (!Hash::check($password,$member->password)){
            return $this->responHasil(400,false,"Password Tidak valid");
        }
       $login = login::create([
        'member_id'=>$member->id,
        'auth_key'=>$this->RandomString(),
       ]);
       if(!$login){
        return $this->responHasil(401,false,'Unauthrized');
       }
       $data = [
        'token'=> $login->auth_key,
        'user'=>[
            'id'=>$member->id,
            'email'=>$member->$email,
          ]
        ];
        return $this->responHasil(200,true,$data);
    }
    private function RandomString($length=100){
        $karakter = '12345678dssd9abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $panjang_karakter=strlen($karakter);
        $str='';
        for($i=0; $i<$length; $i++){
            $str.=$karakter[rand(0,$panjang_karakter-1)];
        }
        return $str;
    }
    
}