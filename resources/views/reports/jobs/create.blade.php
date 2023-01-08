@extends('reports.layout.app')
@section('content')
<div class="container">

    <form action="{{ route('jobs.store') }}" method="POST">
        @csrf
        <div class="card">
            <div class="card-header">Add Job</div>

            <div class="card-body">
                <div class="form-group">
                    <label class="required" for="title">Title</label>
                    <input class="form-control" type="text" name="title" id="title" required>
                    <span class="help-block"> </span>
                </div>

                <div class="form-group">
                    <label class="required" for="description">Description</label>
                    <textarea class="form-control" rows="10" name="description" id="description"></textarea>
                    <span class="help-block"> </span>
                </div>

                <div class="form-group">
                    <label for="user_id">Assigned department</label>
                    <select class="form-control" name="department_id" id="user_id" required>
                        @foreach ($departments as $dep)
                            <option value="{{ $dep->id }}">{{ $dep->data->title }}
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
