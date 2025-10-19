<?php
namespace App\Helpers;
use App\Helpers\generalHelper;
use Illuminate\Support\Facades\Cache;


class clearCacheHelpers {

	public function postHome()
	{
		Cache::forget('home-post');
	}

	public function postDetails($id)
	{
		Cache::forget('home-post');
		Cache::forget('post-details-'.$id);
	}

	public function breakingNewsStore()
	{
		Cache::forget('breakingNews');
	}

	public function breakingNewsUpdate()
	{
		Cache::forget('breakingNews');
	}

	public function breakingNewsDestroy()
	{
		Cache::forget('breakingNews');
	}

	public function galleryStore($request)
	{
		Cache::forget('gallery_'.$request['category']);
	}

	public function galleryUpdate($request)
	{
		Cache::forget('gallery_'.$request['category']);
	}

	public function galleryDestroy()
	{

	}

	public function GoldSilver()
	{
		Cache::forget('home-GoldSilver');
	}

	public function eCacheHandler($type, $edate)
	{

	}

	public function screenStore($request)
	{

	}

	public function screenDestroy($sql)
	{
		// echo $sql->type;exit;

	}


}

// use App\Helpers\cacheHelpers;
// , cacheHelpers $cacheHelpers->adUpdate();

