<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

use App\Models\News;
use App\Models\Menu;
use App\Models\Post;

class RssFeedController extends Controller
{
	/**
	 * Show the application dashboard.
	 *
	 * @return \Illuminate\Contracts\Support\Renderable
	 */
	public function sitemap(){
		$urldetails = Post::isDeleted()->isActive()->select('nid','n_head','main_image','start_at','created_at','is_deleted','deleted_at','n_date','n_details')->orderBy('n_date', 'desc')->limit(1000)->get();
		return response()->view('rssfeed.sitemap',compact('urldetails'))->header('Content-Type', 'text/xml');
	}

	public function sitemap_section(){
		$urlslist = Menu::where('m_status',1)->where('m_visible',1)->orderBy('m_order', 'ASC')->get();
		return response()->view('rssfeed.sitemap-section',compact('urlslist'))->header('Content-Type', 'text/xml');
	}
	public function daily_sitemap($getDate){
		$urldetails = Post::isDeleted()->isActive()->select('nid','n_head','main_image','start_at','created_at','is_deleted','deleted_at','n_date','n_details')->where('n_date',$getDate)->orderBy('n_date', 'desc')->get();
		return response()->view('rssfeed.sitemap-daily',compact('urldetails'))->header('Content-Type', 'text/xml');
		
	}
	public function fb_rss(){
		$rss_data = Post::isDeleted()->isActive()->select('nid','n_head','main_image','start_at','created_at','is_deleted','deleted_at','n_date','n_details','n_author','meta_description')->where('instant_articles',1)->orderBy('n_date', 'desc')->limit(100)->get();
		return response()->view('rssfeed.fb_rss',compact('rss_data'))->header('Content-Type', 'text/xml');
	}

}
