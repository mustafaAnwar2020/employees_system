<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
class ReportController extends Controller
{
    public function index(){
        $users = User::query()
            ->with([
                'job.data','department.data'
                ])
            ->get();

        return view('reports.index')->with([
            'users'=>$users
        ]);
    }
}
