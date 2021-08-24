		<table class='table table-bordered'>
			<thead border="1">
				<tr>
					<th 
						style="font-family: 'Calibri' sans-serif; font-weight: bold; font-size: 18px; height: 30px;">
						Daftar Peserta Didik</th>
				</tr>
				<tr>
					<th 
						style="font-family: 'Calibri'; font-weight: bold; 
						">TK Persatuan Istri Karyawan Petrokimia Gresik</th>
				</tr>
				<tr>
					<th>Kecamatan Kec. Gresik, Kabupaten Kab. Gresik, Provinsi Prov. Jawa Timur</th>
				</tr>
				<tr>
					<th colspan="6"><?php echo date(now()); ?></th>
					<th colspan="4">Pengguna :{{ Auth::user()->name }}</th>
				</tr> 
				<tr>
					<th rowspan="2" style="width: 5px; text-align: center; font-weight: bold; font-family: 'Calibri';">No</th>
					<th rowspan="2" style="width: 20px; text-align: center; font-weight: bold; font-family: 'Calibri';">Nama Lengkap</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">NIPD</th>
					<th rowspan="2" style="width: 10px; text-align: center; font-weight: bold; font-family: 'Calibri';">JK</th>
					<th rowspan="2" style="width: 10px; text-align: center; font-weight: bold; font-family: 'Calibri';">NISN</th>
					<th rowspan="2" style="width: 20px; text-align: center; font-weight: bold; font-family: 'Calibri';">Tempat Lahir</th>
					<th rowspan="2" style="width: 20px; text-align: center; font-weight: bold; font-family: 'Calibri';">Tanggal Lahir</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">NIK</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Agama</th>
					<th rowspan="2" style="width: 30px; text-align: center; font-weight: bold; font-family: 'Calibri';">Alamat</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">RT</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">RW</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Dusun</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Kelurahan</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Kecamatan</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Kode Pos</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Jenis Tinggal</th>
					<th rowspan="2" style="width: 30px; text-align: center; font-weight: bold; font-family: 'Calibri';">Alat Transportasi</th>
					<th rowspan="2" style="width: 10px; text-align: center; font-weight: bold; font-family: 'Calibri';">Telepon</th>
					<th rowspan="2" style="width: 10px; text-align: center; font-weight: bold; font-family: 'Calibri';">Hp</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Email</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">SKHUN</th>
					<th rowspan="2" style="width: 20px; text-align: center; font-weight: bold; font-family: 'Calibri';">Penerima KPS</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">No. KPS</th>
					<th colspan="6" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Data Ayah</th>
					<th colspan="6" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Data Ibu</th>
					<th colspan="6" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Data Wali</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Rombel saat ini</th>
					<th rowspan="2" style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">No Peserta Ujian Nasional</th>
					<th rowspan="2" style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">Nomer seri ijazah</th>
					<th rowspan="2" style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">Penerima KIP</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Nomor KIP</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Nama di KIP</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Nomor di KKS</th>
					<th rowspan="2" style="width: 30px; text-align: center; font-weight: bold; font-family: 'Calibri';">No Regristrasi Akta Lahir</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Bank</th>
					<th rowspan="2" style="width: 30px; text-align: center; font-weight: bold; font-family: 'Calibri';">Nomor Rekening Bank</th>
					<th rowspan="2" style="width: 30px; text-align: center; font-weight: bold; font-family: 'Calibri';">Rekening Atas Nama</th>
					<th rowspan="2" style="width: 40px; text-align: center; font-weight: bold; font-family: 'Calibri';">Layak PIP (usulan dari sekolah)</th>
					<th rowspan="2" style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">Alasan Layak PIP</th>
					<th rowspan="2" style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">Kebutuhan khusus</th>
					<th rowspan="2" style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">Sekolah Asal</th>
					<th rowspan="2" style="width: 10px; text-align: center; font-weight: bold; font-family: 'Calibri';">Anak ke </th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Lintang</th>
					<th rowspan="2" style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">Bujur</th>
					<th rowspan="2" style="width: 10px; text-align: center; font-weight: bold; font-family: 'Calibri';">No KK</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Berat Badan</th>
					<th rowspan="2" style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Tinggi Badan</th>
				</tr> 
				<tr>
					<th style="width: 20px; text-align: center; font-weight: bold; font-family: 'Calibri';
								border: 1px black solid;">Nama</th>
					<th style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Tahun Lahir</th>
					<th style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">Jenjang Pendidikan</th>
					<th style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Pekerjaan</th>
					<th style="width: 30px; text-align: center; font-weight: bold; font-family: 'Calibri';">Penghasilan</th>
					<th style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">NIK</th>
					<th style="width: 20px; text-align: center; font-weight: bold; font-family: 'Calibri';">Nama</th>
					<th style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Tahun Lahir</th>
					<th style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">Jenjang Pendidikan</th>
					<th style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Pekerjaan</th>
					<th style="width: 30px; text-align: center; font-weight: bold; font-family: 'Calibri';">Penghasilan</th>
					<th style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">NIK</th>
					<th style="width: 20px; text-align: center; font-weight: bold; font-family: 'Calibri';">Nama</th>
					<th style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Tahun Lahir</th>
					<th style="width: 25px; text-align: center; font-weight: bold; font-family: 'Calibri';">Jenjang Pendidikan</th>
					<th style="width: 15px; text-align: center; font-weight: bold; font-family: 'Calibri';">Pekerjaan</th>
					<th style="width: 30px; text-align: center; font-weight: bold; font-family: 'Calibri';">Penghasilan</th>
					<th style="width: 8px; text-align: center; font-weight: bold; font-family: 'Calibri';">NIK</th>
				</tr> 
			</thead>
			<tbody>
				@php $i=1 @endphp
				@foreach($datas as $s)
				<tr>
					<td>{{ $i++ }}</td>
					<td>{{$s->nama_lengkap}}</td>
					<td>{{$s->nama_panggilan}}</td>
					<td>{{$s->jenis_kelamin}}</td>
					<td>{{$s->no_kk}}</td>
					<td>{{$s->nik}}</td>
					<td>{{$s->tanggal_lahir}}</td>
					<td>{{$s->kota_kelahiran}}</td>
					<td>{{$s->alamat_rumah}}</td>
					<td>{{$s->kelurahan}}</td>
					<td>{{$s->kecamatan}}</td>
					<td>{{$s->kabupaten}}</td>
					<td>{{$s->provinsi}}</td>
					<td>{{$s->agama}}</td>
					<td>{{$s->kewarganegaraan}}</td>
					<td>{{$s->anak_ke}}</td>
					<td>{{$s->jumlah_saudara}}</td>
				</tr>
				@endforeach
			</tbody>
		</table>