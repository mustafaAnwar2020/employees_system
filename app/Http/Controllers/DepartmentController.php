<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\DepartmentRepository;
use App\Http\Requests\DepartmentCreateRequest;
use App\Models\Department;

class DepartmentController extends Controller
{


    private $repository;

    public function __construct(DepartmentRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index()
    {
        $departments = $this->repository->getDepartments();

        return view('reports.departments.index')->with([
            'departments'=>$departments
        ]);
    }

    public function create()
    {
        $departments = $this->repository->getDepartments();

        return view('reports.departments.create')->with([
            'departments'=>$departments
        ]);
    }

    public function store(DepartmentCreateRequest $request)
    {
        $request->validated();

        $this->repository->storeDepartment($request);

        return redirect()->route('departments.index');
    }

    public function edit(Department $department)
    {
        $departments = $this->repository->getDepartments();

        $dep =  $this->repository->getDepartment($department);

        return view('reports.departments.edit')->with([
            'dep'=>$dep,
            'departments'=>$departments
        ]);
    }

    public function update(DepartmentCreateRequest $request, Department $department)
    {

        $request->validated();

        $this->repository->updateDepartments($request,$department);

        return redirect()->route('departments.index');
    }

    public function destroy(Department $department)
    {
        $department->delete();
        return redirect()->route('departments.index');

    }
}
