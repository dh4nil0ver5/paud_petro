$("#s").on("click", function(){
    window.location.href = "ppdb";
});
$("#btnSavePribadi").on("click", function () {
    $("#pesan_2").hide();
    $("#page_1").removeAttr("hidden");
    imunisasi_lanjutan = $("#imunisasi_lanjutan").val();
    if (imunisasi_lanjutan == "") {
        swal.fire('Jangan ada data kosong !'+imunisasi_lanjutan);
    } else {
        $("#pesan2").hide();
        $("#page_2").removeAttr("style");
    }
});
$("#saveWali").on("click", function () {
    notelp_kantoribu = $("#notelp_kantoribu").val();
    if (notelp_kantoribu == "") {
        swal.fire('Jangan ada data kosong !' + notelp_kantoribu);
    } else {
        $("#pesan3").hide();
        $("#page_3").removeAttr("style");
    }
});
$("#saveKeterangan").on("click", function () {
    bakatminat = $("#bakatminat").val();
    if (bakatminat == "") {
        swal.fire('Jangan ada data kosong !' + bakatminat);
    } else {
        $("#pesan4").hide();
        $("#page_4").removeAttr("style");
    }
});

$('#tgl_lahir_ayah').datepicker({
    weekStart: 1,
    daysOfWeekHighlighted: "6,0",
    autoclose: true,
    todayHighlight: true,
});
$('#tgl_lahir_ayah').datepicker("setDate", new Date());
$('#tgl_lahir_ibu').datepicker({
    weekStart: 1,
    daysOfWeekHighlighted: "6,0",
    autoclose: true,
    todayHighlight: true,
});
$('#tgl_lahir_ibu').datepicker("setDate", new Date());
$("#btnSaveInstansi").on("click", function () {
    var t = $("#list_tk > option:selected").val();
    if (t == "kosong" ) {
        swal.fire('Jangan ada data kosong !');
    } else {
        $("#pesan").hide();
        $.ajax({
            url: "save_instansi",
            method: "post",
            data: { instansi: t},
            type: "json",
            success: function (json) {
                if ($.parseJSON(json).status == 200) {
                    $("#data_id").text($.parseJSON(json).data);
                    $("#li_instansi").removeClass("active");
                    $("#data_sekolah").removeClass("active").removeClass("in");
                    $("#li_daprid").addClass("active");
                    $("#data_pribadi").addClass("active").addClass("in");
                    $("#page_1").removeAttr("hidden");
            		$("#pesan_1").attr("hidden","");
                    swal.fire('berhasil !');
                } else {
                    alert('data gagal !');
                }
            }
        });
    }
});
$("#btnSavePribadi").on("click", function () {
    data_id = $("#data_id").text();
    nama_lengkap = $("#nama_lengkap").val();
    nama_panggilan = $("#nama_panggilan").val();
    g = $("#gender").find("option:selected").val();
    gender = (g=1? "Laki-laki":(g=2?"perempuan":"diabaikan"));
    no_kk = $("#no_kk").val();
    nik = $("#nik").val();
    tanggal_lahir = $("#tanggal_lahir").val();
    kota_kelahiran = $("#kota_kelahiran").val();
    alamat_rumah = $("#alamat_rumah").val();
    propinsi = $("#propinsi").find("option:selected").val();
    kabupaten = $("#kabupaten").find("option:selected").val();
    kelurahan = $("#kelurahan").find("option:selected").val();
    kecamatan = $("#kecamatan").find("option:selected").val();
    agama = $("#agama").find("option:selected").val();
    kewarganegaraan = $("#kewarganegaraan").val();
    anak_ke = $("#anak_ke").val();
    jumlah_saudara_kandung = $("#jumlah_saudara_kandung").val();
    tiri = $("#tiri").find("option:selected").val();
    angkat = $("#angkat").find("option:selected").val();
    apy = $("#APY").find("option:selected").val();
    bs = $("#bahasa_sehari").val();
    bahasa_sehari = (bs=1?"Bahasa Indonesia":"Bahasa Inggris");
    penyakit_alergi = $("#penyakit_alergi").val();
    gr = $("#goldar").val();
    goldar = (gr = 1 ? "A" : (gr = 2 ? "B" : (gr = 3 ? "AB" : gr = 4 ? "O":"KOSONG")));
    bb = $("#bb").val();
    karakteristik = $("#karakteristik").val();
    imunisasi_dasar = $("#imunisasi_dasar").val();
    imunisasi_lanjutan = $("#imunisasi_lanjutan").val();
    if (imunisasi_lanjutan == "") {
        swal.fire('Jangan ada data kosong !');
    } else {
        $("#page_1").removeAttr("hidden");
        $.ajax({
            url: "save_data_pribadi",
            method: "post",
            data: {
                data_id: data_id,
                nama_lengkap: nama_lengkap,
                nama_panggilan: nama_panggilan,
                gender: gender,
                no_kk: no_kk,
                nik: nik,
                tanggal_lahir: tanggal_lahir,
                kota_kelahiran: kota_kelahiran,
                alamat_rumah: alamat_rumah,
                propinsi: propinsi,
                kabupaten: kabupaten,
                kelurahan: kelurahan,
                kecamatan: kecamatan,
                agama: agama,
                kewarganegaraan: kewarganegaraan,
                anak_ke: anak_ke,
                jumlah_saudara_kandung: jumlah_saudara_kandung,
                tiri: tiri,
                angkat: angkat,
                APY: apy,
                bahasa_sehari: bahasa_sehari,
                penyakit_alergi: penyakit_alergi,
                goldar: gender,
                bb_lahir: bb,
                karakteristik: karakteristik,
                imunisasi_dasar: imunisasi_dasar,
                imunisasi_lanjutan: imunisasi_lanjutan
            },
            type: "json",
            success: function (json) {
                if ($.parseJSON(json).status == 200) {
                	$("#li_daprid").removeClass("active");
    		       	$("#pesan_1").text("DATA SUDAH DIISI").removeAttr("hidden");
	        		$("#pesan_1").removeAttr("hidden");
		           	$("#page_1").attr("hidden","");
    		       	$("#data_pribadi").removeClass("active").removeClass("in");
	    	       	$("#li_dali").addClass("active");
                    $("#data_wali").addClass("active").addClass("in");
                    swal.fire('berhasil !');
                } else {
                    alert('data gagal !');
                }
            }
        });
    }
});

