<?php

namespace App\Exports;

use App\ppdb;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;

class UserExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    // public function collection()
    // {
    //     return ppdb::all();
    // }
    public function view(): View
    {
        return view('ppdb_export', [
            'datas' => ppdb::all()
        ]);
    }
}
