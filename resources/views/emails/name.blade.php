<div style="width: 100%">
    Hi, This is : {{ $name }}
    <div style="text-align: justify; font-size: 12px 'Verdana';">
    Dengan ini, saya menyatakan bahwa data yang saya simpan dengan data yang sebenar - benarnya, jika suatu saat ada kekeliruan 
    pada data akan dilakukan perubahan dengan memberikan pemberitahuan kepada pihak terkait.</div>
    <a href="{{ url('verify') }}/{{ $name }}" class="btn btn-flat btn-xs btn-primary" id="ajukan_verifikasi">Ajukan verifikasi</a>
</div>
