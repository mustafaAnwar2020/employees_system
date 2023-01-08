<?php
namespace App\Repositories;
use App\Models\DepartmentData;
use App\Models\Department;
use App\Http\Requests\DepartmentCreateRequest;

class DepartmentRepository {
    private $model;
    private $data;

    public function __construct()
    {
        $this->model = new Department();
        $this->data =  new DepartmentData();
    }

    public function getDepartments(){
        $deps = $this->model->with('data')->get();
        return $deps;
    }

    public function getDepartment(Department $department){
        $dep = $department->with('data')->where('id',$department->id)->first();
        return $dep;
    }

    public function storeDepartment(DepartmentCreateRequest $request){
        $department = $this->model::create([
            'parent_id' => $request->department_id
        ]);

        $this->data::create([
            'title'=>$request->title,
            'description'=>$request->description,
            'department_id'=>$department->id
        ]);
    }

    public function updateDepartments(DepartmentCreateRequest $request,Department $department){

        $department->update([
            'parent_id'=>$request->department_id
        ]);

        $this->data::where('department_id',$department->id)
        ->first()
        ->update([
            'title'=>$request->title,
            'description'=>$request->description,
        ]);
    }

}
