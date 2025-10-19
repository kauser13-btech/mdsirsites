<?php

namespace App\Http\Controllers\Admin;


use Auth;
use Session;
use Redirect;
use App\Models\UsefulLinks;
use App\Http\Requests\UsefulLinksRequest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UsefulLinksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = UsefulLinks::get();
        return view('admin.usefullinks.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.usefullinks.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UsefulLinksRequest $request)
    {
        UsefulLinks::create([
            'name' => strip_tags($request->input('name')),
            'url' => strip_tags($request->input('url')),
            'img' => strip_tags($request->input('img')),
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
        $sql = UsefulLinks::find($id);
        return view('admin.usefullinks.edit', compact('sql'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UsefulLinksRequest $request, $id)
    {
        UsefulLinks::where('id', $id)->update([
            'name' => strip_tags($request->input('name')),
            'url' => strip_tags($request->input('url')),
            'img' => strip_tags($request->input('img')),
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
        UsefulLinks::where('id', $id)->delete();
        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }
}
