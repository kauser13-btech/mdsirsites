<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use Auth;
use Session;
use Redirect;
use App\Models\Source;
use App\Helpers\clearCacheHelpers;
use App\Http\Requests\SourceRequest;

class SourceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Source::get();
        return view('admin.source.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.source.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SourceRequest $request, clearCacheHelpers $clearCacheHelpers)
    {
        $source  = Source::create([
            'name' => strip_tags($request->input('name')),
            'base_url' => strip_tags($request->input('base_url')),
            'status' => $request->input('status'),
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
        $sql = Source::find($id);
        return view('admin.source.edit', compact('sql'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SourceRequest $request, $id, clearCacheHelpers $clearCacheHelpers)
    {
        Source::where('id', $id)->update([
            'name' => strip_tags($request->input('name')),
            'base_url' => strip_tags($request->input('base_url')),
            'status' => $request->input('status'),
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
    public function destroy($id, clearCacheHelpers $clearCacheHelpers)
    {
        Source::where('id', $id)->delete();
        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }
}
