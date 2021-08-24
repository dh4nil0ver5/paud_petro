@extends('layouts.cpanel')
@section('content')
<form action="{{ url('kategori/update') }}" method="post">
    @foreach ($kategori as $key=>$value)
    <div class="row"> 
        <div class="col-md-10 mar-1">
            <div class="box-body"> 
                <div class="card-body">
                    <div class="form-group form-inline row">
                        <label class="col-md-4 title-kategori" for="exampleInputEmail1">Jenis kategori</label>
                        <input type="number" class="col-md-8 form-control" id="exampleInputEmail1" placeholder="Enter email" name="id"
                        value="{{ $value->id }}" hidden>
                        <input type="text" class="col-md-8 form-control" id="exampleInputEmail1" placeholder="Enter email" name="user_id"
                        value="{{ $value->user_id }}" hidden>
                        <input type="text" class="col-md-8 form-control" id="exampleInputEmail1" placeholder="Enter email" name="name"
                        value="{{ $value->nama_kategori }}">
                    </div> 
                </div>
            </div>
        </div>
        <div class="col-md-3 mar-1">
            <button class="btn btn-primary btn-flat btn-xs">
                <i class="fas fa-save"></i>simpan
            </button>
        </div>
    </div> 
    @endforeach
</form>
@endsection