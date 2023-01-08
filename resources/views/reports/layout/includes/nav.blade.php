<nav class="navbar navbar-expand navbar-dark">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{url('/')}}" class="nav-link">Home</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{route('report.index')}}" class="nav-link">Report</a>
        </li>

        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{route('jobs.index')}}" class="nav-link">Jobs</a>
        </li>

        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{route('departments.index')}}" class="nav-link">Departments</a>
        </li>

        <li class="nav-item d-none d-sm-inline-block">
            <a href="{{route('users.index')}}" class="nav-link">Users</a>
        </li>
    </ul>
</nav>
