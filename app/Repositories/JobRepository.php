<?php
namespace App\Repositories;
use App\Models\Job;
use App\Models\JobData;
use App\Models\Department;
use App\Http\Requests\JobCreateRequest;

class JobRepository {
    private $model;
    private $data;

    public function __construct()
    {
        $this->model = new Job();
        $this->data =  new JobData();
    }


    public function getJobs(){
        $jobs = $this->model->with('data','department.data')->get();
        return $jobs;
    }

    public function getDepartments(){
        $departments = Department::with('data')->get();
        return $departments;
    }

    public function storeJob(JobCreateRequest $request){
        $job = $this->model::create([
            'department_id' => $request->department_id
        ]);
        $this->data::create([
            'title'=>$request->title,
            'description'=>$request->description,
            'job_id'=>$job->id
        ]);
    }

    public function updateJob(JobCreateRequest $request,Job $job){

        $job->update([
            'department_id' => $request->department_id
        ]);
        $this->data::where('job_id',$job->id)
        ->first()
        ->update([
            'title'=>$request->title,
            'description'=>$request->description,
        ]);
    }

}
