@extends('reports.layout.app')
@section('content')
    <div class="container">

        <form action="{{ route('users.update',$user) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="card">
                <div class="card-header">Edit User</div>

                <div class="card-body">
                    <div class="form-group">
                        <label class="required" for="title">Name</label>
                        <input class="form-control" type="text" value="{{$user->name}}" name="name" id="title" required>
                        <span class="help-block"> </span>
                    </div>

                    <div class="form-group">
                        <label class="required" for="description">Email</label>
                        <input class="form-control" type="email" value="{{$user->email}}" name="email" id="title" required>
                        <span class="help-block"> </span>
                    </div>

                    <div class="form-group">
                        <label class="required" for="new_password">Password</label>
                        <input class="form-control" type="password"  name="password" id="new_password" required>
                        <span class="help-block"> </span>
                    </div>

                    <div class="form-group">
                        <label for="user_id">Department</label>
                        <select class="form-control" name="department_id" id="user_id" required>
                            <option disabled selected>select department</option>
                            @foreach ($departments as $dep)
                                <option value="{{ $dep->id }}" {{$dep->id == $user->department_id ? 'selected':''}}>{{ $dep->data->title }}
                                </option>
                            @endforeach
                        </select>
                        <span class="help-block"> </span>
                    </div>

                    <div class="form-group">
                        <label for="user_id">Job</label>
                        <select class="form-control" name="job_id" id="user_id" required>
                            <option disabled selected>select job</option>
                            @foreach ($jobs as $job)
                                <option value="{{ $job->id }}" {{$job->id == $user->job_id ? 'selected' : ''}}>{{ $job->data->title }}
                                </option>
                            @endforeach
                        </select>
                        <span class="help-block"> </span>
                    </div>


                    <div class="mb-3 form-group">
                        <img src="{{asset($user->photo)}}" height="100px" width="100px">
                    </div>

                    <div class="mb-3 form-group">
                        <label for="formFile" class="form-label">photo</label>
                        <input class="form-control" name="photo" type="file" id="formFile">
                    </div>
                    <button class="btn btn-primary" type="submit">
                        Save
                    </button>
                </div>
            </div>

        </form>
    </div>
@endsection
