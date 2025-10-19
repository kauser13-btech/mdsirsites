<?php

namespace App\Http\Controllers\Admin;

use Auth;
use Session;
use Redirect;
use App\Models\User;
use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Helpers\ImageStoreHelpers;
use Illuminate\Support\Facades\Validator;

class DashboardController extends Controller{

	public function index(Request $request){
        $user = User::where('status','1')->get();
        $newsdate = date('Y-m-d');

      
		return view('admin.dashboard', compact('newsdate','user'));
	}

    public function profile()
    {
        return view('admin.profile');
    }

    public function profileUpdate(Request $request, ImageStoreHelpers $uploadImage)
    {
        $request->validate([
            'name' => 'required',
            'designation' => 'required',
            'profile_img' => 'nullable|mimes:jpg,png,gif',
        ]);

        if ($request->input('password')) {
            $password = Hash::make($request->input('password'));
        }else{
            $password = Auth::user()->password;
        }

        $profile_img = $request->file('profile_img') ? $uploadImage->profileImageUpload($request->file('profile_img'),Auth::user()->created_at,Auth::user()->img):Auth::user()->img;

        User::where('id', Auth::user()->id)->update([
            'name' => $request->input('name'),
            'password' => $password,
            'img' => $profile_img,
            'designation' => $request->input('designation'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
        Session::flash('success', "Successfully Updated");
        return Redirect::back();
    }

	public function error403(){
		return view('admin.errorPage');
	}
}
