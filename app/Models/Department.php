<?php

namespace App\Models;

use App\Models\DepartmentData;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Department extends Model
{
    use HasFactory;
    protected $table='department';
    protected $fillable = ['parent_id'];


    public function data(): HasOne
    {
        return $this->hasOne(DepartmentData::class, 'department_id', 'id');
    }

}
