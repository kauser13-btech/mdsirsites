<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Auth;
use Session;
use Redirect;
use App\Models\Slider;
use App\Http\Requests\SliderRequest;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Slider::active()->get();
        return view('admin.slider.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.slider.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SliderRequest $request)
    {
        Slider::create([
            'title' => strip_tags($request->input('title')),
            'text' => strip_tags($request->input('text')),
            'link' => strip_tags($request->input('link')),
            'img' => strip_tags($request->input('img')),
            'start_date' => $request->input('start_date')?$request->input('start_date'):date('Y-m-d H:i:s'),
            's_status' => $request->input('s_status'),
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
        $sql = Slider::find($id);
        return view('admin.slider.edit', compact('sql'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SliderRequest $request, $id)
    {
        Slider::where('id', $id)->update([
            'title' => strip_tags($request->input('title')),
            'text' => strip_tags($request->input('text')),
            'link' => strip_tags($request->input('link')),
            'img' => strip_tags($request->input('img')),
            'start_date' => $request->input('start_date'),
            's_status' => $request->input('s_status'),
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
        Slider::where('id', $id)->delete();
        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }
}
