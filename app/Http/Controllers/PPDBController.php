<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request; 
use DB;
use App\Exports\UserExport;
use Maatwebsite\Excel\Facades\Excel;
use App\ppdb;
use App\Provinsi;
use App\Kota;
use App\Kecamatan;
use App\Kelurahan;

class PPDBController extends Controller
{
    //
    public function index(){
        $title = "Dashboard";
        $page = "";
        $msg = "";
        $status_msg = false;
        return view('ppdb')->with(compact('title','msg','status_msg','page'));
    }
    // 
    public function save_ppdb(Request $request){
        $data = array("instansi"=>$request->input('instansi')); 
        return $response= ppdb::simpanData($data);  
    }
    //
    public function save_datapribadi(Request $request){
        $id = $request->input('data_id');
        $data = array(
            "nama_lengkap"=>$request->input('nama_lengkap'),
            "nama_panggilan"=>$request->input('nama_panggilan'),
            "jenis_kelamin"=>$request->input('gender'),
            "no_kk"=>$request->input('no_kk'),
            "nik"=>$request->input('nik'),
            "tanggal_lahir"=>$request->input('tanggal_lahir'),
            "kota_kelahiran"=>$request->input('kota_kelahiran'),
            "alamat_rumah"=>$request->input('alamat_rumah'),
            "provinsi"=>$request->input('propinsi'),
            "kabupaten"=>$request->input('kabupaten'),
            "kelurahan"=>$request->input('kelurahan'),
            "kecamatan"=>$request->input('kecamatan'),
            "agama"=>$request->input('agama'),
            "kewarganegaraan"=>$request->input('kewarganegaraan'),
            "anak_ke"=>$request->input('anak_ke'),
            "jumlah_saudara_kandung"=>$request->input('jumlah_saudara_kandung'),
            "tiri"=>$request->input('tiri'),
            "angkat"=>$request->input('angkat'),
            "APY"=>$request->input('APY'),
            "bahasa_sehari"=>$request->input('bahasa_sehari'),
            "penyakit_alergi"=>$request->input('penyakit_alergi'),
            "goldar"=>$request->input('goldar'),
            "bb_lahir"=>$request->input('bb_lahir'),
            "karakteristik"=>$request->input('karakteristik'),
            "imunisasi_dasar"=>$request->input('imunisasi_dasar'),
            "imunisasi_lanjutan"=>$request->input('imunisasi_lanjutan') 
        );
        $response= ppdb::simpanDataPribadi($id, $data); 
        return $response;  
    }
    //
    public function save_walimurid(Request $request){
        $id = $request->input('data_id');
        $data = array(
            "nama_ayah"=>$request->input('nama_ayah'),
            "hubungan_anak_ayah"=>$request->input('hubungan_anak_ayah'),
            "tgl_lahir_ayah"=>$request->input('tgl_lahir_ayah'),
            "agama_ayah"=>$request->input('agama_ayah'),
            "kewarganegaraan_ayah"=>$request->input('kewarganegaraan_ayah'),
            "pendidikan_ayah"=>$request->input('pendidikan_ayah'),
            "pekerjaan_ayah"=>$request->input('pekerjaan_ayah'),
            "penghasilan_ayah"=>$request->input('penghasilan_ayah'),
            "alamat_rumah_ayah"=>$request->input('alamat_rumah_ayah'),
            "notelp_rumahayah"=>$request->input('notelp_rumahayah'),
            "kantor_ayah"=>$request->input('kantor_ayah'),
            "notelp_kantorayah"=>$request->input('notelp_kantorayah'),
    		
            "nama_ibu"=>$request->input('nama_ibu'),
            "hubungan_anak_ibu"=>$request->input('hubungan_anak_ibu'),
            "tgl_lahir_ibu"=>$request->input('tgl_lahir_ibu'),
            "agama_ibu"=>$request->input('agama_ibu'),
            "kewarganegaraan_ibu"=>$request->input('kewarganegaraan_ibu'),
            "pendidikan_ibu"=>$request->input('pendidikan_ibu'),
            "pekerjaan_ibu"=>$request->input('pekerjaan_ibu'),
            "penghasilan_ibu"=>$request->input('penghasilan_ibu'),
            "alamat_rumah_ibu"=>$request->input('alamat_rumah_ibu'),
            "notelp_rumahibu"=>$request->input('notelp_rumahibu'),
            "kantor_ibu"=>$request->input('kantor_ibu'),
            "notelp_kantoribu"=>$request->input('notelp_kantoribu'),
        );
        $response= ppdb::simpanDataWalimurid($id, $data); 
        return $response;  
    }
    //
    public function save_keterangan(Request $request){
        $id = $request->input('data_id');
        $data = array( 
            "tinggalbersama"=>$request->input('tinggalbersama'),
            "transportasi"=>$request->input('transportasi'),
            "jaraklokasi"=>$request->input('jaraklokasi'),
            "bakatminat"=>$request->input('bakatminat'),
        );
        $response= ppdb::save_keterangan($id, $data); 
        return $response;  
    }
    //
    public function save_kontak(Request $request){
        $id = $request->input('data_id');
        $data = array( 
            "email"=>$request->input('email'),
            "kontak_darurat"=>$request->input('kontak_darurat') 
        );
        $response= ppdb::save_kontak($id, $data); 
        return $response;  
    }
    //
    public function verify_data($id){
        $data = array("status"=>1);
        $response= ppdb::verify_data($id, $data); 
        return $response;  
    }
    // 
    public function downloadExcel()
    {
        $data = DB::table('ppdb')->get()->toArray(); 
        return Excel::download(new UserExport, 'pendaftaran.xlsx');  
    }
    // 
    public function dashboard(){ 
        $title = "Dashboard";
        $page = "";
        $msg = "";
        $status_msg = false;
        $response= ppdb::ambilData(); 
        if($response){
            return view('ppdb_dashboard')->with(compact('title','msg','status_msg','page'));
        }else{
            return view('ppdb_dashboard')->with(compact('title','msg','status_msg','page')); 
        } 
    } 
    //
    public function ambilData(){ 
        return ppdb::ambilData(); 
    }
    //
    public function getProvinsi(){
        return Provinsi::getProvinsi();
    }
    //
    public function getKabupaten($id){
    	if($id == "kosong"){
        	return json_encode(array("status"=>400,"data"=>false));
    	}else{
        	return Kota::getKabupaten($id);
    	}
    }
    //
    public function getKecamatan($id){
    	if($id == "kosong"){
        	return json_encode(array("status"=>400,"data"=>false));
    	}else{
        	return Kecamatan::getKecamatan($id);
        }
    }
    //
    public function getKelurahan($id){
    	if($id == "kosong"){
        	return json_encode(array("status"=>400,"data"=>false));
    	}else{
        	return Kelurahan::getKelurahan($id);
        }
    }
    //
    public function negara(){
        return view('negara');
    }
}
