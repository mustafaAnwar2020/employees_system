@extends('reports.layout.app')
@section('content')
<div class="container">

    <div class="row">
        <a class="btn btn-success" href="{{route('departments.create')}}">
            <i class="fa-solid fa-plus"></i>
        </a>
    </div>

    <table class="table table-hover text-nowrap">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>parent</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($departments as $department)
                <tr>
                    <td>{{$department->id}}</td>
                    <td>{{$department->data->title}}</td>
                    <td>{{$department->data->description}}</td>
                    <td>{{$department->where('id',$department->parent_id)->first() ?
                    $department->where('id',$department->parent_id)->first()->data->title
                    :'-'}}</td>
                    <td>
                        <a class="btn btn-sm btn-info" href="{{route('departments.edit',$department)}}">
                            <i class="fa-solid fa-pen"></i>
                        </a>
                        <form action="{{route('departments.destroy',$department)}}" method="POST"
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
