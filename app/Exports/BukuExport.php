<?php

namespace App\Exports;

use App\Models\Buku;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class BukuExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings():array{
        return[
            'No',
            'Judul',
            'Penulis',
            'Total Buku',
            'Buku Tersedia',
            'created_at',
            'updated_at'
        ];
    }
    public function collection()
    {
        return Buku::all([
            'id',
            'judul',
            'penulis',
            'total_stok',
            'stok',
            'created_at',
            'updated_at']);
    }
}
