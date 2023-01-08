<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Repositories\UserRepository;
use App\Http\Requests\UserCreateRequest;

class UserController extends Controller
{
    private $repository;

    public function __construct(UserRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index()
    {
        $users = $this->repository->getUsers();

        return view('reports.users.index')->with(['users'=>$users]);
    }

    public function create(){

        $departments = $this->repository->getDepartments();

        $jobs = $this->repository->getJobs();

        return view('reports.users.create')->with([
            'jobs'=>$jobs,
            'departments'=>$departments
        ]);

    }


    public function store(UserCreateRequest $request){

        $request->validated();

        $this->repository->storeUser($request);

        return redirect()->route('users.index');
    }

    public function edit(User $user){

        $departments = $this->repository->getDepartments();

        $jobs = $this->repository->getJobs();

        return view('reports.users.edit')->with([
            'user'=>$user,
            'jobs'=>$jobs,
            'departments'=>$departments
        ]);

    }


    public function update(UserCreateRequest $request,User $user){

        $request->validated();

        $this->repository->updateUser($request,$user);

        return redirect()->route('users.index');
    }

    public function destroy(User $user){
        $user->delete();
        return redirect()->route('users.index');


    }
}
