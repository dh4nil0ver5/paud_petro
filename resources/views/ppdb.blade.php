@extends('layouts.ppdb')

@section('content')
    <div class="container" style="width: 80%;"> 
        <ul class="nav nav-tabs">
            <li class="active" id="li_instansi"><a data-toggle="tab" href="#data_sekolah">INSTANSI</a></li>
            <li id="li_daprid"><a data-toggle="tab" href="#data_pribadi">DATA PRIBADI</a></li>
            <li id="li_dali"><a data-toggle="tab" href="#data_wali" >DATA ORANG TUA/WALI</a></li>
            <li id="li_keterangan"><a data-toggle="tab" href="#keterangan" >KETERANGAN</a></li>
            <li id="li_kotak"><a data-toggle="tab" href="#kontak_darurat" >KONTAK DARURAT</a></li>
        </ul>
        <div class="tab-content">
            <div id="data_sekolah" class="tab-pane fade in active">
                <div id="page_0"> 
                    <div id="data_id" hidden></div>
	        <div id="pesan" style="width: 100%; text-align: center; margin-top: 10%;" hidden>
	            MOHON LENGKAPI FORM SEBELUMNYA
	        </div>
                    <div class="col-md-12" style="margin: 1% 1% 1% 1%;">
                        <div class="form-group form-inline row">
                            <label for="" class="col-md-3">Nama</label>
                            <div class="col-md-9"> 
                                <select class="form-control" style="width: 100%;" id="list_tk">
                                    <option value="kosong">--Pilih--</option>
                                    <option value="TK Simanjuntak">TK Simanjuntak</option>
                                    <option value="KB Simanjuntak">KB Simanjuntak</option>
                                    <option value="TPA Simanjuntak">Tempat Penitipan Anak Simanjuntak</option>
                                    <option value="kosong">------------</option>
                                    <option value="TK Pongangan">TK Pongangan</option>
                                    <option value="KB Pongangan">KB Pongangan</option>
                                    <option value="TPA Pongangan">Tempat Penitipan Anak Pongangan</option>
                                </select>
                            </div>
                        </div> 
                    </div>
                    <button class="col-md-12 btn btn-flat btn-xs btn-primary" id="btnSaveInstansi">
                        <i class="fa fa-save"></i>Simpan
                    </button>
                </div> 
            </div>
            <div id="data_pribadi" class="tab-pane fade" >
                <div id="pesan_1" style="width: 100%; text-align: center; margin-top: 10%;">
                    MOHON LENGKAPI FORM SEBELUMNYA
                </div>
                <div id="page_1" hidden> 
                    <div class="row" style="margin: 1% 1% 1% 1%;">  
                        <div class="col-md-12">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-3">Nama Lengkap</label>
                                <div class="col-md-9">
                                    <input type="text" name="" class="form-control" 
                                    style="width: 100%" id="nama_lengkap"/> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-6">Nama Panggilan</label>
                                <div class="col-md-6">
                                    <input type="text" name="" id="nama_panggilan"class="form-control" style="width: 100%"/> 
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-xs-12 col-md-4">Jenis Kelamin</label>
                                <div class="col-xs-12 col-md-8">
                                    <select name="" id="gender" class="form-control" style="width: 100%;">
                                        <option value="-">--Pilih--</option>
                                        <option value="1">Laki-Laki</option> 
                                        <option value="2">Perempuan</option> 
                                    </select>  
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-6"> 
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">No. KK</label>
                                <div class="col-md-8">
                                    <input type="text" name="" id="no_kk" class="form-control" style="width: 100%"/> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-2">NIK</label>
                                <div class="col-md-10">
                                    <input type="text" name="" id="nik" class="form-control" style="width: 100%"/> 
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-6"> 
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-5" >Tanggal Lahir</label>
                                <div class="col-md-7">
                                    <input type="date" name="" id="tanggal_lahir" class="form-control" style="width: 100%" />
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-5" >Kota Tempat Lahir</label>
                                <div class="col-md-7">
                                    <input type="text" name="" id="kota_kelahiran" class="form-control" style="width: 100%;" />
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-12">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-2">Alamat Rumah</label>
                                <div class="col-md-10">
                                    <textarea name="" id="alamat_rumah" class="form-control" style="width: 100%"></textarea>
                                </div> 
                            </div>
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-3">Provinsi</label>
                                <div class="col-md-9">
                                    <select name="" id="provinsi" class="form-control" style="width: 100%;"></select>
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-6">Kabupaten/Kotamadya</label>
                                <div class="col-md-6">
                                    <select name="" id="kabupaten" class="form-control" style="width: 100%;"></select> 
                                </div> 
                            </div>
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">Kecamatan</label>
                                <div class="col-md-8">
                                    <select name="" id="kecamatan" class="form-control" style="width: 100%;"></select>  
                                </div> 
                            </div>
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-3">Desa/Kelurahan</label>
                                <div class="col-md-9">
                                    <select name="" id="kelurahan" class="form-control" style="width: 100%;"></select>   
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-3">Agama</label>
                                <div class="col-md-9"> 
                                    <select name="" id="agama" class="form-control" style="width: 100%;">
                                    	<option value="tidak ada">--Pilih--</option>
                                    	<option value="Islam">Islam</option>
                                    	<option value="Kristen">Kristen</option>
                                    	<option value="Hindu">Hindu</option>
                                    	<option value="Katolik">Katolik</option>
                                    </select>   
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-5">Kewarnegaraan</label>
                                <div class="col-md-7">
                                    <input type="text" name="" id="kewarganegaraan" class="form-control" style="width: 100%;" />
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">Anak Ke -</label>
                                <div class="col-md-8">
                                    <input type="number" name="" id="anak_ke" class="form-control" style="width: 100%;" />
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-6">Jumlah Saudara Kandung</label>
                                <div class="col-md-6">
                                    <input type="number" name="" id="jumlah_saudara_kandung" class="form-control" style="width: 100%;" />
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-2">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-3">Tiri</label>
                                <div class="col-md-9">
                                    <select name="" id="tiri" class="form-control" style="width: 100%;">
                                    	<option value="tidak ada">--Pilih--</option>
                                    	<option value="ya">ya</option>
                                    	<option value="tidak">tidak</option> 
                                    </select> 
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">Angkat</label>
                                <div class="col-md-8"> 
                                    <select name="" id="angkat" class="form-control" style="width: 100%;">
                                    	<option value="tidak ada">--Pilih--</option>
                                    	<option value="ya">ya</option>
                                    	<option value="tidak">tidak</option> 
                                    </select> 
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">Anak Yatim/Piatu/Yatim Piatu</label>
                                <div class="col-md-8"> 
                                    <select name="" id="APY" class="form-control" style="width: 100%;">
                                    	<option value="tidak ada">--Pilih--</option>
                                    	<option value="yatim">Anak Yatim</option>
                                    	<option value="piatu">Anak Piatu</option>
                                    	<option value="yatim piatu">Yatim Piatu</option>
                                    	<option value="kosong">Tidak ketiganya</option>
                                    </select> 
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">Bahasa sehari-hari</label>
                                <div class="col-md-8"> 
                                    <select class="form-control" style="width: 100%;" id="bahasa_sehari">
                                    <option value="0">---Pilih---</option>
                                    <option value="1">Bahasa Indonesia</option>
                                    <option value="2">Bahasa Inggris</option>
                                    </select>
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-12">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">Penyakit yang pernah di derita/Alergi</label>
                                <div class="col-md-8" > 
                                    <textarea class="form-control" style="width: 100%;" id="penyakit_alergi"></textarea>
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-6">Golongan darah</label>
                                <div class="col-md-6" > 
                                    <select class="form-control" style="width: 100%;" id="goldar">
                                        <option value="0">---Pilih---</option>
                                        <option value="1">A</option>
                                        <option value="2">B</option>
                                        <option value="3">AB</option>
                                        <option value="4">O</option>
                                    </select>
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-5">Berat Badan Saat Lahir</label>
                                <div class="col-md-7" > 
                                    <input class="form-control" style="width: 100%;" type="text" id="bb" type="number"/>
                                </div>
                            </div>  
                        </div> 
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Ciri-ciri khusus</label>
                                <textarea class="form-control" style="width: 100%;" id="karakteristik"></textarea> 
                            </div>  
                        </div> 
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Imunisasi dasar</label>
                                <textarea class="form-control" style="width: 100%;" id="imunisasi_dasar"></textarea> 
                            </div>  
                        </div> 
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Imunisasi lanjutan</label>
                                <textarea class="form-control" style="width: 100%;" id="imunisasi_lanjutan"></textarea> 
                            </div>  
                        </div> 
                        <button class="col-md-12 btn btn-flat btn-xs btn-primary" id="btnSavePribadi"> 
                            <i class="fa fa-save"></i>Simpan
                        </button> 
                    </div>
                </div> 
            </div>
            <div id="data_wali" class="tab-pane fade" >
                <div id="pesan_2" style="width: 100%; text-align: center; margin-top: 10%;">
                    MOHON LENGKAPI FORM SEBELUMNYA
                </div>
                <div id="page_2" style="display: none;"> 
                    <div class="row" style="margin: 1% 1% 1% 1%;">
                        <div class="col-md-12" hidden></div>
                        <div class="col-md-12" hidden></div>
                        <div class="col-md-12">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-3 col-lg-12">Nama Ayah</label>
                                <div class="col-md-12 col-md-9 col-lg-12">
                                    <input type="text" name="" id="nama_ayah" class="form-control" style="width: 100%"/> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-8">Hubungan dengan anak </label>
                                <div class="col-md-4">
                                    <select name="hubungan_anak" id="hubungan_anak_ayah" class="form-control">
                                        <option value="">---Pilih---</option>
                                        <option value="Kandung" >Kandung</optio> 
                                        <option value="Tiri" >Tiri</optio>
                                        <option value="Angkat" >Angkat</optio>
                                        <option value="Wali" >Wali</optio>
                                    </select>
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-3">Taggal lahir</label>
                                <div class="col-md-9"> 
                                    <div class="input-group date" data-provide="datepicker">
                                        <input type="text" class="form-control"  id="tgl_lahir_ayah" />
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-th"></span>
                                        </div>
                                    </div>  
                                    <!-- <input type="date" class="form-control" id="tgl_lahir_ayah" style="width: 100%;"/> -->
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-3 col-lg-12">Agama</label>
                                <div class="col-md-12 col-md-9 col-lg-12"> 
                                    <select name="" id="agama_ayah" class="form-control" style="width: 100%;">
                                    	<option value="tidak ada">--Pilih--</option>
                                    	<option value="Islam">Islam</option>
                                    	<option value="Kristen">Kristen</option>
                                    	<option value="Hindu">Hindu</option>
                                    	<option value="Katolik">Katolik</option>
                                    </select>   
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">Kewarganegaraan</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <input type="text" name="" id="kewarganegaraan_ayah" class="form-control" style="width: 100%;" /> 
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-3">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-6 col-lg-12">Pendidikan</label>
                                <div class="col-md-12 col-md-6 col-lg-12"> 
                                    <select name="hubungan_anak" id="pendidikan_ayah" class="form-control">
                                        <option value="">---Pilih---</option>
                                        <option value="tidak ada" >Tidak ada</optio> 
                                        <option value="SD" >SD</optio>
                                        <option value="Angkat" >SMP</optio>
                                        <option value="SMP" >SMA</optio>
                                        <option value="S1" >S1</optio>
                                        <option value="S2" >S2</optio>
                                        <option value="S3" >S3</optio>
                                    </select>
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">Pekerjaan</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <input type="text" name="" id="pekerjaan_ayah" class="form-control" style="width: 100%;" /> 
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-5">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-5 col-lg-12">Penghasilan/Bln</label>
                                <div class="col-md-12 col-md-7 col-lg-12">
                                    <input type="number" name="" id="penghasilan_ayah" class="form-control" style="width: 100%;" />  
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-8">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">Alamat Rumah</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <textarea type="text" name="" id="ayah_rumah" class="form-control" style="width: 100%"></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">No Telp</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <textarea type="text" name="" id="notelp_ayah" class="form-control" style="width: 100%"></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-8">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">Alamat Kantor</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <textarea type="text" name="" id="kantor_ayah" class="form-control" style="width: 100%"></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">No Telp</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <textarea type="text" name="" id="notelp_kantorayah" class="form-control" style="width: 100%"></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-12">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-3 col-lg-12">Nama Ibu</label>
                                <div class="col-md-12 col-md-9 col-lg-12">
                                    <input type="text" name="" id="nama_ibu" class="form-control" style="width: 100%"/> 
                                </div>
                            </div> 
                        </div>  
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-6">Hubungan dengan anak </label>
                                <div class="col-md-6">
                                    <select name="hubungan_anak" id="hubungan_anak_ibu" class="form-control">
                                        <option value="">---Pilih---</option>
                                        <option value="Kandung" >Kandung</optio> 
                                        <option value="Tiri" >Tiri</optio>
                                        <option value="Angkat" >Angkat</optio>
                                        <option value="Wali" >Wali</optio>
                                    </select>
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-3">Taggal lahir</label>
                                <div class="col-md-9"> 
                                    <div class="input-group date" data-provide="datepicker">
                                        <input type="text" class="form-control"  id="tgl_lahir_ibu" />
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-th"></span>
                                        </div>
                                    </div> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-3 col-lg-12">Agama</label>
                                <div class="col-md-12 col-md-9 col-lg-12"> 
                                    <select name="" id="agama_ibu" class="form-control" style="width: 100%;">
                                    	<option value="tidak ada">--Pilih--</option>
                                    	<option value="Islam">Islam</option>
                                    	<option value="Kristen">Kristen</option>
                                    	<option value="Hindu">Hindu</option>
                                    	<option value="Katolik">Katolik</option>
                                    </select>   
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">Kewarganegaraan</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <input type="text" name="" id="kewarganegaraan_ibu" class="form-control" style="width: 100%;" /> 
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-3">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-6 col-lg-12">Pendidikan</label>
                                <div class="col-md-12 col-md-6 col-lg-12"> 
                                    <select name="hubungan_anak" id="pendidikan_ibu" class="form-control">
                                        <option value="">---Pilih---</option>
                                        <option value="Kandung" >Tidak ada</optio> 
                                        <option value="Tiri" >SD</optio>
                                        <option value="Angkat" >SMP</optio>
                                        <option value="Wali" >SMA</optio>
                                        <option value="Wali" >S1</optio>
                                        <option value="Wali" >S2</optio>
                                        <option value="Wali" >S3</optio>
                                    </select>
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">Pekerjaan</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <input type="text" name="" id="pekerjaan_ibu" class="form-control" style="width: 100%;" /> 
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-5">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-5 col-lg-12">Penghasilan/Bln</label>
                                <div class="col-md-12 col-md-7 col-lg-12">
                                    <input type="number" name="" id="penghasilan_ibu" class="form-control" style="width: 100%;" /> 
                                </div>
                            </div> 
                        </div>
                        <div class="col-md-8">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-12 col-md-4 col-lg-12">Alamat Rumah</label>
                                <div class="col-md-12 col-md-8 col-lg-12">
                                    <textarea type="text" name="" id="rumah_ibu" class="form-control" style="width: 100%"></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-4">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">No Telp</label>
                                <div class="col-md-8">
                                    <textarea type="text" name="" id="notelp_rumahibu" class="form-control" style="width: 100%"></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-3">Alamat Kantor</label>
                                <div class="col-md-9">
                                    <textarea type="text" name="" id="kantor_ibu" class="form-control" style="width: 100%"></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group form-inline row">
                                <label for="" class="col-md-4">No Telp</label>
                                <div class="col-md-8">
                                    <textarea type="text" name="" id="notelp_kantoribu" class="form-control" style="width: 100%"></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <button class="col-md-12 btn btn-flat btn-xs btn-primary" id="saveWali">
                            <i class="fa fa-save"></i>Simpan
                        </button>  
                    </div>
                </div> 
            </div>
            <div id="keterangan" class="tab-pane fade" >
                <div id="pesan3" style="width: 100%; text-align: center; margin-top: 10%;">
                    MOHON LENGKAPI FORM SEBELUMNYA
                </div>
                <div id="page_3" style="display: none;"> 
                    <div class="col-md-12" style="margin: 1% 1% 1% 1%;">
                        <div class="form-group form-inline row">
                            <label for="" class="col-md-3">Anak tinggal bersama</label>
                            <div class="col-md-9">
                                <input type="radio" name="tinggalbersama" id="tinggalbersama" value="ortu" />Orang tua 
                                <input type="radio" name="tinggalbersama" id="tinggalbersama" value="lainnya" />Lainnya 
                                <input type="text" class="form-control" style="display: none;" id="tinggalbersamaText"/>
                            </div>
                        </div> 
                    </div> 
                    <div class="col-md-6">
                        <div class="form-group form-inline row">
                            <label for="" class="col-md-4">Sarana Transportasi</label>
                            <div class="col-md-8">
                                <input type="radio" name="inKendaraan" id="inKendaraan" value="Kendaraan"/>Kendaraan
                                <input type="radio" name="inKendaraan" id="inKendaraan" value="lainnya"/>Lainnya 
                                <input type="text" class="form-control" style="display: none;" id="inKendaraanText"/>
                            </div>
                        </div> 
                    </div>  
                    <div class="col-md-6">
                        <div class="form-group form-inline row">
                            <label for="" class="col-md-4">jarak tempat tinggal ke sekolah</label>
                            <div class="col-md-8"> 
                                <input type="text" class="form-control" style="width: 100%;" id="jaraklokasi"/>
                            </div>
                        </div> 
                    </div>  
                    <div class="col-md-12">
                        <div class="form-group form-inline row">
                            <label for="" class="col-md-4">Bakat/Minat yang menonjol</label>
                            <div class="col-md-8">
                                <textarea type="text" name="" id="bakatminat" class="form-control" placeholder="" style="width: 100%;"></textarea>
                            </div>
                        </div> 
                    </div> 
                    <button class="col-md-12 btn btn-flat btn-xs btn-primary" id="saveKeterangan">
                        <i class="fa fa-save"></i>Simpan
                    </button> 
                </div> 
            </div>
            <div id="kontak_darurat" class="tab-pane fade" >
                <div id="pesan4" style="width: 100%; text-align: center; margin-top: 10%;">
                    MOHON LENGKAPI FORM SEBELUMNYA
                </div>
                <div id="page_4" style="display: none;">  
                    <div class="col-md-12" style="margin: 1% 1% 1% 1%;">
                        <div class="form-group form-inline row">
                            <label for="" class="col-md-3">Email</label>
                            <div class="col-md-9"> 
                                <input type="text" class="form-control" id="inEmail" style="width: 100%;" />
                            </div>
                        </div> 
                    </div> 
                    <div class="col-md-12" style="margin: 1% 1% 1% 1%;">
                        <div class="form-group form-inline row">
                            <label for="" class="col-md-3">Nomer Telp</label>
                            <div class="col-md-9"> 
                                <textarea class="form-control" id="inKontak_darurat" style="width: 100%;"></textarea>
                            </div>
                        </div> 
                    </div> 
                    <button class="col-md-12 btn btn-flat btn-xs btn-primary" id="saveKontakDarurat">
                        <i class="fa fa-save"></i>Simpan</button> 
                </div> 
            </div> 
        </div>
        <button id="btnSave">
            <i class="fa fa-save"></i>
        </button>
    </div>
    
    <div id="dialog" title="Simpan" class="none">
      <div class="progress-label">Disimpan..</div>
      <div id="progressbar"></div>
    </div>
    <style>
        #progressbar {
    margin-top: 20px;
  }
 
  .progress-label {
    font-weight: bold;
    text-shadow: 1px 1px 0 #fff;
  }
 
  .ui-dialog-titlebar-close {
    display: none;
  }
    </style>
    <script>
        $(function() {
    var progressTimer,
      progressbar = $( "#progressbar" ),
      progressLabel = $( ".progress-label" ),
      dialogButtons = [{
        text: "Cancel Download",
        click: closeDownload
      }],
      dialog = $( "#dialog" ).dialog({
        autoOpen: false,
        closeOnEscape: false,
        resizable: false,
        buttons: dialogButtons,
        open: function() {
          progressTimer = setTimeout( progress, 2000 );
        },
        beforeClose: function() {
          downloadButton.button( "option", {
            disabled: false,
            label: "Start Download"
          });
        }
      }),
      downloadButton = $( "#downloadButton" )
        .button()
        .on( "click", function() {
          $( this ).button( "option", {
            disabled: true,
            label: "Downloading..."
          });
          dialog.dialog( "open" );
        });
 
    progressbar.progressbar({
      value: false,
      change: function() {
        progressLabel.text( "Current Progress: " + progressbar.progressbar( "value" ) + "%" );
      },
      complete: function() {
        progressLabel.text( "Complete!" );
        dialog.dialog( "option", "buttons", [{
          text: "Close",
          click: closeDownload
        }]);
        $(".ui-dialog button").last().focus();
      }
    });
 
    function progress() {
      var val = progressbar.progressbar( "value" ) || 0;
 
      progressbar.progressbar( "value", val + Math.floor( Math.random() * 3 ) );
 
      if ( val <= 99 ) {
        progressTimer = setTimeout( progress, 50 );
      }
    }
 
    function closeDownload() {
      clearTimeout( progressTimer );
      dialog
        .dialog( "option", "buttons", dialogButtons )
        .dialog( "close" );
      progressbar.progressbar( "value", false );
      progressLabel
        .text( "Starting download..." );
      downloadButton.focus();
    }
  });
  
    </script>
@endsection
