<?php

namespace App\Http\Controllers;

use App\Models\Ads;
use App\Models\Award;
use App\Models\Contribution;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cache;

use DB;
use Carbon\Carbon;
use App\Models\Post;
use App\Models\Gallery;
use App\Models\Slider;
use Jenssegers\Agent\Agent;
use App\Models\GoldSilver;
use App\Models\BreakingNews;
use App\Models\UsefulLinks;

class HomeController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(){
//        App::setLocale('bn');
        if(\Session::has('locale'))
        {
            App::setlocale(\Session::get('locale'));
        }
        $post = [];
        $homenews = DB::table('homenews')->where('id', 1)->first();
        $ids = json_decode($homenews->value);
        $post[] = Post::isDeleted()->isActive()->where('nid', $ids[0])->first();
        $post[] = Post::isDeleted()->isActive()->where('nid', $ids[1])->first();
        $post[] = Post::isDeleted()->isActive()->where('nid', $ids[2])->first();
        $post[] = Post::isDeleted()->isActive()->where('nid', $ids[3])->first();
        $post[] = Post::isDeleted()->isActive()->where('nid', $ids[4])->first();
        $post[] = Post::isDeleted()->isActive()->where('nid', $ids[5])->first();
        // $post[] = Post::isDeleted()->isActive()->where('nid', $ids[6])->first();
        // $post[] = Post::isDeleted()->isActive()->where('nid', $ids[7])->first();

        $contributions = [];
        $homecontrib = DB::table('homenews')->where('id', 2)->first();
        $cids = json_decode($homecontrib->value);
        $contributions[] = Contribution::active()->with(['createdBy','updatedBy','source'])->where('id', $cids[0])->first();
        $contributions[] = Contribution::active()->with(['createdBy','updatedBy','source'])->where('id', $cids[1])->first();
        $contributions[] = Contribution::active()->with(['createdBy','updatedBy','source'])->where('id', $cids[2])->first();

        $galleryLeft = [];
        $galleryRight = [];
        $homeGallery = DB::table('home_gallery')->first();
        $gids = json_decode($homeGallery->value);
        $galleryLeft[] = Gallery::isActive()->with(['createdBy','updatedBy','photo'])->where('id', $gids[0])->first();
        $galleryLeft[] = Gallery::isActive()->with(['createdBy','updatedBy','photo'])->where('id', $gids[1])->first();
        $galleryRight[] = Gallery::isActive()->with(['createdBy','updatedBy','photo'])->where('id', $gids[2])->first();
        $galleryRight[] = Gallery::isActive()->with(['createdBy','updatedBy','photo'])->where('id', $gids[3])->first();

        $appreciations = Award::isActive()->with(['createdBy','updatedBy'])->where('type', 2)->orderBy('received_date', 'desc')->get();

        $awards = Award::isActive()->with(['createdBy','updatedBy'])->where('type', '!=', 2)->orderBy('received_date', 'desc')->get();
//        $contributions = Contribution::active()->with(['createdBy','updatedBy','source'])->orderBy('order_by', 'desc')->take(3)->get();

        return view('desktop.home',compact('post', 'galleryLeft', 'galleryRight', 'appreciations','awards','contributions'));

    }

    public function setLocale($locale)
    {
        \Log::info($locale);
        App::setLocale($locale);
        session()->put('locale', $locale);
        \Log::info(app()->getLocale());
        return redirect()->back();
    }
// $related = Post::whereHas('tags', function ($q) use ($post) {
// return $q->where('name', $post->tags->pluck('name'));
// })
// ->where('id', '!=', $post->id) // So you won't fetch same post
// ->get();

}
