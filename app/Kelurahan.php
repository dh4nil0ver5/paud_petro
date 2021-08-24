<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Kelurahan extends Model{
    // 
    public static function getKelurahan($id){ 
        $result = DB::table('desa')->where('id_kecamatan', $id)->get();
        if ($result) { 
            return json_encode(array("status"=>200, "data"=>$result));
        }else {
            return json_encode(array("status"=>400, "data"=>$result)); 
        }
    }
}
