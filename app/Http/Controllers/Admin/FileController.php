<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\File;
use Illuminate\Http\Request;

use Auth;
use Session;
use Redirect;
use App\Models\Slider;
use App\Http\Requests\FileRequest;

class FileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = File::active()->get();
        return view('admin.file.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.file.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        File::create([
            'title' => strip_tags($request->input('title')),
            'page' => strip_tags($request->input('page')),
            'file' => strip_tags($request->input('file')),
            's_status' => strip_tags($request->input('s_status')),
            'created_by' => Auth::user()->id,
        ]);

        Session::flash('success', "Successfully Inserted");
        return Redirect::back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $sql = File::find($id);
        return view('admin.file.edit', compact('sql'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        File::where('id', $id)->update([
            'title' => strip_tags($request->input('title')),
            'page' => strip_tags($request->input('page')),
            'file' => strip_tags($request->input('file')),
            's_status' => strip_tags($request->input('s_status')),
            'updated_by' => Auth::user()->id,
        ]);

        Session::flash('success', "Successfully Updated");
        return Redirect::back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        File::destroy($id);
        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }
}
