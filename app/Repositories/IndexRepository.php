<?php
namespace App\Repositories;
use App\Models\Department;
use App\Http\Requests\CreateIndexRequest;

class IndexRepository {
    private $model;

    public function __construct()
    {
        $this->model = new Department();
    }

    public function getData(CreateIndexRequest $request){

        $departments =  $this->model->with('data')->get();

        $allDepartments = $departments;

        if(isset($request->id) && $request->id){
            $departments = $departments->where('id',$request->id);
        }

        return [
            'departments'=>$departments,
            'allDepartments'=>$allDepartments
        ];
    }
}
