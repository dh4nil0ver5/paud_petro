@extends('layouts.cpanel')
@section('content')
    <div class="card" style="margin-top: -5px;">
        <div class="card-header">
            <div style="width: 100%; display: flex; justify-content: space-between;">
              <label>Data Provinsi, Data Kota, Data Kecamatan, Data Kelurahan</label>
              <button type="button" name="button" class="btn btn-flat btn-primary btn-xs" onclick="tambah()"><i class="fa fa-plus"></i></button>
            </div>
        </div>
        <div class="card-body" style="font-size: 12px;">
            <div class="table-responsive" id="provinsi">
              <table id="dt_negara">
                  <thead>
                      <tr>
                          <th>Dinas</th>
                          <th>BPS</th>
                          <th>Nama Provinsi</th>
                          <th>Action</th>
                      </tr>
                  </thead>
                  <tbody></tbody>
              </table>
            </div>
        </div>
    </div>
    <div class="modal fade" id="detail_pilihan">
      <div class="modal-dialog modal-xl modal-lg" style="width: 100%;">
        <div class="modal-content">
          <div class="modal-header">
            <div style="width: 100%; display: flex; justify-content: space-between;">
              <div style="width: 90%;">Detail Kota dan Kecamatan Provinsi [<label id="provinsi_pilihan"></label>]</div>
              <div style="width: 10%; text-align: right;">
                <button type="button" name="button" class="btn btn-flat btn-xs btn-primary" data-dismiss="toggle">&times;</button>
              </div>
            </div>
          </div>
          <div class="modal-body">
            <div style="width: 100%;display: flex; justify-content: space-between;" id="back_data" hidden onclick="hide_kecamatan()">
              <button type="button" name="button" class="btn btn-flat btn-primary btn-xs">back</button>
              <label id="nama_label"></label>
            </div>
            <div class="table-responsive" id="detail_kota">
              <table id="data_kota" style="width: 100%;">
                <thead>
                  <tr>
                    <th>Dinas</th>
                    <th>BPS</th>
                    <th>Nama Kecamatan</th>
                    <th>Jumlah Kecamatan</th>
                  </tr>
                </thead>
              </table>
            </div>
            <div class="table-responsive" id="detail_kecamatan" hidden>
              <table id="data_kecamatan" style="width: 100%;">
                <thead>
                  <tr>
                    <th>Dinas</th>
                    <th>BPS</th>
                    <th>Nama Kecamatan</th>
                    <th>Jumlah Kelurahan</th>
                  </tr>
                </thead>
              </table>
            </div>
            <div class="table-responsive" id="detail_kelurahan" hidden>
              <table id="data_kelurahan">
                <thead>
                  <tr>
                    <th>Dinas</th>
                    <th>BPS</th>
                    <th>Nama Kelurahan</th>
                  </tr>
                </thead>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="tambah">
      <div class="modal-dialog modal-md" style="width: 100%;">
        <div class="modal-content">
          <div class="modal-header">
              <div style="width: 100%; display: flex; justify-content: space-between;">
                <label>Data Provinsi, Data Kota, Data Kecamatan, Data Kelurahan</label>
                <button type="button" name="button" class="btn btn-flat btn-primary btn-xs" data-dismiss="modal" aria-label="Close"><i class="fas fa-times-circle"></i></button>
              </div>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-12">
                <div class="form-group form-inline" style="width: 100%;">
                  <div class="row" style="width: 100%;">
                    <label for="dinas" class="col-md-4" style="text-align: left;">Dinas</label>
                    <input type="text" name="" value="" class="form-control col-md-8" style="width: 100%;"/>
                  </div>
                </div>
              </div>
              <div class="col-md-12">
                <div class="form-group form-inline" style="width: 100%;">
                  <div class="row" style="width: 100%;">
                    <label for="dinas" class="col-md-4" style="text-align: left;">BPS</label>
                    <input type="text" name="" value="" class="form-control col-md-8" style="width: 100%;"/>
                  </div>
                </div>
              </div>
              <div class="col-md-12">
                <div class="form-group form-inline" style="width: 100%;">
                  <div class="row" style="width: 100%;">
                    <label for="dinas" class="col-md-4" style="text-align: left;">Nama Provinsi</label>
                    <input type="text" name="" value="" class="form-control col-md-8" style="width: 100%;"/>
                  </div>
                </div>
              </div>
              <button type="button" name="button" class="btn btn-xs btn-primary col-md-12"><i class="fa fa-save"></i>&nbsp;&nbsp;Simpan</button>
            </div>
          </div>
        </div>
      </div>
    </div>
      <script>
    var result_data="";
    $(document).ready(function(){
      load_provinsi();
      load_kabupaten();
      load_kecamatan();
      load_kelurahan();
    });
    function tambah(){
      $("#tambah").modal({backdrop: 'static', keyboard: false});
    }
    function load_provinsi(){
      $("#dt_negara").DataTable().destroy();
      $("#dt_negara").DataTable({
        processing: true,
        serverSide: false,
        aLengthMenu: [[5, 50, 75, -1], [5, 50, 75, "All"]],
        iDisplayLength: 5,
        bPaginate: true,
        bFilter: false,
        ajax: {
          url: "<?php echo url('get_provinsi'); ?>",
          type: "get",
          dataSrc: function (json) {
            var return_data = new Array();
		        if (parseInt(json['status']) == 200) {
	            $.each(json['data'], function (i, item) {
	                return_data.push({
                    'kode_dinas':item.kode_dinas,
                    'kode_bps':item.kode_bps,
                    'provinsi':item.provinsi,
                    'action':'<button class="btn btn-flat btn-xs btn-primary" id="btn'+i+'" onclick="pilih('+(i+1)+')" '+
                      'nama_provinsi="'+item.provinsi+'"><i class="fa fa-add"></i>&nbsp;pilih</button>',
                  });
                });
            }else{
              return_data;
            }
            return return_data;
          },
        },
        columns: [
          { data: 'kode_dinas'},
          { data: 'kode_bps'},
          { data: 'provinsi'},
          { data: 'action'},
        ]
      });
    }
    function show_kelurahan(param){
      $("#nama_label").text($("#kelurahan"+param).attr("nama_kecamatan"));
      $("#detail_kecamatan").attr("hidden","");
      $("#detail_kelurahan").removeAttr("hidden");
      $("#data_kelurahan").DataTable().destroy();
      $("#data_kelurahan").DataTable({
          processing: true,
          serverSide: false,
          aLengthMenu: [[5, 50, 75, -1], [5, 50, 75, "All"]],
          iDisplayLength: 5,
          bFilter: false,
          bPaginate: true,
          ajax: {
            url: "<?php echo url('get_kelurahan'); ?>/"+param,
            type: "get",
            dataSrc: function (json) {
              var return_data = new Array();
              if (parseInt(json['status']) == 200) {
                $.each(json['data'], function (i, item) {
                  return_data.push({
                    'kode_dinas':item.dinas,
                    'kode_bps':item.bps,
                    'kelurahan':item.nama,
                    'action':'<button class="btn btn-flat btn-xs btn-primary" id="kelurahan'+(i+1)+'" onclick="show_kelurahan('+(i+1)+')">'+
                      '<i class="fa fa-add"></i>&nbsp;pilih</button>',
                });

                });
              }
              return return_data;
            },
          },columns: [
            { data: 'kode_dinas'},
            { data: 'kode_bps'},
            { data: 'kelurahan'}
          ]
      });
    }
    function show_kecamatan(param){
      $("#nama_label").text($("#kota"+param).attr("nama_kota"));
      $("#data_kecamatan").DataTable().destroy();
      $("#data_kecamatan").DataTable({
        processing: true,
        serverSide: false,
        aLengthMenu: [[5, 50, 75, -1], [5, 50, 75, "All"]],
        iDisplayLength: 5,
        bPaginate: true,
        bFilter: false,
        ajax: {
          url: "<?php echo url('get_kecamatan'); ?>/"+param,
          type: "get",
          dataSrc: function (json) {
            var return_data = new Array();
            if (parseInt(json['status']) == 200) {
              $.each(json['data'], function (i, item) {
                return_data.push({
                  'kode_dinas':item.dinas,
                  'kode_bps':item.bps,
                  'kecamatan':item.nama,
                  'action':'<button class="btn btn-flat btn-xs btn-primary" id="kelurahan'+(i+1)+'" onclick="show_kelurahan('+(i+1)+')" '+
                    'nama_kecamatan="'+item.nama+'"><i class="fa fa-add"></i>&nbsp;pilih</button>',
                });
              });
              $("#back_data").removeAttr("hidden");
              $("#detail_kota").attr("hidden","");
              $("#detail_kecamatan").removeAttr("hidden");
            }else{
              return_data;
            }
            return return_data;
          },
        },
        columns: [
          { data: 'kode_dinas'},
          { data: 'kode_bps'},
          { data: 'kecamatan'},
          { data: 'action'},
        ]
      });
    }
    function hide_kecamatan(){
      $("#back_data").attr("hidden","");
      $("#detail_kota").removeAttr("hidden");
      $("#detail_kecamatan").attr("hidden","");
      $("#detail_kelurahan").attr("hidden","");
    }
    function pilih(param){
      $("#provinsi_pilihan").text($("#btn"+(param-1)).attr("nama_provinsi"));
      $("#data_kota").DataTable().destroy();
      $("#data_kota").DataTable({
        processing: true,
        serverSide: false,
        aLengthMenu: [[5, 50, 75, -1], [5, 50, 75, "All"]],
        iDisplayLength: 5,
        bPaginate: true,
        bFilter: false,
        ajax: {
          url: "<?php echo url('get_kabupaten'); ?>/"+param,
          type: "get",
          dataSrc: function (json) {
            var return_data = new Array();
            if (parseInt(json['status']) == 200) {
              $.each(json['data'], function (i, item) {
	                return_data.push({
                    'kode_dinas':item.dinas,
                    'kode_bps':item.bps,
                    'kota':item.nama,
                    'action':'<button class="btn btn-flat btn-xs btn-primary" id="kota'+(i+1)+'" '+
                      'onclick="show_kecamatan('+(i+1)+')" style="width: 100%;"'+
                      'nama_kota="'+item.nama+'">pilih</button>',
                  });
              });
              $("#detail_pilihan").modal("toggle");
            }else{
              return_data;
            }
            return return_data;
          },
        },columns: [
          { data: 'kode_dinas'},
          { data: 'kode_bps'},
          { data: 'kota'},
          { data: 'action'},
        ]
        });
    }
    function load_kabupaten(){
      $("#dt_kota").DataTable().destroy();
      $("#dt_kota").DataTable({
        processing: true,
        serverSide: false,
        aLengthMenu: [[5, 50, 75, -1], [5, 50, 75, "All"]],
        iDisplayLength: 5,
        bPaginate: true,
        bFilter: false,
        ajax: {
          url: "<?php echo url('get_kabupaten/kosong'); ?>",
        },
        columns: [
          { data: 'kode_dinas'},
          { data: 'kode_bps'},
          { data: 'nama'}
        ]
      });
    }
    function load_kecamatan(){ $("#dt_kecamatan").DataTable().destroy(); }
    function load_kelurahan(){ $("#dt_kelurahan").DataTable().destroy(); }
    </script>
@endsection