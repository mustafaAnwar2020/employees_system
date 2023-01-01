<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JobData extends Model
{
    use HasFactory;
    protected $table='jobs_data';
    protected $fillable = [
        'job_id',
        'title',
        'description'
    ];}