$("#saveWali").on("click", function (){
    data_id = $("#data_id").text();
    nama_ayah = $("#nama_ayah").val();
    hubungan_anak_ayah = $("#hubungan_anak_ayah").find("option:selected").val();
    tgl_lahir_ayah = $("#tgl_lahir_ayah").val();
    agama_ayah = $("#agama_ayah").find("option:selected").val();
    kewarganegaraan_ayah = $("#kewarganegaraan_ayah").val();
    pendidikan_ayah = $("#pendidikan_ayah").find("option:selected").val();
    pekerjaan_ayah = $("#pekerjaan_ayah").val();
    penghasilan_ayah = $("#penghasilan_ayah").val();
    alamat_rumah_ayah = $("#ayah_rumah").val();
    notelp_rumahayah = $("#notelp_ayah").val();
    kantor_ayah = $("#kantor_ayah").val();
    notelp_kantorayah = $("#notelp_kantorayah").val();

    nama_ibu = $("#nama_ibu").val();
    hubungan_anak_ibu = $("#hubungan_anak_ibu").find("option:selected").val();
    tgl_lahir_ibu = $("#tgl_lahir_ibu").val();
    agama_ibu = $("#agama_ibu").find("option:selected").val();
    kewarganegaraan_ibu = $("#kewarganegaraan_ibu").val();
    pendidikan_ibu = $("#pendidikan_ibu").find("option:selected").val();
    pekerjaan_ibu = $("#pekerjaan_ibu").val();
    penghasilan_ibu = $("#penghasilan_ibu").val();
    alamat_rumah_ibu = $("#rumah_ibu").val();
    notelp_rumahibu = $("#notelp_rumahibu").val();
    kantor_ibu = $("#kantor_ibu").val();
    notelp_kantoribu = $("#notelp_kantoribu").val();
    if (notelp_kantoribu == "") {
        swal.fire('Jangan ada data kosong !' + kontak_darurat);
    } else {
        $.ajax({
            url: "save_walimurid",
            method: "post",
            data: {
    		data_id: data_id,
    		nama_ayah: nama_ayah,
    		hubungan_anak_ayah: hubungan_anak_ayah,
    		tgl_lahir_ayah:tgl_lahir_ayah,
    		agama_ayah:agama_ayah,
    		kewarganegaraan_ayah:kewarganegaraan_ayah,
    		pendidikan_ayah:pendidikan_ayah,
    		pekerjaan_ayah:pekerjaan_ayah,
    		penghasilan_ayah:penghasilan_ayah,
    		alamat_rumah_ayah:alamat_rumah,
    		notelp_rumahayah:notelp_rumahayah,
    		kantor_ayah:kantor_ayah,
    		notelp_kantorayah:notelp_kantorayah,

    		nama_ibu: nama_ibu,
    		hubungan_anak_ibu:hubungan_anak_ibu,
    		tgl_lahir_ibu:tgl_lahir_ibu,
    		agama_ibu:agama_ibu,
    		kewarganegaraan_ibu:kewarganegaraan_ibu,
    		pendidikan_ibu:pendidikan_ibu,
    		pekerjaan_ibu:pekerjaan_ibu,
    		penghasilan_ibu:penghasilan_ibu,
    		alamat_rumah_ibu:alamat_rumah_ibu,
    		notelp_rumahibu:notelp_rumahibu,
    		kantor_ibu:kantor_ibu,
    		notelp_kantoribu:notelp_kantoribu
            },
            type: "json",
            success: function (json) {
                if ($.parseJSON(json).status == 200) {
                	$("#li_dali").removeClass("active");
                    $("#pesan_2").text("DATA SUDAH DIISI").removeAttr("hidden");
                    $("#pesan_2").show();
                    $("#page_2").attr("hidden","");
                    $("#data_wali").removeClass("active").removeClass("in");
                    $("#li_keterangan").addClass("active");
    		       	$("#keterangan").addClass("active").addClass("in");
                    swal.fire('berhasil !');
                } else {
                    alert('data gagal !');
                }
            }
        });
    }
});

