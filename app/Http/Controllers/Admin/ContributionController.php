<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\ImageStoreHelpers;
use App\Http\Controllers\Controller;
use App\Http\Requests\ContributionRequest;
use App\Models\Post;
use Illuminate\Http\Request;


use Auth;
use Session;
use Redirect;
use DB;
use App\Models\Contribution;
use App\Helpers\clearCacheHelpers;
use App\Http\Requests\BundleRequest;

class ContributionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Contribution::active()->with(['createdBy','updatedBy','source'])->get();
        return view('admin.contribution.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.contribution.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ContributionRequest $request, ImageStoreHelpers $uploadImage, clearCacheHelpers $clearCacheHelpers)
    {
        $cover_photo = $request->file('cover_photo') ? $uploadImage->newsImageUpload($request->file('cover_photo'),date("Y-m-d")):'';

        $contribution = Contribution::create([
            'name' => strip_tags($request->input('name')),
            'name_bangla' => strip_tags($request->input('name_bangla')),
            'source_id' => $request->input('source_id'),
            'cover_photo' => $cover_photo,
            'type' => $request->input('type'),
            'status' => $request->input('status'),
            'created_by' => Auth::user()->id,
        ]);

        if ($contribution)
            $contribution->update(['order_by' => $contribution->id]);


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
        $sql = Contribution::find($id);
        return view('admin.contribution.edit', compact('sql'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ContributionRequest $request, ImageStoreHelpers $uploadImage, $id, clearCacheHelpers $clearCacheHelpers)
    {
        $old_main_image = $request->input('old_main_image');
        $get_main_image = $request->file('cover_photo') ? $request->file('cover_photo'):'';
        $cover_photo = $uploadImage->newsImageEdit($get_main_image,$request->get('created_at'),$old_main_image);

        Contribution::where('id', $id)->update([
            'name' => strip_tags($request->input('name')),
            'name_bangla' => strip_tags($request->input('name_bangla')),
            'source_id' => $request->input('source_id'),
            'cover_photo' => $cover_photo,
            'type' => $request->input('type'),
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
        Contribution::where('id', $id)->delete();
        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function arrangecontrib()
    {
        $sql = Contribution::active()->with(['createdBy','updatedBy','source'])->orderBy('order_by', 'desc')->get();
        return view('admin.contribution.arrangecontrib', compact('sql'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function arrangecontribupdate(Request $request){
        $n_order = $request->input('n_order');
        $n_id = $request->input('n_id');
        foreach ($request->input('order_id') as $key => $value) {
            Contribution::where('id', $n_id[$key])->update([
                'order_by' => $n_order[$key]
            ]);
        }

        Session::flash('success', "Successfully sorted");
        return Redirect::back();
    }

    public function homeContrib(){
        $sql = DB::table('homenews')->where('id', 2)->first();
        return view('admin.contribution.homecontrib', compact('sql'));
    }

    public function homeContribUpdate(Request $request){
        DB::table('homenews')->where('id', 2)->update([
            'value' => json_encode($request->input('ids')),
        ]);

        Session::flash('success', "Successfully Updated");
        return Redirect::back();
    }


    public function checkContrib(Request $request)
    {
        $sql = Contribution::find($request->get('n_id'));


        return response()->json(['data'=>$sql,'found'=>$sql ? 1 : 0]);
    }

}
