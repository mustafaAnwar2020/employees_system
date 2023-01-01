<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DepartmentData extends Model
{
    use HasFactory;
    protected $table='department_data';
    protected $fillable = [
        'department_id',
        'title',
        'description'
    ];
}
