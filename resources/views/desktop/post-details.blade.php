@extends('layouts.desktop')

@section('content')
    <div class="container mt-5">
        <div class="news-details pt-5">
            <a class="back-btn" href="{{ url('post') }}"><i class="fa fa-chevron-left" aria-hidden="true"></i> All news</a>
            <div class="row">
                <div class="col-12 col-md-8 col-xl-9">
                    <div class="news-article mt-5">
                        @if($sql)
                            <h1 class="mb-3">{{ $sql->n_subhead }}</h1>

                            @if($sql->details_main_image)
                                <img class="w-100 me-3 mb-3" src="{{ $sql->details_main_image ? App\Helpers\ImageStoreHelpers::showImage('news_images',$sql->created_at,$sql->details_main_image,'') : asset('admin/img/image_placeholder.jpg')  }}" alt="{{ strip_tags($sql->n_head) }}">
                            @endif

                            {!! htmlspecialchars_decode($sql->n_details)  !!}

                            @if($sql->news_link)
                                <b>SOURCE : </b><a href="{{ $sql->news_link }}" target="_blank" style="text-decoration: none;">{{$sql->source->name}}</a>
                            @endif
                        @else
                            <h1 class="mb-3">Not Found</h1>
                        @endif
                    </div>

                    @if(count($bundleNews) > 0 )
                        <div class="more-news mt-5">
                            <h3>Also Published In</h3>
                            <div class="mt-3">
                                @foreach($bundleNews as $bundle)
                                    <a class="item" href="{{ url('/posts/'.$bundle->slug) }}">{{$bundle->source->name}}</a>
                                @endforeach
                            </div>
                        </div>
                    @endif

                </div>
                <div class="col-12 col-md-4 col-xl-3">
                    @if( $sql->gallery_id != null )
                        <div class="gallery pt-5">
                            
                            <div class="row mt-5 more-gallery">
                                <div class="col-12 col-sm-12 col-md-12">
                                    <a class="item" href="{{ url('/gallery/'.$sql->gallery->id) }}">
                                        <div class="item-img">
                                            <img class="w-100 rounded mb-3" src="{{ \App\Helpers\ImageStoreHelpers::showImage('gallery',$sql->gallery->id,$sql->gallery->cover_photo,'') }}" alt="">
                                        </div>
                                        <p style="
                                        box-sizing: border-box;
                                        margin-top: 0;
                                        margin-bottom: .5rem;
                                        line-height: 1.2;
                                        display: block;
                                        color: #FFB630;
                                        text-transform: uppercase;
                                        font-weight: 900;
                                        font-size: 16px;">More Images</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endif
                    @if(count($related) > 0 )
                        <div class="more-news mt-5">
                            <h3>More News</h3>
                            <div class="row">
                                <ul class="mt-3">
                                    @foreach($related as $rel)
                                    <li><a href="{{ url('/posts/'.$rel->slug) }}" class="row">
                                        <span class="col-12 col-md-4">
                                            <img class="w-100 mb-3" src="{{ $rel->main_image ? App\Helpers\ImageStoreHelpers::showImage('news_images',$rel->created_at,$rel->main_image,'thumbnails') : asset('admin/img/image_placeholder.jpg')   }}" alt="{{ strip_tags($rel->n_head) }}">
                                        </span>
                                        <span class="col-12 col-md-8 txt">
                                            <p>{{ $rel->n_head }}</p>
                                        </span>
                                    </a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    @endif
                </div>
            </div>


        </div>


        <div class="clearfix"></div>
    </div>
@endsection

