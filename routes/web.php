<?php

use App\Http\Controllers\DemoController;
use App\Http\Controllers\JoinController;
use App\Http\Controllers\OrderGroupController;
use App\Http\Controllers\WhereController;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});



Route::controller(DemoController::class)->group(function(){
    Route::get('/demo','DemoAction');
    Route::get('/demo/single','DemoAction1');
    Route::get('/demo/single/find','DemoAction2');
    Route::get('/demo/single/column','DemoAction3');
    Route::get('/demo/helper','DemoAction4');
    Route::get('/demo/sort','DemoAction5');
});

Route::controller(JoinController::class)->group(function(){
    Route::get('/demo/join','DemoAction6');
    Route::get('/demo/join/left','DemoAction7');
    Route::get('/demo/join/cross','DemoAction8');
    Route::get('/demo/join/union','DemoAction9');

});

Route::controller(WhereController::class)->group(function(){
    Route::get('/demo/where','DemoAction10');
    Route::get('/demo/where/like','DemoAction11');
    Route::get('/demo/where/like/not','DemoAction12');
    Route::get('/demo/where/in','DemoAction13');
    Route::get('/demo/where/in','DemoAction13');
    Route::get('/demo/where/in/not','DemoAction14');
    Route::get('/demo/where/between','DemoAction15');
    Route::get('/demo/where/between/not','DemoAction16');
    Route::get('/demo/where/null','DemoAction17');
    Route::get('/demo/where/null/not','DemoAction18');

});

Route::controller(OrderGroupController::class)->group(function(){
    Route::get('/demo/order','DemoOrder1');
    Route::get('/demo/order/asc','DemoOrder2');
    Route::get('/demo/group','DemoGroup1');
    Route::get('/demo/group/have','DemoGroup2');

});
