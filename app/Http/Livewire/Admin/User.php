<?php

namespace App\Http\Livewire\Admin;

use App\Exports\AnggotaExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\User as ModelsUser;
use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Validation\Rules\Password;

class User extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public $admin, $petugas, $peminjam, $search, $user_id;
    public $create, $delete, $name, $email, $password, $password_confirmation;

    protected $validationAttributes = [
        'name' => 'nama',
        'password_confirmation' => 'ulangi password'
    ];

    protected function rules()
    {
        return [
            'name' => 'required',
            'email' => ['required', 'email', 'unique:App\Models\User,email'],
            'password' => ['required', 'confirmed', Password::min(8)],
            'password_confirmation' => 'required',
        ];
    }

    public function admin()
    {
        $this->format();
        $this->admin = true;
    }

    public function petugas()
    {
        $this->format();
        $this->petugas = true;
    }

    public function peminjam()
    {
        $this->format();
        $this->peminjam = true;
    }

    public function create()
    {
        $this->create = true;
    }

    public function store()
    {
        $this->validate();

        $user = ModelsUser::create([
            'name' => $this->name,
            'email' => $this->email,
            'password' => bcrypt($this->password)
        ]);

        if ($this->admin) {
            $user->assignRole('admin');
        }elseif ($this->petugas) {
            $user->assignRole('petugas');
        } else {
            $user->assignRole('peminjam');
        }

        session()->flash('sukses', 'Data berhasil ditambahkan.');
        $this->format();
    }

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function delete(ModelsUser $user)
    {
        $this->format();

        $this->delete = true;
        $this->user_id = $user->id;
    }

    public function destroy(ModelsUser $user)
    {
        $user->delete();

        session()->flash('sukses', 'Data berhasil dihapus.');
        $this->format();
    }

    public function export()
    {
        return Excel::download(new AnggotaExport, 'ReportAnggota.xlsx');
    }

    public function render()
    {
        if ($this->search) {
            if ($this->admin) {
                $user = ModelsUser::role('admin')->where('name', 'like', '%'. $this->search .'%')->paginate(5);
            } elseif ($this->petugas) {
                $user = ModelsUser::role('petugas')->where('name', 'like', '%'. $this->search .'%')->paginate(5);
            } elseif ($this->peminjam) {
                $user = ModelsUser::role('peminjam')->where('name', 'like', '%'. $this->search .'%')->paginate(5);
            } else {
                $user = ModelsUser::where('name', 'like', '%' . $this->search . '%')->paginate(5);
            }
        } else {
            if ($this->admin) {
                $user = ModelsUser::role('admin')->paginate(5);
            } elseif ($this->petugas) {
                $user = ModelsUser::role('petugas')->paginate(5);
            } elseif ($this->peminjam) {
                $user = ModelsUser::role('peminjam')->paginate(5);
            } else {
                $user = ModelsUser::paginate(5);
            }
        }

        return view('livewire.admin.user', compact('user'));
    }

    public function format()
    {
        $this->admin = false;
        $this->petugas = false;
        $this->peminjam = false;
        unset($this->create);
        unset($this->delete);
        unset($this->name);
        unset($this->email);
        unset($this->password);
        unset($this->password_confirmation);
        unset($this->export);
        unset($this->user_id);
    }
}
