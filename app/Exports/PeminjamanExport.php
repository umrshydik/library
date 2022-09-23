<?php

namespace App\Exports;

use App\Models\Peminjaman;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class PeminjamanExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings():array{
        return[
            'No',
            'Kode Pinjam',
            'Id Peminjam',
            'Tanggal Pinjam',
            'Tanggal Harus Kembali',
            'Tanggal Pengembalian'
        ];
    }
    public function collection()
    {
        return Peminjaman::all([
            'id',
            'kode_pinjam',
            'peminjam_id',
            'tanggal_pinjam',
            'tanggal_kembali',
            'tanggal_pengembalian']);
    }
}
