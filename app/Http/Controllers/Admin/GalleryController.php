<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Photo;
use Illuminate\Http\Request;

use Auth;
use DB;
use Session;
use Redirect;
use App\Models\User;
use App\Models\Gallery;
use App\Helpers\clearCacheHelpers;
use App\Models\GalleryCategory;
use App\Helpers\ImageStoreHelpers;
use App\Http\Requests\GalleryRequest;

class GalleryController extends Controller
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$sql = Gallery::isActive()->with(['createdBy','updatedBy','photo'])->orderBy('id', 'desc')->paginate(2000);
		return view('admin.gallery.index', compact('sql'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		return view('admin.gallery.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(GalleryRequest $request, ImageStoreHelpers $uploadImage, clearCacheHelpers $clearCacheHelpers)
	{

		$gallery = Gallery::create([
			'name' => strip_tags($request->input('name')),
			'name_bangla' => strip_tags($request->input('name_bangla')),
			'caption' => strip_tags($request->input('caption')),
			'keywords' => $request->input('keywords'),
			'description' => strip_tags($request->input('description')),
			'event_date' => $request->input('event_date'),
			'status' => $request->input('status'),
            'created_by' => Auth::user()->id,
		]);

        $cover_photo = $uploadImage->galleryImageUpload($request->file('cover_photo'),date("Y-m-d",strtotime($request->input('event_date'))), $gallery->id);
        $gallery->update([
        'cover_photo' => $cover_photo
    ]);
        $images = [];
        $i=0;
        if($request->file('images')){
            foreach ($request->file('images') as $image) {
                Photo::create([
                    'caption' => trim($request->input('cap')[$i]) ? strip_tags($request->input('cap')[$i]):'',
                    'photo_order' => $request->input('ord')[$i] ? $request->input('ord')[$i]:0,
                    'link' => $uploadImage->galleryImageUpload($image,date("Y-m-d",strtotime($request->input('event_date'))), $gallery->id),
                    'gallery_id' => $gallery->id,
                    'status' => $request->input('status'),
                    'created_by' => Auth::user()->id,
                ]);
                $i++;
            }
        }

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
		$gallery = Gallery::with(['createdBy','updatedBy','photo'])->find($id);

		return view('admin.gallery.edit', compact('gallery'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(GalleryRequest $request, $id, ImageStoreHelpers $uploadImage, clearCacheHelpers $clearCacheHelpers)
	{
		if($request->file('cover_photo')){
			$cover_photo = $uploadImage->galleryImageUpload($request->file('cover_photo'),date("Y-m-d",strtotime($request->input('created_at'))),$id);
			$uploadImage->galleryImageDelete($request->input('old_cover_photo'),date("Y-m-d",strtotime($request->input('created_at'))),$id);
		}else{
			$cover_photo = $request->input('old_cover_photo');
		}

		Gallery::where('id', $id)->update([
            'name' => strip_tags($request->input('name')),
            'name_bangla' => strip_tags($request->input('name_bangla')),
            'caption' => strip_tags($request->input('caption')),
            'cover_photo' => $cover_photo,
            'keywords' => $request->input('keywords'),
            'description' => strip_tags($request->input('description')),
            'event_date' => $request->input('event_date'),
            'status' => $request->input('status'),
            'updated_by' => Auth::user()->id,
		]);


        $old_img = $request->input('old_img');
        $old_img_id = $request->input('old_img_id');
        $old_cap = $request->input('old_cap');
        $old_ord = $request->input('old_ord');
        $del_img = $request->input('del')?$request->input('del'):[];
        $images = [];
        $i=0;
        if ($old_img) {
            foreach ($old_img_id as $value) {
                if (in_array($value, $del_img)) {
                    $photo = Photo::find($value);
                    $uploadImage->galleryImageDelete($photo->link,date("Y-m-d",strtotime($request->input('created_at'))),$id);
                    $photo->delete();
                }else{
                    Photo::where('id', $value)->update([
                        'photo_order' => $old_ord[$i] ? $old_ord[$i]:0,
                        'caption' => strip_tags($old_cap[$i]),
                        'updated_by' => Auth::user()->id,
                    ]);
                }
                $i++;
            }
        }

        if($request->file('images')){
            $j=0;
            foreach ($request->file('images') as $image) {
                Photo::create([
                    'caption' => trim($request->input('cap')[$j]) ? strip_tags($request->input('cap')[$j]):'',
                    'photo_order' => $request->input('ord')[$j] ? $request->input('ord')[$j]:0,
                    'link' => $uploadImage->galleryImageUpload($image,date("Y-m-d",strtotime($request->input('created_at'))),$id),
                    'gallery_id' => $id,
                    'status' => $request->input('status'),
                    'created_by' => Auth::user()->id,
                ]);
                $j++;
            }
        }


        Session::flash('success', "Successfully Inserted");
        return Redirect::back();
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id, GalleryRequest $request, ImageStoreHelpers $uploadImage, clearCacheHelpers $clearCacheHelpers)
	{
		$row = Gallery::with(['createdBy','updatedBy','photo'])->find($id);

		$uploadImage->galleryImageDelete($row->cover_photo,$row->event_date,$id);
        $photos =  $row->photo;
		$row->delete();

		foreach ($photos as $photo){
            $uploadImage->galleryImageDelete($photo->link,$row->event_date,$id);
            $photo->delete();
        }

        Session::flash('success', "Successfully destroy");
        return Redirect::back();
	}

	public function apiFindGalleryCat($type)
	{
		$sql = GalleryCategory::where('type',$type)->where('g_status',1)->get();
		foreach ($sql as $value) {
			$results[] = [
				"id"=> $value->id,
				"text"=> $value->name
			];
		}
		$arr = [
			"results" => $results
		];

		return response()->json($arr);
	}

    public function homeGallery(){
        $sql = DB::table('home_gallery')->first();
        return view('admin.gallery.homegallery', compact('sql'));
    }

    public function homeGalleryUpdate(Request $request){
        DB::table('home_gallery')->where('id', 1)->update([
            'value' => json_encode($request->input('ids')),
        ]);

        Session::flash('success', "Successfully Updated");
        return Redirect::back();
    }
}
