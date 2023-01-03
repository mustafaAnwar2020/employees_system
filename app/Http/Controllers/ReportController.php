<?php

namespace App\Http\Controllers;
use App\Http\Requests\CreateIndexRequest;
use App\Repositories\IndexRepository;

class ReportController extends Controller
{
    private $repository;

    public function __construct(IndexRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index(CreateIndexRequest $request){

        $request->validated();

        $data = $this->repository->getData($request);

        return view('reports.index')->with($data);
    }
}
