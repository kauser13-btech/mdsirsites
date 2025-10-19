<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\AdsController;
use App\Http\Controllers\Admin\AdsPositionController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\UsefulLinksController;
use App\Http\Controllers\Admin\GalleryController;
use App\Http\Controllers\Admin\BreakingNewsController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\MemberController;
use App\Http\Controllers\Admin\BundleController;
use App\Http\Controllers\Admin\SourceController;
use App\Http\Controllers\Admin\BecomeAMemberController;
use App\Http\Controllers\Admin\MailController;
use App\Http\Controllers\Admin\StallController;
use App\Http\Controllers\Admin\FileController;
use App\Http\Controllers\Admin\AwardController;
use App\Http\Controllers\Admin\ContributionController;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\RssFeedController;
use App\Http\Controllers\SslCommerzPaymentController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware(['auth', 'verified'])->prefix('admin')->group(function () {
	Route::get('/error403', [DashboardController::class, 'error403']);
	Route::get('/dashboard', [DashboardController::class, 'index']);
	Route::get('/profile', [DashboardController::class, 'profile']);
	Route::post('/profileUpdate', [DashboardController::class, 'profileUpdate']);

	Route::get('/gallery/category', [GalleryController::class, 'category'])->name('gallery.category');
	Route::post('/gallery/categorystore', [GalleryController::class, 'categorystore'])->name('gallery.categorystore');
	Route::get('/gallery/category/{id}/edit', [GalleryController::class, 'categoryEdit'])->name('gallery.categoryEdit');
	Route::post('/gallery/category/categoryupdate', [GalleryController::class, 'categoryupdate'])->name('gallery.categoryupdate');
	Route::post('/gallery/category/destroy', [GalleryController::class, 'categorydestroy'])->name('gallery.categorydestroy');

	Route::get('/post/home-news', [PostController::class, 'homeNews'])->name('post.homeNews');
	Route::post('/post/homeNewsUpdate', [PostController::class, 'homeNewsUpdate'])->name('post.homeNewsUpdate');

	Route::get('/gallery/home-gallery', [GalleryController::class, 'homeGallery'])->name('gallery.homeGallery');
	Route::post('/gallery/homeGalleryUpdate', [GalleryController::class, 'homeGalleryUpdate'])->name('gallery.homeGalleryUpdate');
	Route::post('/post/checkNews', [PostController::class, 'checkNews'])->name('news.check');
	Route::post('/bundle/checkBundle', [BundleController::class, 'checkBundle'])->name('bundle.check');
	Route::post('/post/checkSource', [PostController::class, 'checkSource'])->name('source.check');

    Route::get('/contribution/sort-contrib-list', [ContributionController::class, 'arrangecontrib'])->name('contrib.sort');
    Route::post('/contribution/arrangecontrib-update', [ContributionController::class, 'arrangecontribupdate'])->name('contrib.arrange.update');
    Route::get('/contribution/home-contrib', [ContributionController::class, 'homeContrib'])->name('contrib.homeContrib');
    Route::post('/contribution/homeContribUpdate', [ContributionController::class, 'homeContribUpdate'])->name('contrib.homeContribUpdate');
    Route::post('/contribution/checkContrib', [ContributionController::class, 'checkContrib'])->name('contrib.check');


	Route::resources([
		'menu' => MenuController::class,
		'ads' => AdsController::class,
		'adsposition' => AdsPositionController::class,
		'user' => UserController::class,
		'post' => PostController::class,
		'usefullinks' => UsefulLinksController::class,
		'gallery' => GalleryController::class,
		'breakingnews' => BreakingNewsController::class,
		'slider' => SliderController::class,
		'member' => MemberController::class,
		'source' => SourceController::class,
		'bundle' => BundleController::class,
		'award' => AwardController::class,
		'contribution' => ContributionController::class,
		'become-a-member' => BecomeAMemberController::class,
		'stall' => StallController::class,
		'file' => FileController::class,
	]);

	Route::resource('mail', MailController::class)->except(['create']);

	Route::group(['prefix' => 'news-filemanager', 'middleware' => ['web']], function () {
	    \UniSharp\LaravelFilemanager\Lfm::routes();
	});

});


