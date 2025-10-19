<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AwardRequest;
use App\Models\Bundle;
use App\Models\Source;
use Illuminate\Http\Request;

use Auth;
use Session;
use Redirect;
use DB;
use App\Models\Award;
use App\Http\Requests\PostRequest;
use App\Helpers\clearCacheHelpers;
use App\Helpers\ImageStoreHelpers;

class AwardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Award::isActive()->with(['createdBy','updatedBy'])->orderBy('order_by', 'desc')->paginate(3000);
        return view('admin.award.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.award.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AwardRequest $request, ImageStoreHelpers $uploadImage, clearCacheHelpers $clearCacheHelpers)
    {
        $cover_photo = $request->file('cover_photo') ? $uploadImage->newsImageUpload($request->file('cover_photo'),date("Y-m-d")):'';

        $award = $awardNew = Award::create([
            'name' => strip_tags($request->input('name')),
            'name_bangla' => strip_tags($request->input('name_bangla')),
            'type' => $request->input('type'),
            'description' => htmlentities($request->input('description')),
            'cover_photo' => $cover_photo,
            'received_from' => strip_tags($request->input('received_from')),
            'received_date' => date("Y-m-d", strtotime($request->input('received_date') ? $request->input('received_date') : date("Y-m-d"))),
            'status' => $request->input('status'),
            'created_by' => Auth::user()->id,
        ]);

        $award->update(['order_by' => $awardNew->id]);

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
        $sql = Award::find($id);
        return view('admin.award.edit', compact('sql'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AwardRequest $request, $id, clearCacheHelpers $clearCacheHelpers, ImageStoreHelpers $uploadImage)
    {
        $old_main_image = $request->input('old_main_image');
        $get_main_image = $request->file('cover_photo') ? $request->file('cover_photo'):'';
        $cover_photo = $uploadImage->newsImageEdit($get_main_image,$request->get('created_at'),$old_main_image);

        Award::where('id', $id)->update([
            'name' => strip_tags($request->input('name')),
            'name_bangla' => strip_tags($request->input('name_bangla')),
            'type' => $request->input('type'),
            'description' => htmlentities($request->input('description')),
            'cover_photo' => $cover_photo,
            'received_from' => strip_tags($request->input('received_from')),
            'received_date' => date("Y-m-d", strtotime($request->input('received_date'))),
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
        $news = Award::where('id',$id)->first();
//        $news->is_deleted = 1;
//        $news->deleted_by = Auth::user()->id;
//        $news->save();
        $news->delete();


        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }

    public function homeNews(){
        $sql = DB::table('homenews')->first();
        return view('admin.post.homenews', compact('sql'));
    }

    public function homeNewsUpdate(Request $request){
        DB::table('homenews')->where('id', 1)->update([
            'value' => json_encode($request->input('ids')),
        ]);

        Session::flash('success', "Successfully Updated");
        return Redirect::back();
    }
}
