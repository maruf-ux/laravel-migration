<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class OrderGroupController extends Controller
{
    // order by descending
    public function DemoOrder1(){
        $products = DB::table('products')
        ->orderBy('price','DESC')
        ->get();
        return $products;
    }

    // order by ascending (default)
    public function DemoOrder2(){
        $products = DB::table('products')
        ->orderBy('price')
        ->get();
        return $products;
    }

    public function DemoGroup1(){
        $products = DB::table('products')
        ->groupBy('stock')
        ->get();
        return $products;
    }
    public function DemoGroup2(){
        $products = DB::table('products')
        ->groupBy('stock')
        ->having('stock' ,'>' ,'100')
        ->get();
        return $products;
    }
}
