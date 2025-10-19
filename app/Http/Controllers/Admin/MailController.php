<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use Auth;
use Session;
use Redirect;
use App\Models\Mail;
use App\Http\Requests\MailRequest;

class MailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Mail::paginate(30);
        return view('admin.email.index', compact('sql'));
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
    public function store(MailRequest $request)
    {
        Mail::create([
            'name' => strip_tags($request->input('name')),
            'email' => strip_tags($request->input('email')),
            'company' => strip_tags($request->input('company')),
            'message' => strip_tags($request->input('message')),
            'm_status' => 0,
            'send_at' => date('Y-m-d H:i:s'),
            'created_by' => Auth::user()->id,
        ]);

        Session::flash('success', "Thank you for contacting us");
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
        Mail::where('id', $id)->update([
            'm_status' => 1,
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
