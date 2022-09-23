<?php

namespace App\Exports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class AnggotaExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings():array{
        return[
            'No',
            'Nama',
            'Email',
        ];
    }
    public function collection()
    {
        return User::all([
            'id',
            'name',
            'email']);
    }
}
