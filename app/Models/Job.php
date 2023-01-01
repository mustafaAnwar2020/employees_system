<?php

namespace App\Models;

use App\Models\JobData;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Job extends Model
{
    use HasFactory;
    protected $table='jobs';
    protected $fillable = ['department_id'];

    public function data(): HasMany
    {
        return $this->hasMany(JobData::class, 'job_id', 'id');
    }
}
