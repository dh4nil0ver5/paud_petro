<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\M_Kategori;

class KategoriController extends Controller
{
    //
    public function __construct(){}

    public function index(){
        $title = "Manage Categori";
        $kategori = M_Kategori::get_data();   
        $page = "Kategori";
        $msg = "";
        $status_msg = false;
        return view('admin.kategori.kategori_index')->with(compact('title','kategori', 'msg', 'status_msg', 'page'));
    }
    public function add(){
        $title = "Tambah kategori";
        $page = "Kategori";
        $msg = "";
        $status_msg = false;
        return view('admin.kategori.kategori_add')->with(compact('title', 'msg', 'status_msg', 'page'));
    }
    public function store(Request $request){
        $msg = "";
        $status_msg = false;
        $this->validate($request, [
            'name'=>'required'
        ]);
        $nama = $request->name;
        $data = ["name"=>$nama, "user_id"=>\Auth::user()->id, "created_at"=>date('Y-m-d H:i:s'), "updated_at"=>date('Y-m-d H:i:s')];
        $data = M_Kategori::insert($data);  
        
        return redirect('/kategori');
    }
    public function change($id){ 
        $page = "Kategori";
        $title = "Ubah Categori";
        $kategori = M_Kategori::whereId($id);  
        $msg = "";
        $status_msg = false;
        return view('admin.kategori.kategori_edit')->with(compact('title','kategori', 'msg', 'status_msg', 'page'));
    }
    public function updates(Request $request){
        $this->validate($request, [
            'name'=>'required'
        ]);
        $nama = $request->name;
        $user_id = $request->user_id;
        $id = $request->id;
        $data = ["name"=>$nama, "user_id"=>$user_id, "updated_at"=>date('Y-m-d H:i:s')];
        $data = M_Kategori::updates($id, $data);  
        
        return redirect('/kategori');
    }
    public function eraser($id){ 
        $data = M_Kategori::hapus($id);  
        if(!$data){
            $page = "Kategori";
            $title = "Ubah Categori";  
            $msg = "Hapus berhasil !";
            $status_msg = false;
            return view('admin.kategori.kategori_index')->with(compact('title','kategori', 'status_msg', 'page')); 
        }else{
            return redirect('/kategori');
        }
    }
}
