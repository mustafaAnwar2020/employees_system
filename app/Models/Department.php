<?php

namespace App\Models;

use App\Models\DepartmentData;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Department extends Model
{
    use HasFactory;
    protected $table='department';
    protected $fillable = ['parent_id'];


    public function data(): HasOne
    {
        return $this->hasOne(DepartmentData::class, 'department_id', 'id');
    }

    public function children(): HasMany
    {
        return $this->hasMany(Department::class, 'parent_id', 'id');
    }

    public function getUsers(){
        $ids = $this->children()->pluck('id');
        $users = User::whereIn('department_id',$ids)->orWhere('department_id',$this->id);
        return $users;
    }

}
