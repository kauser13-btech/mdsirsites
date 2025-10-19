<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use Auth;
use Session;
use Redirect;
use App\Models\BecomeAMember;
use App\Helpers\ImageStoreHelpers;
use App\Http\Requests\BecomeAMemberRequest;

class BecomeAMemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = BecomeAMember::get();
        return view('admin.become-a-member.index', compact('list'));
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
     * @param  \App\Http\Requests\BecomeAMemberRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BecomeAMemberRequest $request, ImageStoreHelpers $uploadImage)
    {
        $trade_license = $request->file('trade_license') ? $uploadImage->becomeAmemberUpload($request->file('trade_license'),date("Y-m-d")):'';
        $tin_file = $request->file('tin_file') ? $uploadImage->becomeAmemberUpload($request->file('tin_file'),date("Y-m-d")):'';
        $image = $request->file('image') ? $uploadImage->becomeAmemberUpload($request->file('image'),date("Y-m-d")):'';
        $vat_file = $request->file('vat_file') ? $uploadImage->becomeAmemberUpload($request->file('vat_file'),date("Y-m-d")):'';
        $visiting_card_file = $request->file('visiting_card_file') ? $uploadImage->becomeAmemberUpload($request->file('visiting_card_file'),date("Y-m-d")):'';
        $nid_file = $request->file('nid_file') ? $uploadImage->becomeAmemberUpload($request->file('nid_file'),date("Y-m-d")):'';
        $company_file = $request->file('company_file') ? $uploadImage->becomeAmemberUpload($request->file('company_file'),date("Y-m-d")):'';

        BecomeAMember::create([
            'bn_f_name' => strip_tags($request->input('bn_f_name')),
//            'bn_l_name' => strip_tags($request->input('bn_l_name')),
            'en_f_name' => strip_tags($request->input('en_f_name')),
//            'en_l_name' => strip_tags($request->input('en_l_name')),
            'divisions' => strip_tags($request->input('divisions')),
            'district' => strip_tags($request->input('district')),
            'thana' => strip_tags($request->input('thana')),
            'guardian' => strip_tags($request->input('guardian')),
            'organization' => strip_tags($request->input('organization')),
            'mobile' => strip_tags($request->input('mobile')),
            'telephone' => strip_tags($request->input('telephone')),
            'address' => strip_tags($request->input('address')),
            'vat_number' => strip_tags($request->input('vat_number')),
            'tin_number' => strip_tags($request->input('tin_number')),
            'nid' => strip_tags($request->input('nid')),
            'email' => strip_tags($request->input('email')),
            'trade_license' => $trade_license,
            'tin_file' => $tin_file,
            'image' => $image,
            'vat_file' => $vat_file,
            'visiting_card_file' => $visiting_card_file,
            'nid_file' => $nid_file,
            'company_file' => $company_file,
            'm_status' => '0'
        ]);

        Session::flash('success', "Successfully Inserted");
        return Redirect::back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BecomeAMember  $becomeAMember
     * @return \Illuminate\Http\Response
     */
    public function show(BecomeAMember $becomeAMember)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BecomeAMember  $becomeAMember
     * @return \Illuminate\Http\Response
     */
    public function edit(BecomeAMember $becomeAMember)
    {
        $sql = $becomeAMember;
        return view('admin.become-a-member.edit', compact('sql'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\BecomeAMemberRequest  $request
     * @param  \App\Models\BecomeAMember  $becomeAMember
     * @return \Illuminate\Http\Response
     */
    public function update(BecomeAMemberRequest $request, BecomeAMember $becomeAMember)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BecomeAMember  $becomeAMember
     * @return \Illuminate\Http\Response
     */
    public function destroy(BecomeAMember $becomeAMember)
    {
        //
    }
}
