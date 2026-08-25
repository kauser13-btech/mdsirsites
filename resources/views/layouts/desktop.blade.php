<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}" prefix="og: http://ogp.me/ns#">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name='viewport' content='width=device-width, initial-scale=1.0, shrink-to-fit=no' />
	<style type="text/css">
		body{display: none;}
		.loading-spinner-area{
		    position: fixed;
		    z-index: 9999;
		    left: 0;
		    top: 0;
		    width: 100%;
		    height: 100%;
		    background: rgba(0, 0, 0, .9);
		}
		.loading-spinner {
		  width: 30px;
		  height: 30px;
		  position: absolute;
		  left: 50%;
		  top: 50%;
		  transform: translate(-50%, -50%);
		}
		.loading-spinner span {
		  display: block;
		  width: 30px;
		  height: 30px;
		  border: 3px solid transparent;
		  border-radius: 50%;
		  border-right-color: rgba(255, 255, 255, 0.7);
		  animation: spinner-anim 0.8s linear infinite;
		}
		@keyframes spinner-anim {
		  from {
		    transform: rotate(0);
		  }
		  to {
		    transform: rotate(360deg);
		  }
		}

	</style>
	<!-- Required meta tags -->
	<link rel="apple-touch-icon" sizes="57x57" href="{{ url('/') }}/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="{{ url('/') }}/favicon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="{{ url('/') }}/favicon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="{{ url('/') }}/favicon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="{{ url('/') }}/favicon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="{{ url('/') }}/favicon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="{{ url('/') }}/favicon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="{{ url('/') }}/favicon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="{{ url('/') }}/favicon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="{{ url('/') }}/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="{{ url('/') }}/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="{{ url('/') }}/favicon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="{{ url('/') }}/favicon/favicon-16x16.png">
	<link rel="manifest" href="{{ url('/') }}/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="{{ url('/') }}/favicon/ms-icon-144x144.png">
	<meta name="theme-color" content="#000000">

	<!-- base -->
	<base href="{{ url('/') }}">

	<!-- Meta -->
	<meta name="language" content="bn">
	<meta http-equiv="Content-Language" content="bn">
	<meta name="coverage" content="Worldwide">
	<meta name="distribution" content="Global">
	<meta name="robots" content="all" >
    <meta name="googlebot" content="all">
    <meta name="googlebot-news" content="all">
    <meta name="Developer" content="Rabiul islam Rabin, Enayet Ullah">
    <meta name="Developed By" content="EWMGL Online Team">

	<meta name="author" content="sayemsobhan">
	<meta name="identifier-URL" content="{{ url('/') }}">

	<!-- open graph tags -->
	<meta property="og:site_name" content="{{ url('/') }}">
	<meta property="og:type" content="article" />


	<!-- CSRF Token -->
	<meta name="csrf-token" content="{{ csrf_token() }}">

	@stack('meta')

	<script type="application/ld+json">
		{
			"@context": "https://schema.org",
			"@type": "Organization",
			"url": "{{ url('/') }}",
			"logo": "{{ url('desktop/img/logo.png') }}",
			"contactPoint" : [
				{
					"@type" : "ContactPoint",
					"telephone" : "+8025503752-55, +8025503751",
					"email" : "info@bajus.org, newstwentyfouronline@gmail.com",
					"contactType" : "customer service"
				}
			],
			"sameAs" : [
				"https://www.facebook.com/sayemsobhananvir4/",
				"https://twitter.com/sayemsobhan4",
				"https://www.youtube.com/user/sayemsobhananvir",
				"https://www.instagram.com/sayemsobhananvir/",
			]
		}
	</script>


	@stack('stylesheet')

	@stack('head_code')

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="{{asset('/desktop/')}}/css/bootstrap.min.css">
	<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-icons.css"> -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="{{asset('/desktop/')}}/css/flexslider.css?v=0.0.2">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">

	<link rel="stylesheet" type="text/css" href="{{asset('/desktop/')}}/css/theme-style.css?v=1.2.5">

</head>

<body onmousedown="return false" onselectstart="return false" onContextMenu="return false">
	<div class="loading-spinner-area">
		<div class="loading-spinner">
		  <span></span>
		</div>
	</div>
