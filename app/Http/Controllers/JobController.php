<?php

namespace App\Http\Controllers;

use App\Models\Job;
use App\Models\Department;
use Illuminate\Http\Request;
use App\Http\Requests\JobCreateRequest;
use App\Models\JobData;
use App\Repositories\JobRepository;

class JobController extends Controller
{
    private $repository;

    public function __construct(JobRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index()
    {

        $jobs = $this->repository->getJobs();

        return view('reports.jobs.index')->with([
            'jobs'=>$jobs
        ]);
    }


    public function create()
    {
        $departments = $this->repository->getDepartments();

        return view('reports.jobs.create')->with([
            'departments'=>$departments
        ]);
    }


    public function store(JobCreateRequest $request)
    {
        $request->validated();

        $this->repository->storeJob($request);

        return redirect()->route('jobs.index');
    }


    public function edit(Job $job)
    {
        $departments = $this->repository->getDepartments();

        return view('reports.jobs.edit')->with([
            'job'=>$job,
            'departments'=>$departments
        ]);
    }

    public function update(JobCreateRequest $request,Job $job)
    {
        $request->validated();

        $this->repository->updateJob($request,$job);

        return redirect()->route('jobs.index');
    }

    public function destroy(Job $job)
    {
        $job->delete();
        return redirect()->route('jobs.index');
    }
}
