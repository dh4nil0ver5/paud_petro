<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMailable;

class ppdb extends Model { 

    protected $table = "ppdb"; 
    protected $fillable = ['nama_lengkap', 'nama_panggilan', 'jenis_kelamin']; 

    public static function simpanData($data){
        // $name = '';
        // $email = $data["email"];
        // Mail::to('kokme.km@gmail.com')->send(new SendMailable($name)); 
        $result = DB::table('ppdb')->insert($data);
        if ($result) {
            $id = DB::table('ppdb')->max('id');
            return json_encode(array("status"=>200, "data"=>$id));
        }else {
            return json_encode(array("status"=>400, "data"=>$id)); 
        }
    }
    public static function simpanDataPribadi($id, $data){
        $result = DB::table('ppdb')
            ->where('id', $id)
            ->update($data);
        if ($result) {
            $id = DB::table('ppdb')->max('id');
            return json_encode(array("status"=>200, "data"=>$id));
        }else {
            return json_encode(array("status"=>400, "data"=>$id)); 
        }
    }
    public static function simpanDataWalimurid($id, $data){
        $result = DB::table('ppdb')
            ->where('id', $id)
            ->update($data);
        if ($result) {
            $id = DB::table('ppdb')->max('id');
            return json_encode(array("status"=>200, "data"=>$id));
        }else {
            return json_encode(array("status"=>400, "data"=>$id)); 
        }
    }
    public static function save_keterangan($id, $data){
        $result = DB::table('ppdb')
            ->where('id', $id)
            ->update($data);
        if ($result) {
            $id = DB::table('ppdb')->max('id');
            return json_encode(array("status"=>200, "data"=>$id));
        }else {
            return json_encode(array("status"=>400, "data"=>$id)); 
        }
    }
    public static function save_kontak($id, $data){
        $result = DB::table('ppdb')
            ->where('id', $id)
            ->update($data);
            $name = $id;
            Mail::to($data["email"])->send(new SendMailable($name));
        if ($result) {
            return json_encode(array("status"=>200, "data"=>$id));
        }else {
            return json_encode(array("status"=>400, "data"=>$id)); 
        }
    }
    public static function verify_data($id, $data){
        $result = DB::table('ppdb')
            ->where('id', $id)
            ->update($data);
        if ($result) {
            return redirect('/');
            // return json_encode(array("status"=>200, "data"=>$id));
        }else {
            return redirect('/');
            // return json_encode(array("status"=>400, "data"=>$id)); 
        }
    }
    public static function ambilData(){ 
        $data = DB::table('ppdb')->get();
        if ($data) {
            return json_encode(array("status"=>200,"data"=>$data));
        }else{
            return json_encode(array("status"=>400,"data"=>$data));
        }
    }
}
