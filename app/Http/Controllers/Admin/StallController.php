<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Auth;
use Session;
use Redirect;
use App\Models\Stall;
use App\Http\Requests\StallRequest;

class StallController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Stall::paginate(30);
        return view('admin.stall.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StallRequest $request)
    {
        Stall::create([
            'f_name' => strip_tags($request->input('f_name')),
            'l_name' => strip_tags($request->input('l_name')),
            'mobile' => strip_tags($request->input('mobile')),
            'organization' => strip_tags($request->input('organization')),
            'address' => strip_tags($request->input('address')),
            'divisions' => strip_tags($request->input('divisions')),
            'district' => strip_tags($request->input('district')),
            'thana' => strip_tags($request->input('thana')),
            'stalls_number' => strip_tags($request->input('stalls_number')),
            'tin_number' => strip_tags($request->input('tin_number')),
            'nid_number' => strip_tags($request->input('nid_number')),
            'email' => strip_tags($request->input('email')),
            's_status' => 0,
            'send_at' => date('Y-m-d H:i:s'),
            's_year' => date('Y'),
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
        //
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
        Stall::where('id', $id)->update([
            's_status' => 1,
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
        //
    }
}
