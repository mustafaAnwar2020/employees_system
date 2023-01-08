@extends('reports.layout.app')
@section('content')
<div class="container">

    <form action="{{ route('departments.update',$dep) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="card">
            <div class="card-header">Edit Departments</div>

            <div class="card-body">
                <div class="form-group">
                    <label class="required" for="title">Title</label>
                    <input class="form-control" type="text" name="title" id="title" value="{{$dep->data->title}}" required>
                    <span class="help-block"> </span>
                </div>

                <div class="form-group">
                    <label class="required" for="description">Description</label>
                    <textarea class="form-control" rows="10" name="description" id="description">{{$dep->data->description}}</textarea>
                    <span class="help-block"> </span>
                </div>
                <div class="form-group">
                    <label for="user_id">Parent department</label>
                    <select class="form-control" name="department_id" id="user_id" required>
                        <option disabled selected>select parent</option>
                        @foreach ($departments as $deps)
                            <option value="{{ $deps->id }}" {{$dep->parent_id == $deps->id ? 'selected':''}}>{{ $deps->data->title }}
                            </option>
                        @endforeach
                    </select>
                    <span class="help-block"> </span>
                </div>
                <button class="btn btn-primary" type="submit">
                    Save
                </button>
            </div>
        </div>

    </form>
</div>

@endsection
