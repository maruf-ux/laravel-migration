<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;



class WhereController extends Controller
{   //basics where = works or understand
    public function DemoAction10(){
        $products = DB::table('products')
        ->where('price','=','19.99')
        ->get();//basics where >/< not works or understand (as i expected)
        return $products;
    }

    //basics where like
    public function DemoAction11(){
        $profiles = DB::table('profiles')
        ->where('firstName','LIKE','%m%')
        ->get();
        return $profiles;
    }
    //basics where  not like
    public function DemoAction12(){
        $profiles = DB::table('profiles')
        ->where('firstName','NOT LIKE','%m%')
        ->get();
        return $profiles;
    }

    /*
        Todo: where in and where not in can pass data in array format
    */
     //basics where in
    public function DemoAction13(){
        $products = DB::table('products')
        ->whereIn('products.stock',[50,100,127])
        ->get();
        return $products;
    }

     //basics where not in
    public function DemoAction14(){
        $products = DB::table('products')
        ->whereNotIn('products.stock',[50,100,127])
        ->get();
        return $products;
    }

 /*
        Todo: where between and where not between can pass data in array format
    */
     //basics where between
     public function DemoAction15(){
        $products = DB::table('products')
        ->whereBetween('products.price',[1,30])
        ->get();
        return $products;
    }

     //basics where not between
    public function DemoAction16(){
        $products = DB::table('products')
        ->whereNotBetween('products.stock',[1,30])
        ->get();
        return $products;
    }


    public function DemoAction17(){
        $products = DB::table('products')
        ->whereNull('discount_price')
        ->get();    // null operation not work how you expect
        return $products;
    }public function DemoAction18(){
        $products = DB::table('products')
        ->whereNotNull('discount_price')
        ->get();
        return $products;
    }
}
