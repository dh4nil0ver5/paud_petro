<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMailable;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(){
        $title = "Dashboard";
        $page = "";
        $msg = "";
        $status_msg = false;
        return view('home')->with(compact('title','msg','status_msg','page'));
    }
    public function mail(){
    $name = 'Krunal';
    Mail::to('kokme.km@gmail.com')->send(new SendMailable($name));
    
    return 'Email was sent';
    }
}
