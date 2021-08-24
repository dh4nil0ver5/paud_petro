<?php

 
Route::get('/', function (){ return Redirect::to('/index.html'); }); 
// Route::get('/home', function(){return Redirect::to('/admin');})->name('home'); 

Route::middleware(['middleware'=>'auth'])->group(function () { 
    Route::get('/home', 'HomeController@index')->name('cpanels'); 
    Route::get('/kategori', 'KategoriController@index')->name('kategori_dashboard');
    Route::get('/kategori/add', 'KategoriController@add')->name('kategori_tambah');
    Route::post('/kategori/add', 'KategoriController@store')->name('kategori_simpan');
    Route::get('/kategori/edit/{id}', 'KategoriController@change')->name('kategori_ubah');
    Route::get('/kategori/hapus/{id}', 'KategoriController@eraser')->name('kategori_ubah');
    Route::post('/kategori/update', 'KategoriController@updates')->name('kategori_perbarui');
});

Auth::routes();

// address untuk data lain
Route::get('/data/ppdb', 'PPDBController@ambilData')->name('data_ppdb'); 
Route::get('/get_provinsi', 'PPDBController@getProvinsi')->name('get_provinsi');
Route::get('/get_kabupaten/{id}', 'PPDBController@getKabupaten')->name('get_kabupaten');
Route::get('/get_kecamatan/{id}', 'PPDBController@getKecamatan')->name('get_kecamatan');
Route::get('/get_kelurahan/{id}', 'PPDBController@getKelurahan')->name('get_kelurahan'); 
Route::get('/export/xlsx','PPDBController@downloadExcel')->name("excel");
Route::get('/verify/{id}', 'PPDBController@verify_data')->name('verify_data');
// Route::get('/verify_data/4', function(){ return "hello"; });

// address ppdb
Route::get('/send/email', 'HomeController@mail');
Route::get('/ppdb', 'PPDBController@index')->name('ppdb'); 
Route::get('/ppdb/dashboard', 'PPDBController@dashboard')->name('ppdb_dashboard');
Route::get('/lain', 'PPDBController@negara')->name('index_data');

// address save data
Route::post('/save_instansi', 'PPDBController@save_ppdb')->name('save');
Route::post('/save_data_pribadi', 'PPDBController@save_datapribadi')->name('save_datapribadi'); 
Route::post('/save_walimurid', 'PPDBController@save_walimurid')->name('save_walimurid'); 
Route::post('/save_keterangan', 'PPDBController@save_keterangan')->name('save_keterangan'); 
Route::post('/save_kontak', 'PPDBController@save_kontak')->name('save_kontak'); 

 