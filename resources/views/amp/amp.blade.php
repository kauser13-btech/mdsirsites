<!DOCTYPE html>
<html ⚡>
<head>
<meta charset="utf-8">
@php
	$newsUrl = url('details/'.$details->n_id);
	$main_img = App\Helpers\ImageStoreHelpers::showImage('news_images',$details->created_at,$details->main_image,'thumbnails');
	$og_img = App\Helpers\ImageStoreHelpers::showImage('news_images',$details->created_at,$details->main_image,'og');
@endphp
<meta content="width=device-width,minimum-scale=1,initial-scale=1" name="viewport"/>
<meta content="IE=9; IE=8; IE=7; IE=EDGE; chrome=1" http-equiv="X-UA-Compatible"/>
<meta content="blogger" name="generator"/>

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
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<link href="url('details/'.$details->n_id)" rel="canonical"/>
<!--[if IE]> <script> (function() { var html5 = ("abbr,article,aside,audio,canvas,datalist,details," + "figure,footer,header,hgroup,mark,menu,meter,nav,output," + "progress,section,time,video").split(","); for (var i = 0; i < html5.length; i++) { document.createElement(html5[i]); } try { document.execCommand("BackgroundImageCache", false, true); } catch(e) {} })(); </script> <![endif]-->
<title>{{ $details->n_head }}</title>
<link href="{{ $og_img }}" rel="image_src"/>
<meta content="{{ $details->n_head.' '.$details->title_info }}" property="og:title"/>
<meta content="{{ $newsUrl }}" property="og:url"/>
<meta content="article" property="og:type"/>
<meta content="{{ $og_img }}" property="og:image"/>
<meta content="Bajus TV" name="Author"/>
<!-- Bar theme color -->
<meta content="#cc324b" name="theme-color"/>
<meta content="#cc324b" name="msapplication-navbutton-color"/>
<meta content="#cc324b" name="apple-mobile-web-app-status-bar-style"/>
<style amp-custom="amp-custom">
@font-face{font-family: Solaimanlipi; src:url({{ asset('/mobile/fonts/SolaimanLipi.ttf?v=1') }}) format("opentype")}
/* Material Icon */
@font-face {
	font-family: "Material Icons";
	font-style: normal;
	font-weight: 400;
	src: local("Material Icons"), local("MaterialIcons-Regular"), url(https://fonts.gstatic.com/s/materialicons/v12/2fcrYFNaTjcS6g4U3t-Y5ewrjPiaoEww8AihgqWRJAo.woff) format("woff"), url(https://fonts.gstatic.com/s/materialicons/v12/2fcrYFNaTjcS6g4U3t-Y5ZjZjT5FdEJ140U2DJYC3mY.woff2) format("woff2"), url(https://fonts.gstatic.com/s/materialicons/v12/2fcrYFNaTjcS6g4U3t-Y5bbKic1PW3nceB3q24YFOMg.ttf) format("truetype");
}
.material-icons {font-family: "Material Icons";font-weight:normal;font-style:normal;font-size:inherit;display:inline-block;line-height:1;text-transform:none;letter-spacing:normal;word-wrap:normal;white-space:nowrap;direction:ltr;vertical-align:middle;
/* Support for all WebKit browsers. */
-webkit-font-smoothing: antialiased;
/* Support for Safari and Chrome. */
text-rendering: optimizeLegibility;
/* Support for Firefox. */
-moz-osx-font-smoothing: grayscale;
/* Support for IE. */
font-feature-settings: "liga";
}

/* Framwork */
#navbar-iframe,.quickedit{height:0;visibility:hidden;display:none}
body{background:#f3f3f3;font-family: Solaimanlipi;font-size:13.6px;font-weight:400;line-height:22px;text-decoration:none}
a,a:link,a:visited{color:#f50;text-decoration:none}
a:hover,a:active{color:#111;text-decoration:none}
h2.date-header,#items-thumbnail amp-img{display:none}

/* Header*/
h2.date-header,#items-thumbnail amp-img{display:none}
.header-wrapper{color:#777;min-height:50px;overflow:hidden;position:relative;z-index:999;margin:0 auto;}
#header{background:#fff;float:left;width:auto;overflow:hidden;z-index:999;margin:0;padding:0}
#header-inner{margin:5px;padding:0}
#header-inner a{color:#fff}
#header h1,#header p{font-size:35px;text-transform:uppercase;line-height:12px;color:#fff;padding:10px;margin:0;font-weight:bold}
#header h1 a,#header h1.title a:hover{color:#f07468;text-decoration:none;}
#header img-amp{border:0 none;background:none;width:auto;height:auto;margin:0 auto}
#header .logo{width: 140px;}
#items-thumbnail,.breadcrumbs{padding: 0 5px;}
.breadcrumbs{padding: 10px 5px 0 5px;}
.breadcrumbs span{font-size: 18px;}
/* Navigasi*/
#menu{background:#111;color:#f3f3f3;height:50px;margin:0 auto}
#menu li,#menu ul{margin:0 auto;padding:0;list-style:none}
#menu ul{height:50px;width:1024px}
.li-home{background:#f50;}
.li-home a{font-size:22px;}
#menu li{float:left;display:inline;position:relative;font-size:13px;font-weight:700;text-transform:uppercase}
#menu a{display:block;line-height:50px;padding:0 14px;text-decoration:none;color:#fff}
#menu li a:hover{color:#fff;background-color:#f50;transition:all .3s ease-in}
#menu input{display:none;margin:0;padding:0;width:80px;height:50px;opacity:0;cursor:pointer}
#menu label{font-size:20px;display:none;width:35px;height:50px;line-height:50px;text-align:center;color:#fff;background:#101B88}
#menu label span{font-size:14px;position:absolute;right:45px}
#menu ul.menus{height:auto;overflow:hidden;width:180px;background:#111;position:absolute;z-index:99;display:none;left:-1px}
#menu ul.menus li{display:block;width:100%;font-size:13px;text-transform:none;text-shadow:none}
#menu ul.menus a{color:#fff;text-transform:uppercase}
#menu li:hover ul.menus{display:block}

/* Layout */
.outerpic-wrapper{width:100%;padding:0;margin:0 auto;overflow:hidden}
.headerpic-wrapper{background:#fff;width:100%;padding:0;margin:0 auto 20px;}
.content-wrapper{position:relative;max-width:1024px;margin:0 auto}
.outer-wrapper{position:relative;width:100%;padding:0}
.main-wrapper{width:710px;margin:0;float:left;word-wrap:break-word;overflow:hidden;}
.clear{clear:both}

/* Post */
h3.date-header{text-transform:none;font:normal 12px Arial;color:#666;line-height:1.2em;margin:.1em 0}
.privacy{font:normal normal 11px/normal Tahoma,Verdana,Arial,Sans-Serif;display:block;margin:10px 1px;padding:10px;background-color:#fff2cb}
.post{margin:10px 0;padding:0;background:#fff;}
.post h1,.post h2{font-size:200%;line-height:1.5em;color:#111;margin:0;padding-top:15px;padding-left:15px;padding-bottom:10px;font-weight:700;text-align:left}
.post h1 a,.post h1 a:visited,.post h1 strong,.post h2 a,.post h2 a:visited,.post h2 strong{display:block;text-decoration:none;color:#333;}
.post h1 strong,.post h1 a:hover,.post h2 strong,.post h2 a:hover{color:#f50}
.post-body{padding:15px;font-size:18px;line-height:1.9em;color:#444;margin:1.0em 0 .75em;margin-top:-10px;text-align: justify;}
pre{background:#272822;padding:8px 10px;overflow:auto;max-width:100%;text-align:left;margin:10px auto;border-left:5px solid #f50}
code,pre{font-family: Solaimanlipi;white-space:initial;word-spacing:normal;word-break:normal;hyphens:none;font-size:14px;line-height: 1.3em;color:#589BB7}

/* Post Ads */
.postadstop {display:inline-block;width:100%;height:auto;margin:0 15px 15px 0;text-align: center;}
.postadsbottom{display:block;width:100%;height:auto;margin:20px auto;text-align:center;background: white;padding: 10px 0;}
.postadstop amp-img{width:100%;max-width:300px;height:auto}
.postadsbottom amp-img{width:100%;max-width:728px;height:auto}
.postadstop span, .postadsbottom span{font-size:12px;font-weight:400;color:#555;text-align:center;margin:0 auto 5px;display:block}

/* Img and Postag */
.post-body amp-img {max-width:100%;height:auto;padding:0.1em;}
.post amp-img{max-width:100%;height:auto;padding:0.1em;margin:0 auto}
#header2 am--img,.sidebar amp-img{max-width:100%;width:auto;border:0;max-height:100%;height:300px!mportant}
.postage a{background:#ff4d11;display:inline-block;text-decoration:none;font-size:9px;padding:2px 7px;line-height:18px;color:#fff;border-radius:2px;cursor:pointer}
.postage{margin:15px 0}.postage i{font-size:25px}
.postag a:hover{background:#111;color:#fff}
.postag a{display:inline-block;margin-bottom:-16px;text-decoration:none;font-size:11px;text-transform:uppercase;cursor:pointer}
.postag a:hover{background:0;color:#555}
.postag a:nth-child(2),.postag a:nth-child(3),.postag a:nth-child(4),.postag a:nth-child(5),.postag a:nth-child(6),.postag a:nth-child(7),.postag a:nth-child(8),.postag a:nth-child(9),.postag a:nth-child(10){display:none}

/* Sidebar */
.sidebar-wrapper{width:300px;float:right;word-wrap:break-word;overflow:hidden}
.sidebar h2{background:#444;color:#fff;font-size:14px;top:0;margin:0;padding:8px 0 8px 13px;text-transform:uppercase;}
.sidebar{color:#111;line-height:1em;margin:5px 0;}
.sidebar li{line-height:1.5em;margin:0;padding:5px 0 4px;}
.sidebar li:last-child{background:none}
.sidebar .widget{margin:10px 0 10px 1px;padding:0;}
.sidebar .widget-content{margin:0 auto;padding:0}
.sidebar a:link,.sidebar a:visited{text-decoration:none;line-height:1.5em;font-weight:400;}
.sidebar li a:hover{color:#f50}
.sidebar ul{list-style:none;margin:0;padding:5px 0}

/* footer */
#footer{background:#262626;width:100%;padding:0;margin-top:20px}
#footer1{float:left;width:40%;padding-top:20px}
.footer-wrapper{color:#777;height:100%;line-height:1.2em;overflow:hidden;padding:0;font-size:14px;padding-bottom:20px}
.footer{float:right;width:20%;}
.footer h2{padding-bottom:8px;margin-top:0;margin-bottom:8px;line-height:1.3em;text-transform:uppercase;color:#fff;font-size:18px;font-weight: normal;}
.footer p{color: #FFF;line-height: 1.8em;padding-right: 15px;}

/* Credit */
#credit{background:#111;font-size:12px;color:#eef;width:100%;overflow:hidden;clear:both;padding:10px;line-height:18px;text-align:center;text-transform:capitalize;position:relative}

/* Popular */
.PopularPosts .widget-content ul li .item-title{color:#fff}
#PopularPosts1 h2{background:#CDB724}
.PopularPosts .widget-content{padding:0;box-sizing:border-box}
.PopularPosts .widget-content ul{width:100%;padding:0;list-style-type:none;background:#F5DB2F}
.PopularPosts .widget-content ul li{margin:0;padding:10px 0 10px 60px;position:relative;overflow:hidden;border-top:1px solid #CDB724;border-bottom:1px solid #FFED76;}
.PopularPosts .widget-content ul li:last-child{border-bottom:none;}
.PopularPosts .widget-content ul li .item-title{line-height:1.1em;padding:0 10px 0 0}
.PopularPosts .widget-content ul li .item-title a{text-decoration:none;font-size:15px;font-weight:400;}
.PopularPosts .item-snippet{font-size:14px;font-weight:400;margin-top:10px;line-height:1.1em;}
.PopularPosts .widget-content ul li amp-img{width:100%;height:auto;padding-right:0;transition:all .5s ease-out}
.PopularPosts .widget-content ul li:first-child{border-bottom:none;padding:0}
.PopularPosts .widget-content ul li:first-child .item-thumbnail{margin:0;width:100%;height:180px;overflow:hidden;display:block}
.PopularPosts .widget-content ul li:first-child .item-title{position:absolute;left:0;right:0;bottom:0;text-align:left;padding:15px 20px 15px 60px;background:rgba(0,0,0,.7);z-index:1}
.PopularPosts .widget-content ul li:first-child .item-title a{color:#fff}
.PopularPosts .widget-content ul li .item-thumbnail,.PopularPosts .item-snippet,.blog-pager,#blog-pager{display:none}
.PopularPosts .widget-content ul{padding-left:0;counter-reset:popcount}
.PopularPosts .widget-content ul li .item-title:before{list-style-type:none;padding:0;counter-increment:popcount;content:counter(popcount);position:absolute;left:10px;top:50%;margin-top:-19px;color:#111;font-size:38px;line-height:1;z-index:2}.sidebar .PopularPosts .item-title a{color:#000;text-decoration:none}
.PopularPosts .widget-content ul li:first-child .item-title:before {color:#fff;}

/* Posts */
.post-meta{width:100%;display:block;text-align:left;font-size:11px;color:#777;padding-left:15px;}
.post-meta a{text-decoration:none;text-transform:normal;font-size:9px;color:#777}
.post-meta a:hover{color:#aaa}
.post-meta-span{padding-right:15px;padding-left:5px;margin-bottom:-6px;}
.post-meta-left{float:right;padding-left:5px;border-radius:5px 5px;padding-right:10px;padding-bottom: 6px;background-color:#f3f3f3}
.post-meta-right{float:left;vertical-align:middle;}
.meta-author{margin-bottom:1px}

/* SosMed */
amp-social-share[type="twitter"]{background-color:#55acee;border-radius:2px;background-size:18px 18px;transition:all .4s ease-out}
amp-social-share[type="gplus"]{background-color:#dc4e41;border-radius:2px;background-size:18px 18px;transition:all .4s ease-out}
amp-social-share[type="facebook"]{background-color:#3b5998;border-radius:2px;background-size:18px 18px;transition:all .4s ease-out}
amp-social-share[type="linkedin"]{background-color:#0077b5;border-radius:2px;background-size:18px 18px;transition:all .4s ease-out}
amp-social-share[type="pinterest"]{background-color:#bd081c;border-radius:2px;background-size:18px 18px;transition:all .4s ease-out}

/* color */
a.color-label {font-size:15px;font-weight:700;background:#fff;padding:5px 10px;border-radius:3px;color:#555;text-decoration:none;margin-bottom:15px;transition:all .4s ease-out;}
a:hover.color-label {background:#0379c4;color:#fff}
.post-labels{margin-bottom:20px;position:absolute; width:92%;margin:-265px auto 0;text-align:center}

/* Mobile */
@media screen and (max-width: 1024px){
.main-wrapper{margin-left:0;width:69%;}
}
@media screen and (max-width: 800px){
.content-wrapper{position:relative;width:100%;margin:0 auto}
#menu{width:100%}
#search-box{width:55%}
.headerpic-wrapper{width:100%;margin:0 auto}
.header-wrapper{margin-right:0;width:100%}
#header{text-align:center;width:100%;max-width:none}
#header-inner{margin:10px}
.main-wrapper{margin-left:0;width:100%;}
#menu{position:relative}
#menu ul{background:#111;position:absolute;top:100%;left:0;z-index:3;height:auto;display:none;width:100%;}
#menu ul.menus{width:100%;position:static;padding-left:20px;border:none;}
#menu li{display:block;float:none;width:auto;}
#menu input,#menu label{position:absolute;top:0;right:0;display:block}
#menu input{z-index:4}
#menu input:checked + label{color:#bbb}
#menu input:checked ~ ul{display:block}
#header2{text-align:center;width:100%}
.sidebar-wrapper{width:100%;margin:0 auto;}
}
@media screen and (max-width: 760px){
.outer-wrapper{padding:0}
.search-wrapper,#search-box{width:100%;height:73px;}
.main-wrapper{margin-right:0;width:100%;min-height:0}
.sidebar-wrapper{width:100%;margin:0 auto}
.footer{width:auto;margin:15px}
}
@media screen and (max-width: 480px){
#header img{width:100%}
.header-wrapper{padding-left:0;}
#header-social{display:none}
.search-wrapper,#search-box{width:100%;height:73px;}
.thumbnail-area,.thumbnailjpg{display:none}
.summary,.postag a,.post h1,.post h2{padding-left:20px;padding-right:15px}
.post{padding-bottom:10px}
.footer .widget{margin-left:10px}
#footer1,.footer .widget-content,.footer{float:none;width:100%;width:0 auto;}
}
@media screen and (max-width: 240px){
.header-wrapper{margin-right:0;min-height:0;width:100%}
#header{text-align:center;width:100%;max-width:none;}
#header-inner{margin:10px 0}
#header amp-img{border:0 none;background:none;max-width:95%;height:auto;margin:0 auto}
}
</style>
<style amp-boilerplate="amp-boilerplate">
body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style>
<noscript><style amp-boilerplate="amp-boilerplate">body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
<script async src="https://cdn.ampproject.org/v0.js"></script>
<script async="async" custom-element="amp-sidebar" src="https://cdn.ampproject.org/v0/amp-sidebar-0.1.js"></script>
<script async="async" custom-element="amp-form" src="https://cdn.ampproject.org/v0/amp-form-0.1.js"></script>
<script async="async" custom-element="amp-social-share" src="https://cdn.ampproject.org/v0/amp-social-share-0.1.js"></script>
<script async="async" custom-element="amp-iframe" src="https://cdn.ampproject.org/v0/amp-iframe-0.1.js"></script>
<script async="async" custom-element="amp-youtube" src="https://cdn.ampproject.org/v0/amp-youtube-0.1.js"></script>
<script async="async" custom-element="amp-image-lightbox" src="https://cdn.ampproject.org/v0/amp-image-lightbox-0.1.js"></script>
<script async="async" custom-element="amp-list" src="https://cdn.ampproject.org/v0/amp-list-0.1.js"></script>
<script async="async" custom-template="amp-mustache" src="https://cdn.ampproject.org/v0/amp-mustache-0.2.js"></script>
<script async="async" custom-element="amp-analytics" src="https://cdn.ampproject.org/v0/amp-analytics-0.1.js"></script>
<script async="async" custom-element="amp-carousel" src="https://cdn.ampproject.org/v0/amp-carousel-0.1.js"></script>
<script async="async" custom-element="amp-ad" src="https://cdn.ampproject.org/v0/amp-ad-0.1.js"></script>
<script async="async" custom-element="amp-sticky-ad" src="https://cdn.ampproject.org/v0/amp-sticky-ad-1.0.js"></script>
<script async="async" custom-element="amp-accordion" src="https://cdn.ampproject.org/v0/amp-accordion-0.1.js"></script>
<script async="async" custom-element="amp-facebook" src="https://cdn.ampproject.org/v0/amp-facebook-0.1.js"></script>
<script async="async" custom-element="amp-install-serviceworker" src="https://cdn.ampproject.org/v0/amp-install-serviceworker-0.1.js"></script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "NewsArticle",
        "url" : "{{ $newsUrl }}",
        "articleBody" : "{{ App\Helpers\generalHelper::splitText($details->n_details, 300) }}",
        "articleSection" : "{{ $details->catName->m_nam }}",
        "keywords" : "{{ $details->meta_keyword }}",
        "mainEntityOfPage":{
            "@type":"WebPage",
            "name" : "{{ str_replace('"', "", trim(strip_tags($details->n_head))) }}",
            "@id":"{{ $newsUrl }}"
        },
        "headline": "{{ str_replace('"', "", trim(strip_tags($details->n_head))) }}",
        "image": {
            "@type": "ImageObject",
            "url": "{{ $og_img }}",
            "height": 400,
            "width": 600
        },
        "datePublished": "{{ date('h:i A, F Y, l',strtotime($details->start_at)) }}",
        "dateModified": "{{ date('h:i A, F Y, l',strtotime($details->start_at)) }}",
        "author": {
            "@type": "Person",
            "name": "{{ $details->n_author }}"
        },
        "publisher": {
            "@type": "Organization",
            "name": "Bajusbd.com",
            "logo": {
                "@type": "ImageObject",
                "url": {{ $og_img }},
                "width": 400,
                "height": 600
            }
        },
        "description": "{{ $details->meta_description }}"
    }
    </script>
</head>

<body>
<!-- Start GoogleAnalytics AMP Certify Javascript -->
<amp-analytics id="analytics1" type="googleanalytics">
<script type="application/json">
{
	"vars": {
		"account": "UA-122369094-1"
	},
	"triggers": {
		"trackPageview": {
			"on": "visible",
			"request": "pageview"
		}
	}
}
</script>
</amp-analytics>
<!-- End GoogleAnalytics AMP Certify Javascript -->

<!-- Start Alexa AMP Certify Javascript -->
<amp-analytics type="alexametrics">
<script type="application/json">
{
	"vars": { 
		"atrk_acct": "D3oPr1NErb205V",
		"domain": "Bajusbd.tv" 
	}
}
</script>
</amp-analytics>
<!-- End Alexa AMP Certify Javascript -->

{{-- <amp-sticky-ad layout="nodisplay">
  <amp-ad
    width="320"
    height="100"
    type="doubleclick"
    data-slot="/21674221269/Mobile_Homepage_top_Below_Logo_320x100/formats/sticky"
  ></amp-ad>
</amp-sticky-ad> --}}

<div class="content-wrapper">
	<div class="headerpic-wrapper">
		<div class="header-wrapper">
			<div class="header section" id="header">
				<div class="widget Header" data-version="1" id="Header1">
					<div id="header-inner">
						<div class="titlewrapper">
							<p class="title" itemprop="headline">
								<a href="{{ url('/') }}">
									<amp-img class="logo" alt="Bajusbd" height="36" layout="responsive" src="{{url('mobile/img/logo.png')}}" width="140"></amp-img>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div><!-- /header-wrapper -->
	<nav id="menu">
		<input type="checkbox"/>
		<label><i class="material-icons">&#59632;</i><span>আরও</span></label>
		<ul>
			<li class="li-home"><a href="#" title="Beranda"><i class="material-icons">&#59530;</i></a></li>
			<li itemprop="name"><a href="{{ url('category/national') }}" itemprop="url" title="জাতীয়">জাতীয়</a></li>
			<li itemprop="name"><a href="{{ url('category/politics') }}" itemprop="url" title="রাজনীতি">রাজনীতি</a></li>
			<li itemprop="name"><a href="{{ url('category/international') }}" itemprop="url" title="আন্তর্জাতিক">আন্তর্জাতিক</a></li>
			<li itemprop="name"><a href="{{ url('category/sports') }}" itemprop="url" title="খেলাধুলা">খেলাধুলা</a></li>
			<li itemprop="name"><a href="{{ url('category/entertainment') }}" itemprop="url" title="বিনোদন">বিনোদন</a></li>
			<li itemprop="name"><a href="{{ url('category/lifestyle') }}" itemprop="url" title="জীবনধারা">জীবনধারা</a></li>
			<li itemprop="name"><a href="{{ url('category/life-religion') }}" itemprop="url" title="ধর্ম-জীবন">ধর্ম-জীবন</a></li>
			<li itemprop="name"><a href="{{ url('category/features') }}" itemprop="url" title="ফিচার">ফিচার</a></li>
		</ul>
	</nav>
	<div class="clear"></div>
	<div class="outerpic-wrapper">
		<div class="outer-wrapper">
			<div class="main-wrapper">
				<div class="main section" id="main">
					<div class="widget Blog" data-version="1" id="Blog1">
						<div class="breadcrumbs" id="breadcrumbs">
							<div id="bread-crumbs">
								<span itemscope="itemscope" itemtype="{{url('/')}}"><a href="{{url('/')}}" itemprop="url" title="Home"><span itemprop="title"><i class="material-icons breadcrumbs-icon">&#59530;</i> </span></a></span>&nbsp;<i class="material-icons breadcrumbs-icon">&#58133;</i>
								<span itemscope="itemscope" itemtype="{{ url('category/'.$details->catName->slug) }}"><a href="{{ url('category/'.$details->catName->slug) }}" itemprop="url" title="Travel"><span itemprop="title"> {{ $details->catName->m_name }} </span></a></span>
							</div>
						</div>
						<div class="clear"></div>
						{{-- <div class="postadsbottom">
							<span>বিজ্ঞাপন</span>
							<amp-ad width="320" height="100" type="doubleclick" data-slot="/21674221269/Mobile_Article_Page_320x100_M1"></amp-ad>
						</div> --}}
						<div class="blog-posts hfeed">
							<div class="date-outer">
								<div class="date-posts">
									<div class="post-outer">
										<div class="post hentry">
											<div class="image-wrapper">
												<div class="post-firstimage">
													<div class="firstimage">
														<amp-img alt="{{ strip_tags($details->n_head) }}" height="450px" layout="responsive" src="{{ $main_img }}" width="840"></amp-img>
													</div>
												</div>
											</div>

											@if(strip_tags($details->n_solder))<h5>{!! $details->n_solder !!}</h5>@endif
											<h1>{{ $details->n_head }}</h1>
											@if(strip_tags($details->n_subhead))<h5>{!! $details->n_subhead !!}</h5>@endif
											
											<div class="post-meta">
												<div class="post-meta-left">
													<div class="post-meta-span meta-date">
														<span class="fa fa-calendar-check-o"></span>
														<abbr class="updated published" itemprop="datePublished" title="{{ App\Helpers\generalHelper::bn_date(date("d F, Y H:i", strtotime($details->start_at))) }}">
														 @if(strip_tags($details->n_author))
														 	{!! $details->n_author !!} | 
														 @endif
														 	{{ App\Helpers\generalHelper::bn_date(date("d F, Y H:i", strtotime($details->start_at))) }}
														</abbr>
													</div>
												</div>
												<div class="post-meta-right">
													<amp-social-share data-param-app_id="254325784911610" height="35" type="facebook" width="35" data-param-url="https://www.facebook.com/sharer/sharer.php?u={{ $newsUrl }}">></amp-social-share>
													<amp-social-share data-param-url="https://twitter.com/intent/tweet?url={{$newsUrl}}" height="35" type="twitter" width="35"></amp-social-share>
													<amp-social-share data-param-url="https://www.linkedin.com/shareArticle?mini=true&url={{$newsUrl}}" height="35" type="linkedin" width="35"></amp-social-share>
												</div>
											</div>
											<div class="clear"></div>
											<div class="post-body entry-content">
												<article>
													@php
										                $n_details = html_entity_decode($details->n_details);
										                $sentences = explode("।", $n_details);

										                if(count($sentences)== 1){
										                    $sentences = explode("৷", $n_details);
										                }
										                $first = array_slice($sentences,0 ,4);
										                $last0_1 = array_slice($sentences, 4,4);
										                $last0_2 = array_slice($sentences, 8,4);
										                $last2 = array_slice($sentences, 12,5);
										                $th = array_slice($sentences, 17);

										                if (empty($last0_1)) {
										                    $output = join("। ",$first);
										                }else{
										                    $output = join("। ",$first).'। ';
										                }
										                echo App\Helpers\generalHelper::amplify($output);

										                /*<div class="postadsbottom">
															<span>বিজ্ঞাপন</span>
															<amp-ad width="300" height="250" type="doubleclick" data-slot="/21674221269/National_Mobile_Special_300X250"></amp-ad>
														</div>*/

										                if(empty($last0_2)){
										                    $output2 = join("। ", $last0_1);
										                }else{
										                    $output2 = join("। ", $last0_1).'। ';
										                }
										                echo App\Helpers\generalHelper::amplify($output2);

										                /*<div class="postadsbottom">
															<span>বিজ্ঞাপন</span>
															<amp-ad width="300" height="250" type="doubleclick" data-slot="/21674221269/National_Mobile_Special_300X250"></amp-ad>
														</div>*/

										                if(empty($last2)){
										                    $output2_3 = join("। ", $last0_2);
										                }else{
										                    $output2_3 = join("। ", $last0_2).'। ';
										                }
										                echo App\Helpers\generalHelper::amplify($output2_3);

										                /*<div class="postadsbottom">
															<span>বিজ্ঞাপন</span>
															<amp-ad width="300" height="250" type="doubleclick" data-slot="/21674221269/National_Mobile_Special_300X250"></amp-ad>
														</div>*/

										                if(empty($th)){
										                    $output3 = join("। ", $last2);
										                }else{
										                    $output3 = join("। ", $last2).'। ';
										                }
										                echo App\Helpers\generalHelper::amplify($output3);

										                /*<div class="postadsbottom">
															<span>বিজ্ঞাপন</span>
															<amp-ad width="300" height="250" type="doubleclick" data-slot="/21674221269/National_Mobile_Special_300X250"></amp-ad>
														</div>*/

										                $output4 = join("। ", $th);
										                echo App\Helpers\generalHelper::amplify($output4);
										            @endphp
												</article>
        										@if(!empty($related))
													<div class="clear"></div>
													<p class="postage"><i class="material-icons">&#59539;</i>
								                    @foreach($related as $row)
								                        <li><a href="{{ url('details/'.$row->n_id) }}" rel="tag" >{{ $row->n_head }}</a></li>
								                    @endforeach
													<div class="clear"></div>
												@endif
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="sidebar-wrapper">
			<div class="sidebar section" id="sidebar">

				{{-- <div class="postadsbottom">
					<span>বিজ্ঞাপন</span>
					<amp-ad width="300" height="250" type="doubleclick" data-slot="/21674221269/Mobile_Wizards_300x250_2"></amp-ad>
				</div> --}}

				<div class="widget PopularPosts" data-version="1" id="PopularPosts1">
        			@if(!empty($most_read))
					<h2>পাঠকপ্রিয়</h2>
					<div class="widget-content popular-posts">
						<ul>
    						@foreach($most_read as $row)
								<li>
									<div class="item-content">
										<div class="item-title">
											<a href="{{ url('details/'.$row->n_id) }}" title="{{ $row->n_head }}">{{ $row->n_head }}</a>
										</div>
									</div>
									<div class="clear"></div>
								</li>
                			@endforeach
						</ul>
					</div>
       				 @endif
				</div>
			</div>
		</div>
		<div class="clr"></div>
	</div>
</div>
<div id="footer">
	<div class="content-wrapper">
		<div class="footer-wrapper">
			<div class="footer section" id="footer1">
				{{-- <h2>সম্পাদক : </h2> --}}
			</div>
		</div>
		<div id="credit">
			<div class="content-wrapper">স্বত্ব © ২০২১ Bajus</div>
		</div>
	</div>
</div>
</body>
</html>