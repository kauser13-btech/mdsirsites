<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;


use Auth;
use Session;
use Redirect;
use App\Models\Bundle;
use App\Helpers\clearCacheHelpers;
use App\Http\Requests\BundleRequest;

class BundleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Bundle::get();
        return view('admin.bundle.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.bundle.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BundleRequest $request, clearCacheHelpers $clearCacheHelpers)
    {
        $primaryNews = Post::find($request->input('primary_news_id'));
        if ($primaryNews){
            if ($request->input('dependent_bundle_id')){
                Bundle::where('id', $request->input('dependent_bundle_id'))->update([
                    'is_display' => 0,
                ]);
            }
            $bundle = Bundle::create([
                'name' => strip_tags($request->input('name')),
                'status' => $request->input('status'),
                'is_display' => $request->input('is_display'),
                'dependent_id' => $request->input('dependent_bundle_id'),
                'dependent_text' => $request->input('dependent_bundle_title'),
                'lang' => $request->input('lang'),
                'created_by' => Auth::user()->id,
            ]);

            $primaryNews->update([
                'is_primary' => 1,
                'bundle_id' => $bundle->id,
                'updated_by' => Auth::user()->id,
            ]);
            if ($request->input('news_id')) {
                foreach ($request->input('news_id') as $listId) {
                    $listNews = Post::find($listId);
                    if ($listNews) {
                        if ($listNews->nid != $primaryNews->nid)
                            $listNews->update([
                                'is_primary' => 0,
                                'bundle_id' => $bundle->id,
                                'updated_by' => Auth::user()->id,
                            ]);
                    }

                }
            }


            $msg = "Successfully Inserted";
        }else
            $msg = "Please Insert Main News ID properly";

        Session::flash('success', $msg);
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
        $sql = Bundle::with(['createdBy','updatedBy','posts'])->find($id);
        $primaryNews = Post::where('bundle_id', $id)->where('is_primary', 1)->first();
        return view('admin.bundle.edit', compact('sql', 'primaryNews'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(BundleRequest $request, $id, clearCacheHelpers $clearCacheHelpers)
    {

        if ($request->input('dependent_bundle_id')){
            Bundle::where('id', $request->input('dependent_bundle_id'))->update([
                'is_display' => 0,
            ]);
        }
        Bundle::where('id', $id)->update([
            'name' => strip_tags($request->input('name')),
            'status' => $request->input('status'),
            'is_display' => $request->input('is_display'),
            'dependent_id' => $request->input('dependent_bundle_id'),
            'dependent_text' => $request->input('dependent_bundle_title'),
            'lang' => $request->input('lang'),
            'updated_by' => Auth::user()->id,
        ]);
        $bundleNews = Post::where('bundle_id', $id)->get();
        foreach ($bundleNews as $bnews){
            $bnews->update([
                'is_primary' => 0,
                'bundle_id' => 1,
                'updated_by' => Auth::user()->id,
            ]);
        }

        $primaryNews = Post::find($request->input('primary_news_id'));
        if ($primaryNews){
            $bundle = Bundle::where('id', $id)->update([
                'name' => strip_tags($request->input('name')),
                'status' => $request->input('status'),
                'is_display' => $request->input('is_display'),
                'dependent_id' => $request->input('dependent_bundle_id'),
                'dependent_text' => $request->input('dependent_bundle_title'),
                'lang' => $request->input('lang'),
                'updated_by' => Auth::user()->id,
            ]);

            $primaryNews->update([
                'is_primary' => 1,
                'bundle_id' => $id,
                'updated_by' => Auth::user()->id,
            ]);

            if ($request->input('news_id')) {
                foreach ($request->input('news_id') as $listId) {
                    $listNews = Post::find($listId);
                    if ($listNews) {
                        if ($listNews->nid != $primaryNews->nid)
                            $listNews->update([
                                'is_primary' => 0,
                                'bundle_id' => $id,
                                'updated_by' => Auth::user()->id,
                            ]);
                    }

                }
            }


            $msg = "Successfully Updated";
        }else
            $msg = "Please Insert Main News ID properly";


        Session::flash('success', $msg);
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
        $bundleNews = Post::where('bundle_id', $id)->get();
        foreach ($bundleNews as $bnews){
            $bnews->update([
                'is_primary' => 0,
                'bundle_id' => 1,
                'updated_by' => Auth::user()->id,
            ]);
        }
        Bundle::where('id', $id)->delete();
        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }


    public function checkBundle(Request $request)
    {
        $sql = Bundle::where('id',$request->get('b_id'))->first();


        return response()->json(['data'=>$sql,'found'=>$sql ? 1 : 0]);
    }


}
