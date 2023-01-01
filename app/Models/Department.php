<?php

namespace App\Models;

use App\Models\DepartmentData;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Department extends Model
{
    use HasFactory;
    protected $table='department';
    protected $fillable = ['parent_id'];

    
    public function data(): HasMany
    {
        return $this->hasMany(DepartmentData::class, 'department_id', 'id');
    }

}
