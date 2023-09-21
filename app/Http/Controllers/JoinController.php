<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;



class JoinController extends Controller
{
      //  <- Join part start ->
      public function DemoAction6(){
        $products = DB::table('products')
        // ->join('categories','products.category_id', '= ','categories.id')
        //'= ' is not correct and follow there are no spaces between the = sign
        ->join('categories','products.category_id', '=','categories.id')
        ->join('brands','products.brand_id', '=','brands.id')
        ->get();
        return $products;
    }
// left join
    public function DemoAction7(){
        $products = DB::table('products')
        ->leftJoin('categories','products.category_id', '=','categories.id')
        ->leftJoin('brands','products.brand_id', '=','brands.id')
        ->get();
        return $products;
    }
// cross
    public function DemoAction8(){
        $cross = DB::table('products')
        ->crossJoin('brands')
        ->get();
        return $cross;
    }

// union
    public function DemoAction9(){
        $query1= DB::table('products')->where('price','>','30');
        $query2= DB::table('products')->where('brand_id','>','3')->union($query1)->get();

        return $query2;
    }
    //  <- Join part end ->
}
