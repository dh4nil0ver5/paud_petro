@extends('layouts.cpanel') 
@section('content')
    <div class="card" style="margin-top: -5px;">
        <div class="card-header">
            <h3 class="card-title">Data Siswa/Siswi Baru</h3>
            <div class="card-tools">
                <a class="btn btn-tool btn-sm" title="export" id="excel" href="{{ route('excel') }}">
                <i class="fas fa-download" ></i>
                </a> 
                <a class="btn btn-tool btn-sm" title="sync" id="btn_sync">
                <i class="fas fa-sync"></i>
                </a> 
            </div>
        </div>
        <div class="card-body" style="font-size: 12px;">
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive" style="width: 100%;">
                        <table id="data_ppdb">
                            <thead>
                                <tr>
                                    <th>Nama</br>Lengkap</th>
                                    <th>Nama</br>Panggilan</th>
                                    <th>Jenis</br>Kelamin</th>
                                    <th>No.KK</th>
                                    <th>NIK</th>
                                    <th>Tanggal Lahir</th>
                                    <th>Kota Tempat Lahir</th>
                                    <th>Alamat Rumah</th>
                                    <th>Lainnya</th> 
                                    <th>Verifikasi</th>
                                </tr>
                            </thead> 
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="data_lainnya">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">Detail data Lainnya [<b><div id="nama_siswa1"></div></b>]</div>
                <div class="modal-body">
                    <div class="row" style="font-size: 10px;">
                        <div class="col-md-12">
                            <div class="table-responsive" style="width: 100%;">
                                <table id="detail_data" class="table">
                                    <thead class="table">
                                        <tr class="table-borderless"> 
                                            <th class="table-bordered">DESA</br>KELURAHAN</th>
                                            <th class="table-bordered">KECAMATAN</th>
                                            <th class="table-bordered">KABUPATEN</th>
                                            <th class="table-bordered">PROPINSI</th>
                                            <th class="table-bordered">AGAMA</th>
                                            <th class="table-bordered">KEWARGANEGARAAN</th>
                                            <th class="table-bordered">ANAKKE</th>
                                            <th class="table-bordered">JUMLAH</br>SAUDARA KANDUNG</th>
                                            <th class="table-bordered">TIRI</th>
                                            <th class="table-bordered">ANGKAT</th>
                                            <th class="table-bordered">APY</th>
                                            <th class="table-bordered">BAHASA</br>KOMUNIKASI</th>
                                            <th class="table-bordered">GOLDAR</th>
                                            <th class="table-bordered">ALERGI</th>
                                            <th class="table-bordered">BB</br>LAHIR</th>
                                            <th class="table-bordered">KARAKTERISTIK</th>
                                            <th class="table-bordered">IMUNISASI</br>DASAR</th>
                                            <th class="table-bordered">IMUNISASI</br>LANJUTAN</th> 
                                        </tr>
                                    </thead> 
                                    <tbody id="data_detail" class="table-borderless"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-flat btn-xs" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="data_ortu">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">Detail data orang tua [<b><div id="nama_siswa2"></div></b>]</div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-5 col-sm-3">
                            <div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                                <a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" 
                                    href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" 
                                    aria-selected="true">Data Ayah</a>
                                <a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" 
                                    href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" 
                                    aria-selected="false">Data Ibu</a>
                            </div>
                        </div>
                        <div class="col-7 col-sm-9">
                            <div class="tab-content" id="vert-tabs-tabContent">
                                <div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                                    <div class="row" style="font-size: 12px;">
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Nama ayah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Nama_ayah" style="width: 70%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Hubungan anak ayah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Hubungan_ayah" style="width: 40%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Agama ayah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Agama_ayah" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Kewarganegaraan ayah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Kewarganegaraan_ayah" style="width: 40%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Pendidikan ayah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Pendidikan_ayah" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Pekerjaan ayah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Pekerjaan_ayah" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Penghasilan ayah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Penghasilan_ayah" style="width: 75%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Alamat rumah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Rumah_ayah" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">No Telp&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="NoTelp_rumah" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Alamat Kantor&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Kantor_ayah" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">No Telp&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="NoTelp_Kantor" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
                                    <div class="row" style="font-size: 12px;">
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Nama ibu&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Nama_ibu" style="width: 70%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Hubungan anak ibu&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Hubungan_ibu" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Agama ibu&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Agama_ibu" style="width: 70%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Kewarganegaraan ibu&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Kewarganegaraan_ibu" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Pendidikan ibu&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Pendidikan_ibu" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6"> 
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Pekerjaan ibu&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Pekerjaan_ibu" style="width: 50%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Penghasilan ibu&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Penghasilan_ibu" style="width: 70%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Alamat rumah&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Rumah_ibu" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">No Telp&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="NoTelp_rumah_ibu" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">Alamat Kantor&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="Kantor_ibu" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group form-inline" style="width: 100%;">
                                                <label for="" style="margin-right: 5%;">No Telp&nbsp;&nbsp;&nbsp;:</label>
                                                <div class="form-control" id="NoTelp_Kantor_ibu" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                                            </div>
                                        </div> 
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-flat btn-xs" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="data_keterangan">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">Detail data Keterangan [<b><div id="nama_siswa3"></div></b>]</div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group form-inline" style="width: 100%;">
                                <label for="" style="margin-right: 5%;">Tinggal bersama &nbsp;&nbsp;&nbsp;:</label>
                                <div class="form-control" id="tinggalbersama" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group form-inline" style="width: 100%;">
                                <label for="" style="margin-right: 5%;">Transportasi &nbsp;&nbsp;&nbsp;:</label>
                                <div class="form-control" id="transportasi" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group form-inline" style="width: 100%;">
                                <label for="" style="margin-right: 5%;">Jarak lokasi &nbsp;&nbsp;&nbsp;:</label>
                                <div class="form-control" id="jaraklokasi" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>

                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group form-inline" style="width: 100%;">
                                <label for="" style="margin-right: 5%;">Bakat dan Minat &nbsp;&nbsp;&nbsp;:</label>
                                <div class="form-control" id="bakatminat" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-flat btn-xs" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="foto_siswa">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">Detail data Foto [<b><div id="nama_siswa4"></div></b>]</div>
                <div class="modal-body">
                    <div class="row">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-flat btn-xs" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="kontak_darurat">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">

                <div class="modal-header">Kontak Darurat [<b><div id="nama_siswa5"></div></b>]</div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group form-inline" style="width: 100%;">
                                <label for="" style="margin-right: 5%;">Email &nbsp;&nbsp;&nbsp;:</label>
                                <div class="form-control" id="email" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group form-inline" style="width: 100%;">
                                <label for="" style="margin-right: 5%;">Kontak darurat &nbsp;&nbsp;&nbsp;:</label>
                                <div class="form-control" id="txt_kontakdarurat" style="width: 60%; border: 0px rgba(255, 255, 255, 0) solid;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-flat btn-xs" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <script>
    $(document).ready(function(){
    load_data();
    });
    $("#btn_sync").on("click",function(){
    	load_data();
    });
    function load_data(){
	    var result_data="";
	    $("#data_ppdb").DataTable().destroy();
	    $("#data_ppdb").DataTable({
		processing: true,
		serverSide: false,
		aLengthMenu: [[5, 50, 75, -1], [5, 50, 75, "All"]],
		iDisplayLength: 5,
		bPaginate: true,
		bFilter: false,
		ajax: {
		    url: "<?php echo url('data/ppdb'); ?>",
		    type: "get",

		    dataSrc: function (json) { 
		        var return_data = new Array();
		        result_data = json;
		        nomer = 0;
		        if (parseInt(json['status']) == 200) {
		            $.each(json['data'], function (i, item) {
		                return_data.push({ 
		                    'NAMA_LENGKAP': item.nama_lengkap, 
		                    'NAMA_PANGGILAN': item.nama_panggilan,
		                    'JENIS_KELAMIN': item.jenis_kelamin, 
		                    'NO_KK': item.no_kk,
		                    'NIK': item.nik,
		                    'TANGGAL_LAHIR':item.tanggal_lahir,
		                    'KOTA_KELAHIRAN': item.kota_kelahiran,
		                    'ALAMAT_RUMAH': item.alamat_rumah,
		                    'LAINNYA':
		                        '<div class="btn-group">'+

		                        '<button class="btn btn-flat btn-xs btn-primary" onclick="lainnya('+i+')" id="a'+i+'" nama_lengkap='+item.nama_lengkap+' title="data lainnya">1</button>'+
		                        '<button class="btn btn-flat btn-xs btn-success" onclick="ortu('+i+')" id="b'+i+'" nama_lengkap='+item.nama_lengkap+' title="data orang tua">2</button>'+
		                        '<button class="btn btn-flat btn-xs btn-info" onclick="keterangan('+i+')" id="c'+i+'" nama_lengkap='+item.nama_lengkap+' title="data keterangan">3</button>'+
		                        //'<button class="btn btn-flat btn-xs btn-warning" onclick="foto('+i+')" id="d'+i+'" nama_lengkap='+item.nama_lengkap+' title="data foto">4</button>'+
		                        '<button class="btn btn-flat btn-xs btn-danger" onclick="kontak_darurat('+i+')" id="e'+i+'" nama_lengkap='+item.nama_lengkap+' title="kontak darurat">5</button>'+
		                        '</div>',
		                    'VERIFIKASI': 
		                        '<input type="radio" class="btn btn-flat btn-xs btn-success" style="width: 100%;" id="xc'+i+'" onclick="pilih('+i+')" ondblclick="pilih(xc'+i+')">' 
		                });
		            }); 
		        } else {

		        }
		        return return_data;
		    },
		},
		columns: [ 

		    { data: 'NAMA_LENGKAP'}, 
		    { data: 'NAMA_PANGGILAN'},
		    { data: 'JENIS_KELAMIN'},   
		    { data: 'NO_KK'},
		    { data: 'NIK'},

		    { data: 'TANGGAL_LAHIR'},
		    { data: 'KOTA_KELAHIRAN'},
		    { data: 'ALAMAT_RUMAH'},
		    { data: 'LAINNYA'}, 
		    { data: 'VERIFIKASI'}, 
		]
	    });
    }
    function lainnya(i) { 
        var ins = i;  
        var namasiswa = $("#a"+i).attr("nama_lengkap");
        $("#nama_siswa1").text(namasiswa); 
        var text_detail = ""; 
            text_detail +="<tr><td>"+result_data.data[ins].kelurahan+"</td>";
            text_detail +="<td>"+result_data.data[ins].kecamatan+"</td>";
            text_detail +="<td>"+result_data.data[ins].kabupaten+"</td>";
            text_detail +="<td>"+result_data.data[ins].propinsi+"</td>";
            text_detail +="<td>"+result_data.data[ins].agama+"</td>";
            text_detail +="<td>"+result_data.data[ins].kewarganegaraan+"</td>";
            text_detail +="<td>"+result_data.data[ins].anak_ke+"</td>";
            text_detail +="<td>"+result_data.data[ins].jumlah_saudara_kandung+"</td>";
            text_detail +="<td>"+result_data.data[ins].tiri+"</td>";
            text_detail +="<td>"+result_data.data[ins].angkat+"</td>";
            text_detail +="<td>"+result_data.data[ins].APY+"</td>";
            text_detail +="<td>"+result_data.data[ins].bahasa_sehari+"</td>";
            text_detail +="<td>"+result_data.data[ins].penyakit_alergi+"</td>";
            text_detail +="<td>"+result_data.data[ins].bb_lahir+"</td>";
            text_detail +="<td>"+result_data.data[ins].goldar+"</td>";
            text_detail +="<td>"+result_data.data[ins].karakteristik+"</td>";
            text_detail +="<td>"+result_data.data[ins].imunisasi_dasar+"</td>";
            text_detail +="<td>"+result_data.data[ins].imunisasi_lanjutan+"</td></tr>"; 
        $("#data_detail").html(text_detail);
        $("#data_lainnya").modal('toggle');
    }
    function ortu(params) {
        var ins = params;  
        var namasiswa = $("#b"+ins).attr("nama_lengkap");
        $("#nama_siswa2").text(namasiswa); 
        $("#Nama_ayah").text(result_data.data[ins].nama_ayah); 
        $("#Hubungan_ayah").text(result_data.data[ins].hubungan_anak_ayah); 
        $("#Agama_ayah").text(result_data.data[ins].agama_ayah);
        $("#Kewarganegaraan_ayah").text(result_data.data[ins].kewarganegaraan_ayah);
        $("#Pendidikan_ayah").text(result_data.data[ins].pendidikan_ayah);
        $("#Pekerjaan_ayah").text(result_data.data[ins].pekerjaan_ayah);
        $("#Penghasilan_ayah").text(result_data.data[ins].penghasilan_ayah);
        $("#Rumah_ayah").text(result_data.data[ins].alamat_rumah_ayah);
        $("#NoTelp_rumah").text(result_data.data[ins].notelp_rumahayah);
        $("#Kantor_ayah").text(result_data.data[ins].kantor_ayah);
        $("#NoTelp_Kantor").text(result_data.data[ins].notelp_kantorayah); 
          
        $("#Nama_ibu").text(result_data.data[ins].nama_ibu);
        $("#Hubungan_ibu").text(result_data.data[ins].hubungan_anak_ibu);
        $("#Agama_ibu").text(result_data.data[ins].agama_ibu);
        $("#Kewarganegaraan_ibu").text(result_data.data[ins].kewarganegaraan_ibu);
        $("#Pendidikan_ibu").text(result_data.data[ins].pendidikan_ibu);
        $("#Pekerjaan_ibu").text(result_data.data[ins].pekerjaan_ibu);
        $("#Penghasilan_ibu").text(result_data.data[ins].penghasilan_ibu);
        $("#Rumah_ibu").text(result_data.data[ins].alamat_rumah_ibu);
        $("#NoTelp_rumah_ibu").text(result_data.data[ins].notelp_rumahibu);
        $("#Kantor_ibu").text(result_data.data[ins].kantor_ibu);
        $("#NoTelp_Kantor_ibu").text(result_data.data[ins].notelp_kantoribu); 

        $("#data_ortu").modal('toggle');
    }
    function keterangan(params) { 
        var ins = params;  
        var namasiswa = $("#b"+ins).attr("nama_lengkap");
        $("#nama_siswa3").text(namasiswa); 
        $("#tinggalbersama").text(result_data.data[ins].tinggalbersama);
        $("#transportasi").text(result_data.data[ins].transportasi);
        $("#jaraklokasi").text(result_data.data[ins].jaraklokasi); 
        $("#bakatminat").text(result_data.data[ins].bakatminat);
        $("#data_keterangan").modal('toggle');
    }
    function foto(params) { 
        var ins = params;  
        var namasiswa = $("#b"+ins).attr("nama_lengkap");
        $("#nama_siswa4").text(namasiswa); 
        $("#foto_siswa").modal('toggle');
    }
    function kontak_darurat(params) { 
        var ins = params;  
        var namasiswa = $("#b"+ins).attr("nama_lengkap");
        $("#nama_siswa5").text(namasiswa); 
        $("#email").text(result_data.data[ins].email);
        $("#txt_kontakdarurat").text(result_data.data[ins].kontak_darurat);
        $("#kontak_darurat").modal('toggle');
    } 
    function unduh(){
    
    }
</script>
@endsection
