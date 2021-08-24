<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Kota extends Model{
    // 
    public static function getKabupaten($id){ 
        $result = DB::table('kabupaten_kota')->where('id_provinsi', $id)->get();
        if ($result) { 
            return json_encode(array("status"=>200, "data"=>$result));
        }else {
            return json_encode(array("status"=>400, "data"=>$result)); 
        }
    }
}
