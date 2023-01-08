<?php
namespace App\Repositories;
use App\Models\Job;
use App\Models\User;
use App\Models\Department;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\UserCreateRequest;

class UserRepository {
    private $model;
    private $departments;
    private $jobs;

    public function __construct()
    {
        $this->model = new User();
        $this->departments = new Department();
        $this->jobs = new Job();
    }


    public function getUsers(){

        $users = $this->model->with('department.data','job.data')->get();
        return $users;
    }

    public function getDepartments(){

        $departments = $this->departments->with('data')->get();

        return $departments;
    }

    public function getJobs(){

        $jobs = $this->jobs->with('data')->get();

        return $jobs;
    }

    public function storeUser(UserCreateRequest $request){

        $photo = 'dist/img/'.$this->uploadPhoto($request);
        $user = $this->model::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'photo'=> $photo,
            'password'=>Hash::make($request->password),
            'department_id' => $request->department_id,
            'job_id'=>$request->job_id
        ]);

    }

    public function updateUser(UserCreateRequest $request,User $user){
        $photo = 'dist/img/'.$this->uploadPhoto($request);
        $user->update([
            'name'=>$request->name,
            'email'=>$request->email,
            'photo'=> $photo,
            'password'=>Hash::make($request->password),
            'department_id' => $request->department_id,
            'job_id'=>$request->job_id
        ]);
    }

    private function uploadPhoto(UserCreateRequest $request){
        $photo = $request->photo;
        if(!$photo){
            return null;
        }
        $newPhoto = time().$photo->getClientOriginalName();
        $photo->move('dist/img',$newPhoto);
        return $newPhoto;
    }
}
