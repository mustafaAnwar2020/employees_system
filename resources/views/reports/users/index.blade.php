@extends('reports.layout.app')
@section('content')
<div class="container">

    <div class="row">
        <a class="btn btn-success" href="{{route('users.create')}}">
            <i class="fa-solid fa-plus"></i>
        </a>
    </div>

    <table class="table table-hover text-nowrap">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Job</th>
                <th>Photo</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td>{{$user->department->data->title}}</td>
                    <td>{{$user->job->data->title}}</td>
                    <td><img width="100px" height="100px" src="{{asset($user->photo)}}"></td>
                    <td>
                        <a class="btn btn-sm btn-info" href="{{route('users.edit',$user)}}">
                            <i class="fa-solid fa-pen"></i>
                        </a>
                        <form action="{{route('users.destroy',$user)}}" method="POST"
                            onsubmit="return confirm('Are your sure?');" style="display: inline-block;">
                            <input type="hidden" name="_method" value="DELETE">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <button type="submit" class="btn btn-sm btn-danger">
                                <span class="fa-solid fa-trash"></span>
                            </button>
                        </form>
                    </td>
                </tr>
            @endforeach

        </tbody>
    </table>
</div>

@endsection
