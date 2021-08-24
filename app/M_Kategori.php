<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class M_Kategori extends Model
{
    // 
    protected $table = "kategori"; 
    protected $fillable = ['name', 'user_id', 'create_at']; 

    public static function get_data(){
        $msg = "";
        $data = DB::table('kategori as k')
            ->select("k.name as nama_kategori","u.name as nama_users","k.created_at as created_at","k.id as id")
            ->join('users as u',"u.id","=","k.user_id")
            ->get();
        if(!$data){ 
            return $data;
        }else{ 
            return $data;
        }
    }

    public static function insert($data){
        $msg = "";
        $data = DB::table('kategori')->insert($data);
        if(!$data){ 
            return $data;
        }else{ 
            return $data;
        }
    }

    public static function whereId($id){ 
        $data = DB::table('kategori as k')
            ->select("k.name as nama_kategori","k.user_id as user_id","u.name as nama_users","k.created_at as created_at","k.id as id")
            ->join('users as u',"u.id","=","k.user_id")
            ->where("k.id","=",$id)
            ->get();
        if(!$data){ 
            return $data;
        }else{ 
            return $data;
        }
    }

    public static function updates($id, $data){
        $msg = "";
        $data = DB::table('kategori')->where(['id'=>$id])->update($data);
        if(!$data){ 
            return $data;
        }else{ 
            return $data;
        }
    }

    public static function hapus($id){
        $msg = "";
        $data = DB::table('kategori')->where(['id'=>$id])->delete();
        if(!$data){ 
            return $data;
        }else{ 
            return $data;
        }
    }
}
