@extends('layouts.cpanel')
@section('content')
<form action="{{ url('kategori/add') }}" method="post">
    <div class="row"> 
        <div class="col-md-12">
            <div class="box-body"> 
                <div class="card-body">
                    <div class="form-group form-inline row">
                        <label class="col-md-4" for="exampleInputEmail1">Email address</label>
                        <input type="text" class="col-md-8 form-control" id="exampleInputEmail1" placeholder="Enter email" name="name">
                    </div> 
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <button class="btn btn-primary btn-flat btn-xs">
                <i class="fas fa-save"></i>simpan
            </button>
        </div>
    </div> 
</form>
@endsection