<header>

	<nav class="navbar navbar-expand-lg navbar-dark navbar-desktop fixed-top">
		<div class="container">
			<div class="collapse navbar-collapse pt-2" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="{{ url('post') }}">{{ __('general.news') }}</a></li>
					<li class="nav-item"><a class="nav-link" href="{{ url('awards') }}">{{ __('general.awards') }}</a></li>
					<li class="nav-item"><a class="nav-link" href="{{ url('appreciations') }}">{{ __('general.appreciations') }}</a></li>
					<li class="nav-item">
						<a class="navbar-brand logo " href="{{ url('/') }}">
							<img src="https://cdn.bd-pratidin.com/files/shares/abg/ABG-Full-3D-Final-Logo.png" alt="" width="30" height="24">
						</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="{{ url('about') }}">{{ __('general.about') }}</a></li>
					<li class="nav-item"><a class="nav-link" href="{{ url('contributions') }}">{{ __('general.contributions') }}</a></li>
					<li class="nav-item"><a class="nav-link" href="{{ url('gallery') }}">{{ __('general.gallery') }}</a></li>
{{--					@if( app()->getLocale() == 'en' )--}}
{{--						<li class="nav-item"><a class="nav-link" href="{{ route('locale', ['locale'=>'bn']) }}">বাংলা</a></li>--}}
{{--					@else--}}
{{--						<li class="nav-item"><a class="nav-link" href="{{ route('locale', ['locale'=>'en']) }}">English</a></li>--}}
{{--					@endif--}}
				</ul>
			</div>
		</div>
	</nav>

	<nav class="navbar navbar-dark fixed-top navbar-mobile">
		<div class="container-fluid">

			<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand logo" href="{{ url('/') }}"><img src="https://cdn.bd-pratidin.com/files/shares/abg/ABG-Full-3D-Final-Logo.png" alt="" width="30" height="24"></a>
			<a class="navbar-brand" href="#"><i class="bi bi-search"></i></a>

			<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title mx-auto" id="offcanvasNavbarLabel"><img src="https://cdn.bd-pratidin.com/files/shares/abg/ABG-Full-3D-Final-Logo.png" alt="" width="115" height="51"></h5>
					<button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body mt-5">
					<ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link" href="{{ url('/') }}">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ url('post') }}">News</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ url('awards') }}">Awards</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ url('appreciations') }}">Appreciations</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ url('about') }}">About</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ url('contributions') }}">Contributions</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ url('gallery') }}">Gallery</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- </nav> -->

</header>
@hasSection('content')
	@yield('content')
@endif

<footer class="py-5">
	<div class="container">
		<div class="row">
			<div class="col-12 col-md-3">
				<img class="footer-logo" src="https://cdn.bd-pratidin.com/files/shares/abg/ABG-Full-3D-Final-Logo.png" alt="">
			</div>
			<div class="col-12 col-md-4">
				<ul class="social m-0">
					<li>FOLLOW</li>
					<li><a href="https://www.facebook.com/sayemsobhananvir4/" target="_blank"><img src="{{asset('/desktop/')}}/img/facebook.png" alt=""></a></li>
					<li><a href="https://www.linkedin.com/in/sayemsobhananvir/" target="_blank"><img src="{{asset('/desktop/')}}/img/linkedin.png" alt=""></a></li>
					<li><a href="https://www.instagram.com/sayemsobhananvir/" target="_blank"><img src="{{asset('/desktop/')}}/img/instagram.png" alt=""></a></li>
					<li><a href="https://twitter.com/sayemsobhan?s=11" target="_blank"><img src="{{asset('/desktop/')}}/img/twitter-x-circle.png" alt=""></a></li>
					<li><a href="https://www.youtube.com/user/sayemsobhananvir" target="_blank"><img src="{{asset('/desktop/')}}/img/youtube.png" alt=""></a></li>
				</ul>
			</div>
			<div class="col-12 col-md-5">
				<p class="copyright">Copyright © {{ date('Y') }} Sayem Sobhan Anvir. All Rights Reserved.</p>
			</div>
		</div>
	</div>
</footer>

<script src="{{asset('/desktop/')}}/js/jquery-3.6.0.min.js" type="text/javascript"></script>
<script type="text/javascript">$(document).ready(function() {$('body').css('display', 'block');});</script>
<script src="{{asset('/desktop/')}}/js/bootstrap.bundle.js" type="text/javascript"></script>
<script src="{{asset('/desktop/')}}/js/flexslider.js?v=0.0.2" type="text/javascript"></script>
<script src="{{asset('/desktop/')}}/js/theme-script.js?v=1.1.1" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>

{!! Assets::js('footer-script') !!}
@stack('scripts')

</body>
</html>
