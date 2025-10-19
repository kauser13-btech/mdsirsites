<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Support\Facades\Cache;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\GoldSilver;
use Illuminate\Support\Facades\DB;

class NewsController extends Controller
{
    function post(){
//        $currentPage = 'post-'.request()->get('page',1);
        $headerPost = [];
        $homenews = DB::table('homenews')->where('id', 1)->first();
        $ids = json_decode($homenews->value);
        $headerPost[] = Post::isDeleted()->isActive()->where('nid', $ids[0])->first();
        $headerPost[] = Post::isDeleted()->isActive()->where('nid', $ids[1])->first();
        $headerPost[] = Post::isDeleted()->isActive()->where('nid', $ids[2])->first();
        $headerPost[] = Post::isDeleted()->isActive()->where('nid', $ids[3])->first();

        $sql = Post::isDeleted()->where('is_primary', 1)
            ->whereHas('bundle', function ($query) {
                $query->where('is_display', 1);
            })
            ->orWhere('bundle_id', 1)->isActive()->orderBy('start_at', 'DESC')->paginate(27);
        return view('desktop.post', compact('sql', 'headerPost'));
    }

    function details($nid){

        $sql = Post::isDeleted()->isActive()->find($nid);

        if($sql){
            $keyword = explode(',',$sql->meta_keyword);
            $related = Post::select('nid','slug','n_head','start_at','main_image','gallery_id','created_at','is_deleted','deleted_at')->isDeleted()->isActive()
                ->Where(function ($query) use($keyword) {
                    for ($i = 0; $i < count($keyword); $i++){
                        $query->orwhere('meta_keyword', 'like', '%'.trim($keyword[$i]).'%');
                    }
                })
                ->where('nid','!=',$nid)->orderBy('most_read', 'desc')->limit(10)->get();
        }else{
            $related = [];
        }
        $relatedgallery = null;
        if($sql){
            $bundleNews = Post::select('nid','slug','n_head','start_at','main_image','source_id','gallery_id','created_at','is_deleted','deleted_at')
                ->isDeleted()
                ->isActive()
                ->with(['source', 'gallery'])
                ->where('bundle_id','!=',1)
                ->where('bundle_id',$sql->bundle_id)
                ->where('nid','!=',$nid)->orderBy('most_read', 'desc')->get();
            if($sql->gallery_id){
                $relatedgallery = Gallery::isActive()->find($sql->gallery_id);
            }
                
        }else{
            $bundleNews = [];
        }

        return view('desktop.post-details', compact('sql','related','bundleNews', 'relatedgallery'));
    }

    function slugDetails($slug){

        $slug = urlencode($slug);
//        dd($slug);
        $sql = Post::isDeleted()->isActive()->where('slug',$slug)->first();

        if(!$sql){
            $slug = urldecode($slug);
            $sql = Post::isDeleted()->isActive()->where('slug',$slug)->first();
        }
        $relatedgallery = null;
        if($sql){
            $related =Post::isDeleted()->isActive()->where('is_primary', 1)->orWhere('bundle_id', 1)->orderBy('order_by', 'DESC')->limit(10)->get();
            if($sql->gallery_id){
                $relatedgallery = Gallery::isActive()->find($sql->gallery_id);
            }
//            $keyword = explode(',',$sql->meta_keyword);
//            $related = Post::select('nid','slug','n_head','start_at','main_image','created_at','is_deleted','deleted_at')->isDeleted()->isActive()
//                ->Where(function ($query) use($keyword) {
//                    for ($i = 0; $i < count($keyword); $i++){
//                        $query->orwhere('meta_keyword', 'like', '%'.trim($keyword[$i]).'%');
//                    }
//                })
//                ->where('slug','!=',$slug)->orderBy('most_read', 'desc')->limit(10)->get();
        }else{
            $related = [];
        }

        if($sql){
            $bundleNews = Post::select('nid','slug','n_head','start_at','main_image','source_id','gallery_id','created_at','is_deleted','deleted_at')
                ->isDeleted()
                ->isActive()
                ->with(['source', 'gallery'])
                ->where('bundle_id','!=',1)
                ->where('bundle_id',$sql->bundle_id)
                ->where('slug','!=',$slug)->orderBy('most_read', 'desc')->get();
        }else{
            $bundleNews = [];
        }

        return view('desktop.post-details', compact('sql','related','bundleNews','relatedgallery'));
    }

}
