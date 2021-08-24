<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Kecamatan extends Model{
    // 
    public static function getKecamatan($id){ 
        $result = DB::table('kecamatan')->where('id_kota', $id)->get();
        if ($result) { 
            return json_encode(array("status"=>200, "data"=>$result));
        }else {
            return json_encode(array("status"=>400, "data"=>$result)); 
        }
    }
}
