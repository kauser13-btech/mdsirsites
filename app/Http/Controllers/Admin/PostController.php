<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Bundle;
use App\Models\Gallery;
use App\Models\Source;
use Illuminate\Http\Request;

use Auth;
use Illuminate\Support\Facades\Log;
use Session;
use Redirect;
use DB;
use App\Models\Post;
use App\Http\Requests\PostRequest;
use App\Helpers\clearCacheHelpers;
use App\Helpers\ImageStoreHelpers;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sql = Post::isDeleted()->with(['createdBy','updatedBy','bundle','source','gallery'])->orderBy('order_by', 'desc')->paginate(3000);
        return view('admin.post.index', compact('sql'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $bundles = Bundle::get();
        $sources = Source::get();
        return view('admin.post.create', compact('bundles','sources'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PostRequest $request, ImageStoreHelpers $uploadImage, clearCacheHelpers $clearCacheHelpers)
    {
        $main_image = $request->file('main_image') ? $uploadImage->newsImageUpload($request->file('main_image'),date("Y-m-d")):'';
        $details_main_image = $request->file('details_main_image') ? $uploadImage->newsImageUpload($request->file('details_main_image'),date("Y-m-d")):'';

        $post = Post::create([
            'n_head' => strip_tags($request->input('n_head')),
            'n_subhead' => strip_tags($request->input('n_subhead')),
            'title_info' => strip_tags($request->input('title_info')),
            'category' => $request->input('category'),
            'bundle_id' => $request->input('bundle_id'),
            'source_id' => $request->input('source_id'),
            'gallery_id' => $request->input('gallery_id'),
            'news_link' => strip_tags($request->input('news_link')),
            'tags' => strip_tags($request->input('tags')),
            'meta_keyword' => strip_tags($request->input('meta_keyword')),
            'meta_description' => strip_tags($request->input('meta_description')),
            'n_details' => htmlentities($request->input('n_details')),
            'main_image' => $main_image,
            'details_main_image' => $details_main_image,
            'n_caption' => strip_tags($request->input('n_caption')),
            'n_date' => date("Y-m-d", strtotime($request->input('start_at'))),
            'start_at' => date("Y-m-d H:i:s", strtotime($request->input('start_at'))),
            'n_status' => $request->input('n_status'),
            'created_by' => Auth::user()->id,
        ]);
        if ($post){
            $slug = preg_replace('/\s+/', '-', strip_tags($request->input('n_head'))).'-'.$post->nid;
            $post->update([
                'slug' => $slug,
                'order_by' => $post->nid
            ]);
        }
        if ($post)
            $post->update(['order_by' => $post->nid]);
//        $clearCacheHelpers->postHome();
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
        $bundles = Bundle::get();
        $sources = Source::get();
        $sql = Post::with(['bundle'])->find($id);
        return view('admin.post.edit', compact('sql','bundles','sources'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PostRequest $request, $id, clearCacheHelpers $clearCacheHelpers, ImageStoreHelpers $uploadImage)
    {
        $old_main_image = $request->input('old_main_image');
        $get_main_image = $request->file('main_image') ? $request->file('main_image'):'';
        $main_image = $uploadImage->newsImageEdit($get_main_image,$request->get('created_at'),$old_main_image);

        $old_details_main_image = $request->input('old_details_main_image');
        $get_details_main_image = $request->file('details_main_image') ? $request->file('details_main_image'):'';
        $details_main_image = $uploadImage->newsImageEdit($get_details_main_image,$request->get('created_at'),$old_details_main_image);

        Post::where('nid', $id)->update([
            'n_head' => strip_tags($request->input('n_head')),
            'n_subhead' => strip_tags($request->input('n_subhead')),
            'title_info' => strip_tags($request->input('title_info')),
            'category' => $request->input('category'),
            'bundle_id' => $request->input('bundle_id'),
            'source_id' => $request->input('source_id'),
            'gallery_id' => $request->input('gallery_id'),
            'news_link' => strip_tags($request->input('news_link')),
            'tags' => strip_tags($request->input('tags')),
            'meta_keyword' => strip_tags($request->input('meta_keyword')),
            'meta_description' => strip_tags($request->input('meta_description')),
            'n_details' => htmlentities($request->input('n_details')),
            'main_image' => $main_image,
            'details_main_image' => $details_main_image,
            'n_caption' => strip_tags($request->input('n_caption')),
            'n_date' => date("Y-m-d", strtotime($request->input('start_at'))),
            'start_at' => date("Y-m-d", strtotime($request->input('start_at'))),
            'n_status' => $request->input('n_status'),
            'updated_by' => Auth::user()->id,
        ]);

        $clearCacheHelpers->postDetails($id);
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
        $news = Post::where('nid',$id)->first();
        $news->is_deleted = 1;
        $news->deleted_by = Auth::user()->id;
        $news->save();
        $news->delete();

//        $clearCacheHelpers->postHome();

        Session::flash('success', "Successfully Destroyed");
        return Redirect::back();
    }

    public function homeNews(){
        $sql = DB::table('homenews')->where('id', 1)->first();
        return view('admin.post.homenews', compact('sql'));
    }

    public function homeNewsUpdate(Request $request){
        DB::table('homenews')->where('id', 1)->update([
            'value' => json_encode($request->input('ids')),
        ]);

        Session::flash('success', "Successfully Updated");
        return Redirect::back();
    }


    public function checkNews(Request $request)
    {
        $sql = Post::find($request->get('n_id'));


        return response()->json(['data'=>$sql,'found'=>$sql ? 1 : 0]);
    }

    public function checkSource(Request $request)
    {
        $type = $request->get('type');
        $sourceID = $request->get('source_id');
        $sourceTitle = '';
        $sourceCover = '';
        $found = 0;
        if ($type == 1){
            $sql = Post::find($sourceID);
            if ($sql){
                $found = 1;
                $sourceTitle = $sql->n_head;
                $sourceCover = \App\Helpers\ImageStoreHelpers::showImage('news_images',$sql->created_at,$sql->main_image,'');
            }
        } elseif ($type == 2){
            $sql = Gallery::find($sourceID);
            if ($sql){
                $found = 1;
                $sourceTitle = $sql->name;
                $sourceCover = \App\Helpers\ImageStoreHelpers::showImage('gallery',$sql->id,$sql->cover_photo,'');
            }
        }else{
            $sql = Bundle::find($sourceID);
            if ($sql){
                $news = Post::where('bundle_id', $sql->id)->where('is_primary', 1)->first();
                if ($news){
                    $found = 1;
                    $sourceID = $news->nid;
                    $sourceTitle = $news->n_head;
                    $sourceCover = \App\Helpers\ImageStoreHelpers::showImage('news_images',$news->created_at,$news->main_image,'');
                }
            }


        }



        return response()->json(['data'=>['sourceTitle'=>$sourceTitle,'sourceCover'=>$sourceCover,'sourceID'=>$sourceID,],'found'=>$found]);
    }

}
