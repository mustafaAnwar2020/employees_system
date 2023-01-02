@extends('reports.layout.app')
@section('content')
<div class="container">
    <table class="table table-hover text-nowrap">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Job</th>
                <th>Photo</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->department->data->title}}</td>
                    <td>{{$user->job->data->title}}</td>
                    <td><img src="{{asset($user->photo)}}" width="100px" height="100px"></td>
                </tr>
            @endforeach

        </tbody>
    </table>
</div>

@endsection
