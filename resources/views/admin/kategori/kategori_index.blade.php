@extends('layouts.cpanel')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <h2>{{ $status_msg }}</h2>
                    {{-- <h2>pesan !</h2> --}}
                </div>
                <div class="box-body">
                    <a href="{{ url('kategori/add') }}" class="btn btn-success btn-flat btn-sm btn_add">
                        <i class="fa fa-flags"></i>
                        ADD</a>
                    <table class="table table-bordered MyTable">
                        <thead>
                            <th>#</th>
                            <th>Nama</th>
                            <th>Created By</th>
                            <th>Created At</th>
                            <th>action</th>
                        </thead>
                        <tbody>  
                            @foreach ($kategori as $key=>$value)
                                <tr> 
                                    <td>{{ $key+1}} </td>
                                    <td>{{ $value->nama_kategori}} </td>
                                    <td>{{ $value->nama_users}} </td>
                                    <td>{{ $value->created_at}} </td>
                                    <td>
                                        <a class="btn btn-flat btn-xs btn-primary" href="kategori/edit/{{ $value->id }}">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                        <a class="btn btn-flat btn-xs btn-danger" href="kategori/hapus/{{ $value->id }}">
                                            <i class="fas fa-eraser"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection

<script src=""></script>