Route::get('locale/{locale}', [HomeController::class, 'setLocale'])->name('locale');
Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/post', [NewsController::class, 'post'])->name('post');
Route::get('/post/{id}', [NewsController::class, 'details'])->name('post_details');
Route::get('/posts/{slug}', [NewsController::class, 'slugDetails'])->name('post_slug_details');

Route::get('/member/{id}', [PageController::class, 'memberDetails'])->name('memberDetails');
Route::get('/member/verify/{mid}', [PageController::class, 'memberVerify'])->name('memberVerify');

Route::get('/memberinfo/central-committee', [PageController::class, 'centralCommittee'])->name('centralCommittee');
Route::get('/memberinfo/general-member', [PageController::class, 'generalMember'])->name('generalMember');
Route::get('/memberinfo/district-committee', [PageController::class, 'districtCommittee'])->name('districtCommittee');
Route::get('/memberinfo/standing-committee/{cat}', [PageController::class, 'standingCommittee'])->name('standingCommittee');

Route::get('/awards', [PageController::class, 'awards'])->name('awards');
Route::get('/appreciations', [PageController::class, 'appreciations'])->name('appreciations');
Route::get('/contributions', [PageController::class, 'contributions'])->name('contributions');
Route::get('/gallery/{id?}', [PageController::class, 'gallery'])->name('gallery');
Route::get('/events', [PageController::class, 'events'])->name('events');
Route::get('/events/{id}', [PageController::class, 'eventsDetails'])->name('eventsDetails');
Route::get('/govt-circular', [PageController::class, 'govtCircular'])->name('govtCircular');
Route::get('/annual-report', [PageController::class, 'annualReport'])->name('annualReport');
Route::get('/policy', [PageController::class, 'policy'])->name('policy');
Route::get('/about', [PageController::class, 'aboutUs'])->name('aboutUs');
Route::get('/gold-price', [PageController::class, 'goldPrice'])->name('goldPrice');
Route::get('/contact-us', [PageController::class, 'contactUs'])->name('contactUs');

Route::get('/become-a-member', [PageController::class, 'becomeAmember'])->name('becomeAmember');
Route::resource('become-a-member', BecomeAMemberController::class)->except([ 'index', 'create', 'update', 'destroy' ]);

Route::resource('mail', MailController::class)->except(['index', 'create', 'show', 'edit', 'update', 'destroy']);


Route::get('/stall-registration', [PageController::class, 'StallRegistration'])->name('StallRegistration');
Route::resource('stall', StallController::class)->except(['index', 'create', 'show', 'edit', 'update', 'destroy']);

Route::get('/sitemap.xml', [RssFeedController::class, 'sitemap'])->name('sitemap');
// Route::get('/daily-sitemap/sitemap-section.xml', [RssFeedController::class, 'sitemap_section'])->name('sitemap_section');
Route::get('/daily-sitemap/{date}/sitemap.xml', [RssFeedController::class, 'daily_sitemap'])->name('daily_sitemap');
// Route::get('/fb-instant.xml', [RssFeedController::class, 'fb_rss'])->name('fb_rss');


Route::get('/appcleanme', function() {
    Artisan::call('optimize:clear');
    dd('Cache clear');
});

Route::get('/storagelink', function() {
	Artisan::call('storage:link');
	dd('storage link');
});

// Route::get('/telescope-clear', function() {
// 	Artisan::call('telescope:clear');
// 	dd('telescope-clear');
// });

// Route::view('dashboard', 'dashboard')
// 	->name('dashboard')
// 	->middleware(['auth', 'verified']);

// SSLCOMMERZ Start
Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END

if(env('APP_ENV')=='production'){
	URL::forceScheme('https');
}
