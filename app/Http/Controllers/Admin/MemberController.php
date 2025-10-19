<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Auth;
use Session;
use Redirect;
use App\Models\Member;
use App\Http\Requests\MemberRequest;

class MemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Member::active()->get();
        return view('admin.member.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.member.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(MemberRequest $request)
    {
        Member::create([
            'number_id' => strip_tags($request->input('number_id')),
            'central_committee_post' => strip_tags($request->input('central_committee_post')),
            'central_committee_order' => strip_tags($request->input('central_committee_order')),
            'district_committee_post' => strip_tags($request->input('district_committee_post')),
            'divisions' => strip_tags($request->input('divisions')),
            'district' => strip_tags($request->input('district')),
            'inst_name' => strip_tags($request->input('inst_name')),
            'inst_name_bn' => strip_tags($request->input('inst_name_bn')),
            'inst_address' => strip_tags($request->input('inst_address')),
            'inst_address_bn' => strip_tags($request->input('inst_address_bn')),
            'inst_telephone' => strip_tags($request->input('inst_telephone')),
            'inst_mobile' => strip_tags($request->input('inst_mobile')),
            'img' => strip_tags($request->input('img')),
            'name' => strip_tags($request->input('name')),
            'name_bn' => strip_tags($request->input('name_bn')),
            'gender' => strip_tags($request->input('gender')),
            'contact' => strip_tags($request->input('contact')),
            'home_address' => strip_tags($request->input('home_address')),
            'standing_committee' => json_encode($request->input('standing_committee')),
            'm_status' => $request->input('m_status'),
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
        $sql = Member::find($id);
        return view('admin.member.edit', compact('sql'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(MemberRequest $request, $id)
    {
        Member::where('id', $id)->update([
            'number_id' => strip_tags($request->input('number_id')),
            'member_since' => strip_tags($request->input('member_since')),
            'central_committee_post' => strip_tags($request->input('central_committee_post')),
            'central_committee_order' => strip_tags($request->input('central_committee_order')),
            'district_committee_post' => strip_tags($request->input('district_committee_post')),
            'divisions' => strip_tags($request->input('divisions')),
            'district' => strip_tags($request->input('district')),
            'inst_name' => strip_tags($request->input('inst_name')),
            'inst_name_bn' => strip_tags($request->input('inst_name_bn')),
            'inst_address' => strip_tags($request->input('inst_address')),
            'inst_address_bn' => strip_tags($request->input('inst_address_bn')),
            'inst_trade_license' => strip_tags($request->input('inst_trade_license')),
            'inst_bin' => strip_tags($request->input('inst_bin')),
            'inst_tin' => strip_tags($request->input('inst_tin')),
            'inst_telephone' => strip_tags($request->input('inst_telephone')),
            'inst_mobile' => strip_tags($request->input('inst_mobile')),
            'img' => strip_tags($request->input('img')),
            'name' => strip_tags($request->input('name')),
            'name_bn' => strip_tags($request->input('name_bn')),
            'email' => strip_tags($request->input('email')),
            'blood_group' => strip_tags($request->input('blood_group')),
            'gender' => strip_tags($request->input('gender')),
            'contact' => strip_tags($request->input('contact')),
            'home_address' => strip_tags($request->input('home_address')),
            'standing_committee' => json_encode($request->input('standing_committee')),
            'm_status' => $request->input('m_status'),
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
    public function destroy(MemberRequest $request, $id)
    {
        Member::where('id', $id)->delete();
        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }
}
