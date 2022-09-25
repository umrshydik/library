<?php

namespace Database\Seeders;

use App\Models\Buku;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class BukuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Buku::create([
            'judul' => 'mantapu',
            'slug' => Str::slug('mantapu'),
            'sampul' => 'buku/mantapu.jpg',
            'penulis' => 'Jerome',
            'penerbit_id' => 2,
            'kategori_id' => 2,
            'rak_id' => 7,
            'stok' => 10
        ]);

        Buku::create([
            'judul' => 'Hujan',
            'slug' => Str::slug('mantapu'),
            'sampul' => 'buku/hujan.jpg',
            'penulis' => 'Tereliye',
            'penerbit_id' => 2,
            'kategori_id' => 3,
            'rak_id' => 7,
            'stok' => 10
        ]);
    }
}
