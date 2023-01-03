@extends('reports.layout.app')
@section('content')
<div class="container">
    <div class="row">
        <select name="dep_id" class="dep-select form-control">
            @foreach ($allDepartments as $dep)
                <option value="{{$dep->id}}" {{$dep->id == request()->id ? 'selected':''}}><a href="{{route('report.index')}}?id={{$dep->id}}">{{$dep->data->title}}</a></option>
            @endforeach
        </select>
    </div>

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
            @foreach ($departments as $dep)
            @php
                $users = $dep->getUsers()->get();
            @endphp
                @foreach ($users as $user )
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->department->data->title}}</td>
                    <td>{{$user->job->data->title}}</td>
                    <td><img src="{{asset($user->photo)}}" width="100px" height="100px"></td>
                </tr>
                @endforeach
            @endforeach

        </tbody>
    </table>
</div>

@endsection
