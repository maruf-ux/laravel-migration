<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;



class DemoController extends Controller
{
    // get method practice
    // retrieve all data from database table
    public function DemoAction(){
        $profiles = DB::table('profiles')->get();
        return $profiles;
    }
    // get method + select method practice
    // retrieve all data which in select brackets ('row field 1'.'row field 2','row field 3',..........) from database table
    public function DemoAction5(){
        $profiles = DB::table('profiles')->select('firstName','lastName','email')->get();
        return $profiles;
    }


    // first method practice
    // retrieve first data from database table
    public function DemoAction1(){
        $profile = DB::table('profiles')->first();
        return $profile;
    }

    // find method practice
    //  find method default PK(PRIMARY key): 'id'
    public function DemoAction2(){
        $profile = DB::table('profiles')->find('3');
        return $profile;
    }
    // pluck method practice
    // plunk method can take 2 arguments maximum
    // Output:(key and value)
    // ('firstName','id') -> 'id':'firstName'
    public function DemoAction3(){
        $profile = DB::table('profiles')->pluck('firstName','id');
        return $profile;
    }

    public function DemoAction4(){
        $count = DB::table('products')->count();
        $max = DB::table('products')->max('price');
        $avg = DB::table('products')->avg('price');
        $min = DB::table('products')->min('price');
        $sum = DB::table('products')->sum('price');

        return [
            'count' => $count,
            'max' => $max,
            'avg' => $avg,
            'min' => $min,
            'sum' => $sum
        ];
    }

  

}
