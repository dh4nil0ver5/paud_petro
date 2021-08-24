<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration; 

class PPDB extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('ppdb', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama_lengkap')->nullable(); 
            $table->string('nama_panggilan')->nullable(); 
            $table->string('jenis_kelamin')->nullable(); 
            $table->string('gender')->nullable(); 
            $table->string('nik')->nullable(); 
            $table->string('no_kk')->nullable(); 
            $table->string('tanggal_lahir')->nullable(); 
            $table->string('kota_kelahiran')->nullable(); 
            $table->string('alamat_rumah')->nullable(); 
            $table->string('kelurahan')->nullable(); 
            $table->string('kecamatan')->nullable(); 
            $table->string('kabupaten')->nullable(); 
            $table->string('propinsi')->nullable(); 
            $table->string('agama')->nullable(); 
            $table->string('kewarganegaraan')->nullable(); 
            $table->string('anak_ke')->nullable(); 
            $table->string('jumlah_saudara_kandung')->nullable();  
            $table->string('tiri')->nullable();  
            $table->string('angkat')->nullable(); 
            $table->string('APY')->nullable(); 
            $table->string('bahasa_sehari')->nullable(); 
            $table->string('peyakit_alergi')->nullable();  
            $table->string('goldar')->nullable(); 
            $table->string('bb')->nullable(); 
            $table->string('karakteristik')->nullable();  
            $table->string('imunisasi_dasar')->nullable(); 
            $table->string('imunisasi_lanjutan')->nullable(); 
            
            $table->string('nama_ayah')->nullable(); 
            $table->string('hubungan_anak_ayah')->nullable(); 
            $table->string('agama_ayah')->nullable(); 
            $table->string('kewarganegaraan_ayah')->nullable(); 
            $table->string('pendidikan_ayah')->nullable(); 
            $table->string('pekerjaan_ayah')->nullable(); 
            $table->string('pengahasilan_ayah')->nullable(); 
            $table->string('ayah_rumah')->nullable(); 
            $table->string('notelp_ayah')->nullable(); 
            $table->string('kantor_ayah')->nullable(); 
            $table->string('notelp_kantorayah')->nullable(); 
            $table->string('nama_ibu')->nullable(); 
            $table->string('hubungan_anak_ibu')->nullable(); 
            $table->string('agama_ibu')->nullable(); 
            $table->string('kewarganegaraan_ibu')->nullable(); 
            $table->string('pendidikan_ibu')->nullable(); 
            $table->string('pekerjaan_ibu')->nullable(); 
            $table->string('penghasilan_ibu')->nullable(); 
            $table->string('rumah_ibu')->nullable(); 
            $table->string('notelp_rumahibu')->nullable(); 
            $table->string('kantor_ibu')->nullable(); 
            $table->string('notelp_kantoribu')->nullable(); 
            
            $table->string('jaraklokasi')->nullable(); 
            $table->string('tinggalbersama')->nullable(); 
            $table->string('inKendaraan')->nullable(); 
            $table->string('bakatminat')->nullable(); 
            
            $table->string('kontak_darurat')->nullable(); 
        }); 
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ppdb');
    }
}