@push('meta')
<title>{{ $sql ? $sql->n_head : '' }}</title>
    <meta property="og:title" content="{{ $sql ? $sql->n_head : '' }}" />
    <meta name="keywords" content="{{ $sql ? $sql->meta_keyword : ''}}">
    <meta name="description" content="{{ $sql ? $sql->meta_description : ''}}">
    <meta property="og:description" content="{{ $sql ? $sql->meta_description : '' }}" />
    <meta property="og:image" content="{{ $sql ? App\Helpers\ImageStoreHelpers::showImage('news_images',$sql->created_at,$sql->main_image,'') : '' }}" />
    <link rel="image_src" href="{{ $sql ? App\Helpers\ImageStoreHelpers::showImage('news_images',$sql->created_at,$sql->main_image,'') : '' }}">
    <meta property="og:url" content="{{ $sql ? url('post').'/'.$sql->nid : ''}}" />
    <meta name="url" content="{{ $sql ? url('post').'/'.$sql->nid : '' }}">
    <link rel="canonical" href="{{ $sql ? url('post').'/'.$sql->nid : '' }}">
{{--    <link rel="amphtml" href="{{url('ampdetails/'.$sql->n_id)}}">--}}
{{--    <meta property="article:published_time" content="{{date('c', strtotime($sql->start_at))}}.000Z" />--}}
{{--    <meta property="article:modified_time" content="{{date('c', strtotime($sql->start_at))}}.000Z" />--}}
{{--    <meta itemprop="published_date" content="{{strtotime($sql->start_at)}}" />--}}
{{--    <meta property="og:updated_time" content="{{date('c', strtotime($sql->start_at))}}.000Z" />--}}
{{--    <meta property="og:image:alt" content="{{ str_replace('"', "", trim(strip_tags($sql->n_head))) }}" />--}}
{{--    <meta property="og:image:width" content="600" />--}}
{{--    <meta property="og:image:height" content="400" />--}}

{{--    <!-- Twitter Meta Tags -->--}}
{{--    <meta name="twitter:card" content="summary_large_image">--}}
{{--    <meta property="twitter:domain" content="bajus.org">--}}
{{--    <meta property="twitter:url" content="{{ $newsUrl }}">--}}
{{--    <meta name="twitter:title" content="{{ $sql->n_head.' '.$sql->title_info }}">--}}
{{--    <meta name="twitter:description" content="{{ $sql->meta_description }}">--}}
{{--    <meta name="twitter:image" content="{{ $main_img }}">--}}

{{--    <script type="application/json">--}}
{{--    {--}}
{{--        "@context": "https://schema.org",--}}
{{--        "@type": "NewsArticle",--}}
{{--        "url" : "{{ $newsUrl }}",--}}
{{--        "articleBody" : "{!! App\Helpers\generalHelper::splitText($sql->n_details, 300) !!}",--}}
{{--        "articleSection" : "Bajus",--}}
{{--        "keywords" : "{{ $sql->meta_keyword }}",--}}
{{--        "mainEntityOfPage":{--}}
{{--            "@type":"WebPage",--}}
{{--            "name" : "{{ str_replace('"', "", trim(strip_tags($sql->n_head))) }}",--}}
{{--            "@id":"{{ $newsUrl }}"--}}
{{--        },--}}
{{--        "headline": "{{ str_replace('"', "", trim(strip_tags($sql->n_head))) }}",--}}
{{--        "image": {--}}
{{--            "@type": "ImageObject",--}}
{{--            "url": "{{ $main_img }}",--}}
{{--            "height": 400,--}}
{{--            "width": 600--}}
{{--        },--}}
{{--        "datePublished": "{{ date('h:i A, F Y, l',strtotime($sql->start_at)) }}",--}}
{{--        "dateModified": "{{ date('h:i A, F Y, l',strtotime($sql->start_at)) }}",--}}
{{--        "author": {--}}
{{--            "@type": "Person",--}}
{{--            "name": "{{ $sql->n_author }}"--}}
{{--        },--}}
{{--        "publisher": {--}}
{{--            "@type": "Organization",--}}
{{--            "name": "bajus.org",--}}
{{--            "logo": {--}}
{{--                "@type": "ImageObject",--}}
{{--                "url": "{{ $main_img }}",--}}
{{--                "width": 400,--}}
{{--                "height": 600--}}
{{--            }--}}
{{--        },--}}
{{--        "description": "{{ $sql->meta_description }}"--}}
{{--    }--}}
{{--    </script>--}}
{{--    <script type="application/ld+json">--}}
{{--    {--}}
{{--        "@context": "https://schema.org",--}}
{{--        "@type": "ImageObject",--}}
{{--        "url": "{{ $main_img }}",--}}
{{--        "height": 600,--}}
{{--        "width": 400--}}
{{--    }--}}
{{--    </script>--}}
{{--    <script type="application/ld+json">--}}
{{--    {--}}
{{--        "@context":"http://schema.org",--}}
{{--        "@type":"BreadcrumbList",--}}
{{--        "itemListElement":[--}}
{{--            {--}}
{{--                "@type":"ListItem",--}}
{{--                "position":1,--}}
{{--                "item":{--}}
{{--                    "@id":"{{ url('/') }}",--}}
{{--                    "name":"Home"--}}
{{--                }--}}
{{--            },--}}
{{--            {--}}
{{--                "@type":"ListItem",--}}
{{--                "position":2,--}}
{{--                "item":{--}}
{{--                    "@id":"{{ url('post/') }}",--}}
{{--                    "name":"News"--}}
{{--                }--}}
{{--            },--}}
{{--            {--}}
{{--                "@type":"ListItem",--}}
{{--                "position":3,--}}
{{--                "item":{--}}
{{--                    "name":"{{ str_replace('"', "", trim(strip_tags($sql->n_head))) }}",--}}
{{--                    "@id":"{{ $newsUrl }}"--}}
{{--                }--}}
{{--            }--}}
{{--        ]--}}
{{--    }--}}
{{--    </script>--}}
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush
