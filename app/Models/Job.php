<?php

namespace App\Models;

use App\Models\JobData;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Job extends Model
{
    use HasFactory;
    protected $table='jobs';
    protected $fillable = ['department_id'];

    public function data(): HasOne
    {
        return $this->hasOne(JobData::class, 'job_id', 'id');
    }


    public function department()
    {
        return $this->belongsTo(Department::class);
    }
}
