<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Provinsi extends Model{

    protected $fillable = [
        'nama_lengkap', 'nama_panggilan', 'jenis_kelamin',
    ]; 

    public static function getProvinsi(){ 
        $result = DB::table('wilayah')->get();
        if ($result) { 
            return json_encode(array("status"=>200, "data"=>$result));
        }else {
            return json_encode(array("status"=>400, "data"=>$result)); 
        }
    } 
}
