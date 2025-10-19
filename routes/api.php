<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\TagManager;
use App\Http\Controllers\Admin\AdsController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\AdsPositionController;
use App\Http\Controllers\Admin\GalleryController;
use App\Http\Controllers\AppController;
use App\Http\Controllers\DetailsController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/findparentmenu/{Edition}/{mid}/{txt?}', [MenuController::class, 'apiFindParentMenu']);
Route::get('/findposition/{device}/{page}/{txt?}', [AdsPositionController::class, 'apiFindPosition']);
Route::get('/findgallerycat/{type}', [GalleryController::class, 'apiFindGalleryCat']);

Route::get('/findtags/{txt?}', [TagManager::class, 'apiFindTags']);
Route::post('/timeline', [DetailsController::class, 'timeline']);


Route::get('/home', [AppController::class, 'home']);
Route::get('/menu_list', [AppController::class, 'menu_list']);
Route::get('/categorynews/{m_id}', [AppController::class, 'categorynews']);
Route::get('/categoryvideos/{m_id}', [AppController::class, 'categoryvideos']);
Route::get('/news_details/{n_id}', [AppController::class, 'details']);
