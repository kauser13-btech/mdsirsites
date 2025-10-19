<?php
namespace App\Helpers;
use App\Models\Ads;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Facades\Storage;

class ImageStoreHelpers {

	public static function showImage($folder,$imgdate,$image,$size='')
	{
		if($image==''){
			return '/admin/img/image_placeholder.jpg';
		}elseif(strpos($image, 'laravel-filemanager') !== false){
			return asset(Storage::url('public/old'.$image));
		}elseif(strpos($image, 'public/images') !== false){
			return asset(Storage::url('public/old/'.$image));
		}elseif($folder == 'gallery'){
            $size = $size!='' ? $size.'/':'';
            return asset(Storage::url('public/'.$folder.'/gal_'.$imgdate.'/'.$size.$image));
        }else{
			// $folder = date("Y/m/d",strtotime($imgdate));
			$size = $size!='' ? $size.'/':'';
			return asset(Storage::url('public/'.$folder.'/'.date("Y/m/d",strtotime($imgdate)).'/'.$size.$image));
		}

	}

	public function newsImageUpload($file, $imgdate)
	{
		$folder = 'public/news_images/'.date("Y/m/d",strtotime($imgdate));
		$file_name = time().'-'.$file->getClientOriginalName();

		$small = Image::make($file->getRealPath())->resize(132, 88, function ($c) { $c->aspectRatio(); $c->upsize();});
		Storage::put("{$folder}/mob/{$file_name}", $small->stream()->__toString());

		$thumbnail = Image::make($file->getRealPath())->fit(320, 250, function ($c) {
			$c->upsize();
		});
		Storage::put("{$folder}/thumbnails/{$file_name}", $thumbnail->stream()->__toString());

		$large = Image::make($file->getRealPath())->resize(576, 380, function ($c) { $c->aspectRatio(); $c->upsize();});
		Storage::put("{$folder}/{$file_name}", $large->stream()->__toString());

		return $file_name;
	}

	public function newsImageEdit($file, $imgdate, $old_img)
	{
		if ($file=='' && $old_img=='') {
			return '';
		}
		$file_name = $old_img;

		if($file){
			$folder = 'public/news_images/'.date("Y/m/d",strtotime($imgdate));
			$file_name = time().'-'.$file->getClientOriginalName();

			$small = Image::make($file->getRealPath())->resize(132, 88, function ($c) { $c->aspectRatio(); $c->upsize();});
			Storage::delete("{$folder}/mob/{$old_img}");
			Storage::put("{$folder}/mob/{$file_name}", $small->stream()->__toString());

			$thumbnail = Image::make($file->getRealPath())->fit(320, 250, function ($c) {
			    $c->upsize();
			});
			Storage::delete("{$folder}/thumbnails/{$old_img}");
			Storage::put("{$folder}/thumbnails/{$file_name}", $thumbnail->stream()->__toString());

			$large = Image::make($file->getRealPath())->resize(576, 380, function ($c) { $c->aspectRatio(); $c->upsize();});
			Storage::delete("{$folder}/{$old_img}");
			Storage::put("{$folder}/{$file_name}", $large->stream()->__toString());

		}

		return $file_name;
	}


	public function galleryImageUpload($file, $imgdate, $id)
	{
		$folder = 'public/gallery/gal_'.$id;
		$file_name = time().'-'.$file->getClientOriginalName();

		$thumb = Image::make($file->getRealPath())->resize(202, 128, function ($c) { $c->aspectRatio(); $c->upsize();});
		Storage::put("{$folder}/thumb/{$file_name}", $thumb->stream()->__toString());

		$medium = Image::make($file->getRealPath())->resize(306, 204, function ($c) { $c->aspectRatio(); $c->upsize();});
		Storage::put("{$folder}/medium/{$file_name}", $medium->stream()->__toString());

		$large = Image::make($file->getRealPath());
		Storage::put("{$folder}/{$file_name}", $large->stream()->__toString());

		return $file_name;
	}

	public function galleryImageDelete($file, $imgdate, $id)
	{
		$folder = 'public/gallery/gal_'.$id;
		Storage::delete("{$folder}/thumb/{$file}");
		Storage::delete("{$folder}/{$file}");
	}

	public function profileImageUpload($file, $pdate, $oldfile)
	{
		$folder = 'public/profile/'.date("Y/m/d",strtotime($pdate));
		$file_name = time().'-'.$file->getClientOriginalName();

		Storage::delete("{$folder}/{$oldfile}");

		$thumb = Image::make($file->getRealPath())->resize(250, 187, function ($c) { $c->aspectRatio(); $c->upsize();});
		Storage::put("{$folder}/{$file_name}", $thumb->stream()->__toString());

		return $file_name;
	}

	public function becomeAmemberUpload($file, $imgdate)
	{
		$folder = 'public/becomeamember/'.date("Y/m/d",strtotime($imgdate));
		$file_name = time().'-'.$file->getClientOriginalName();
		$filePath = $file->getClientOriginalExtension();

        if($filePath=='pdf'){
            $file->storeAs($folder, $file_name);
        }else{
            $large = Image::make($file->getRealPath());
			Storage::put("{$folder}/{$file_name}", $large->stream()->__toString());
        }

		return $file_name;
	}
}