$("#saveKeterangan").on("click", function (){
    data_id = $("#data_id").text();
    pStayhome = $("input[id=tinggalbersama]");
    stayhome = $("#tinggalbersamaText");
    tStayhome = "";
    if (pStayhome[1].checked) {
        tStayhome = pStayhome[1].value;
        stayhome.val(tStayhome)
    }
    pTrans = $("input[id=inKendaraan]");
    transportasi = $("#inKendaraanText");
    tTrans = "";
    if (pTrans[1].checked) {
        tTrans = pTrans[1].value;
        transportasi.val(tTrans)
    }
    jaraklokasi = $("#jaraklokasi").val();
    bakatminat = $("#bakatminat").val();
    if (notelp_kantoribu == "") {
        swal.fire('Jangan ada data kosong !' + kontak_darurat);
    } else {
        $.ajax({
            url: "save_keterangan",
            method: "post",
            data: {
    		data_id: data_id,
		tinggalbersama: stayhome.val(),
		transportasi: transportasi.val(),
		jaraklokasi: jaraklokasi,
		bakatminat: bakatminat
            },
            type: "json",
            success: function (json) {
                if ($.parseJSON(json).status == 200) {
                	$("#li_keterangan").removeClass("active");
		           	$("#pesan_3").text("DATA SUDAH DIISI").removeAttr("hidden");
	        		$("#pesan_3").show();
    		       	$("#page_3").attr("hidden","");
    		       	$("#keterangan").removeClass("active").removeClass("in");
	    	       	$("#li_kotak").addClass("active");
    		       	$("#kontak_darurat").addClass("active").addClass("in");
                    swal.fire('berhasil !');
                } else {
                    alert('data gagal !');
                }
            }

        });
    }
});
$("#saveKontakDarurat").on("click", function () {
    data_id = $("#data_id").text();
    email = $("#inEmail").val();
    kontak_darurat = $("#inKontak_darurat").val();
    if (kontak_darurat == "") {
        swal.fire('Jangan ada data kosong !' + kontak_darurat);
    } else {
        $("#pesan4").hide();
        $("#page_4").removeAttr("style");
        $.ajax({
            url: "save_kontak",
            method: "post",
            data: {
    		data_id: data_id,
                email: email,
                kontak_darurat: kontak_darurat
            },
            type: "json",
            success:function(json){
                if ($.parseJSON(json).status == 200) {
                    swal.fire('berhasil !');
                    console.log($.parseJSON(json).status);
                } else {
                    console.log($.parseJSON(json).status);
                }
            }
        });
    }
});

$('input[type=radio][id=tinggalbersama]').change(function () {
    array = $('input[type=radio][id=tinggalbersama]');
    if (this.value == 'ortu') {
        for (let index = 0; index < array.length; index++) {
            const element = array[index];
            array.checked = false;
        }
        $("#tinggalbersamaText").attr("style", "display:none");
    }
    else if (this.value == 'lainnya') {
        $("#tinggalbersamaText").removeAttr("style");
    }
});
$('input[type=radio][id=inKendaraan]').change(function () {
    array = $('input[type=radio][id=inKendaraan]');
    if (this.value == 'Kendaraan') {
        for (let index = 0; index < array.length; index++) {
            const element = array[index];
            array.checked = false;
        }
        $("#inKendaraanText").attr("style", "display:none");
    }
    else if (this.value == 'lainnya') {
        $("#inKendaraanText").removeAttr("style");
    }
});
function simanjuntak(){
  $("#logo_spkpg").hide();
  $("#simanjuntakPKPG").removeClass("none");
}
function pongangan(){
  $("#logo_ppkpg").hide();
  $("#ponganganPKPG").removeClass("none").fadeIn();
}
function kembali_spkpg(){
  $("#logo_spkpg").show();
  $("#simanjuntakPKPG").addClass("none");
}
function kembali_ppkpg(){
  $("#logo_ppkpg").show();
  $("#ponganganPKPG").addClass("none");
}
