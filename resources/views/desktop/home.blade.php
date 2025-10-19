@extends('layouts.desktop')

@section('content')

    <div class="container">

        <div class="flexslider flexslider-slider">
            <ul class="slides">
                <li>
                    <img src="{{asset('/desktop/')}}/img/sayem_sobhan_anvir_slide_03.png" alt="sayem sobhan anvir">
                    <div class="meta">
                        <h1>SAYEM SOBHAN ANVIR</h1>
                        {{-- <h2>MANAGING DIRECTOR</h2> --}}
                        <div class="category">
                            <p><img src="https://cdn.bd-pratidin.com/files/shares/abg/abg-anvir-logo.png" alt=""></p>
                        </div>
                    </div>
                </li>
                <li>
                    <img class="mobile-img" src="{{asset('/desktop/')}}/img/sayem_sobhan_anvir_02.png?v=1" alt="">
                    <img class="desktop-img" src="{{asset('/desktop/')}}/img/sayem_sobhan_anvir_02.png?v=1" alt="">
                    <div class="meta">
                        <h1>SAYEM SOBHAN ANVIR</h1>
                        {{-- <h2>MANAGING DIRECTOR</h2> --}}
                        <div class="category">
                            <p><img src="{{asset('/desktop/')}}/img/slider-logo-2.png?v=2" alt=""></p>
                        </div>
                    </div>
                </li>
                <li>
                    <img class="mobile-img" src="{{asset('/desktop/')}}/img/sayem_sobhan_anvir_03_mobile.png" alt="">
                    <img class="desktop-img" src="{{asset('/desktop/')}}/img/sayem_sobhan_anvir_03.png" alt="">
                    <div class="meta">
                        <h1>SAYEM SOBHAN ANVIR</h1>
                        {{-- <h2>MANAGING DIRECTOR</h2> --}}
                        <div class="category">
                            <p><img src="https://cdn.bd-pratidin.com/files/shares/abg/abg-anvir-logo.png" alt=""></p>
                        </div>
                    </div>
                </li>
                <li>
                    <img class="mobile-img" src="{{asset('/desktop/')}}/img/sayem_sobhan_anvir_04.png" alt="">
                    <img class="desktop-img" src="{{asset('/desktop/')}}/img/sayem_sobhan_anvir_04.png" alt="">
                    <div class="meta">
                        <h1>SAYEM SOBHAN ANVIR</h1>
                        {{-- <h2>MANAGING DIRECTOR</h2> --}}
                        <div class="category">
                            <p><img src="{{asset('/desktop/')}}/img/slider-logo-4.png" alt=""></p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="home-news">
        <div class="container">
            <h1 class="mb-3">News <a href="{{ url('post') }}">All news <i class="fa fa-angle-right" aria-hidden="true"></i></a></h1>
            <div class="row">
                @foreach($post as $news)
                    <div class="col-md-4 mb-4">
                        <a class="post-link" href="{{ url('post/'.$news->nid) }}">
                            <div class="box-bg">
                                {{-- <time>{{ date('F Y', strtotime($news->start_at)) }}</time> --}}
                                <img class="w-100" src="{{ $news->main_image ? App\Helpers\ImageStoreHelpers::showImage('news_images',$news->created_at,$news->main_image,'') : asset('admin/img/image_placeholder.jpg')  }}" alt="{{ strip_tags($news->n_head) }}">
                                <div class="row">
                                    <div class="col-9 col-md-8 col-xl-10">
                                        <p>{{ $news->n_head }}</p>
                                    </div>
                                    <div class="col-3 col-md-4 col-xl-2 ps-md-0">
                                        <p class="round"><i class="fa fa-angle-right" aria-hidden="true"></i></p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach

            </div>
        </div>
    </div>

    <div class="home-awards">
        <div class="container">
            <h1 class="mb-3">AWARDS <a href="{{ url('awards') }}">All Awards <i class="fa fa-angle-right" aria-hidden="true"></i></a></h1>
        </div>

        <div class="awards-dadasaheb-phalke-bg mt-5">
            <div class="container">
                <div class="awards-dadasaheb-phalke">
                    <div class="col-12 col-sm-12 col-md-7">
                        <h2>Mother Teresa International Award 2022</h2>

                        <img class="w-100 mobile-img mb-4" src="{{asset('/desktop/')}}/img/MT2022A.png" alt="">

                        <p>Mother Teresa International Award has been conferred on Bashundhara Group Managing Director Sayem Sobhan Anvir for his great contributions to the media industry of Bangladesh.
                            The Mother Teresa International Award Committee handed over the award to Sayem Sobhan Anvir at a function held at the Satyajit Ray Auditorium of the Indian Council for Cultural Relations (ICCR) in Kolkata on Thursday evening.
                            The function was organised to celebrate the 22nd anniversary of the Mother Teresa International Award.</p>
                        <img class="w-100" src="{{asset('/desktop/')}}/img/MT2022.png" alt="">
                    </div>
                    <img class="award-mt2022 desktop-img" src="{{asset('/desktop/')}}/img/MT2022A.png" alt="">
                </div>
            </div>
        </div>

        <div class="awards-dadasaheb-phalke-bg pt-5">
            <div class="container">
                <div class="awards-dadasaheb-phalke row">
                    <div class="col-4">
                        <img class="w-80 mb-5 desktop-img" src="{{asset('/desktop/')}}/img/greatest-brand.png" alt="">
                    </div>
                    <div class="col-12 col-sm-12 col-md-8  mt-5">
                        <h2>Bangladesh Greatest Brands 2021-22</h2>

                        <img class="w-80 mb-5 mobile-img" src="{{asset('/desktop/')}}/img/greatest-brand.png" alt="">

                        <p>Bashundhara Group, the country’s largest industrial conglomerate, has received yet another international award for its contribution to the national economy and enhancing the business standard. The group was awarded with the ‘Greatest Brand of the Year’ at the 17th edition of ‘Asia-Europe Business & Social Forum’ held at Marriott hotel in London on Tuesday, said a press release.
                            AsiaOne Magazine organised the event styled ‘Greatest Brand and Leaders 2021-22’ to highlight the progress of Europe, Asia, Middle East and Africa in social and economic aspects.
                            At the programme, Bashundhara Group Managing Director Sayem Sobhan Anvir was honoured with the ‘Person of the Year’ award for his leadership excellence in industries.
                            He was nominated by United Research Services and AsiaOne Magazine for the award.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <div class="award-received pt-5">
                <h1 class="mb-5">Other Awards</h1>
                <div class="award-received-flexslider carousel my-5">
                    <ul class="slides">
                        @foreach($awards as $award)
                            <li>
                                <a href="{{ url('awards') }}">
                                    <span><img class="w-100 award-other-slider-img" src="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$award->created_at,$award->cover_photo,'') }}" alt="{{ strip_tags($award->name) }}" /></span>
                                    <p class="award-other-slider">{{ strip_tags($award->name) }}</p>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>

    </div>


    <div class="home-appreciations pt-5">
        <div class="container">
            <h1 class="mb-3">APPRECIATIONS <a href="{{ url('appreciations') }}">Explore  More <i class="fa fa-angle-right" aria-hidden="true"></i></a></h1>

            <div class="flexcarousel carousel">
                <ul class="slides">
                    @foreach($appreciations as $appreciation)
                        <li>
                            <time>{{ date('F Y', strtotime($appreciation->received_date)) }}</time>
                            <h4>{{ $appreciation->name }}</h4>
                            <a href="{{ url('appreciations') }}" class="view-btn">View</a>
                            <img src="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$appreciation->created_at,$appreciation->cover_photo,'') }}" alt="{{ strip_tags($appreciation->name) }}" />
                        </li>
                    @endforeach

                </ul>
            </div>

        </div>
    </div>

    <div class="home-about mt-4">
        <div class="container">
            <h2 class="mb-4">ABOUT</h2>
            <p class="px-5">A visionary and entrepreneur par excellence, Sayem Sobhan is the dynamic force at the helm of the Bashundhara Group, headquartered in Bangladesh. With his vision of building an economically empowered and self-reliant nation, he took over as Managing Director of the Group on 16th September 2001. Under his able leadership, Bashundhara Group has become one of the largest industrial conglomerates in Bangladesh, with over 20 major concerns and a global footprint.<br><br>
            His approach has always been underscored by a need to promote community welfare and to accelerate economic growth, especially in the fields of trade, manufacturing, sports, and journalism. Reflecting the ethos of the Group – ‘for the people, for the country’ – his far-sighted blueprint for corporate success has always been intertwined with the future and growth of the nation itself. However, it is his ability to transform the Group from a corporate powerhouse to a transformative force in nation-building and developing human resources that has earned him the mantle of a leader.</p>

            <a href="{{ url('about') }}" class="mt-4 read-more">Read more <i class="fa fa-angle-right" aria-hidden="true"></i></a>

        </div>
    </div>

    <div class="home-news mb-4 home-social-work">
        <div class="container">
            <h1 class="mb-3">SOCIAL WORK <a href="{{ url('contributions') }}">Explore More <i class="fa fa-angle-right" aria-hidden="true"></i></a></h1>
            <div class="row">
                @foreach($contributions as $contribution)
                    @if($contribution)
                        <div class="col-md-4">
                            <a class="post-link" href="{{ $contribution->type == 1 ? url('/post/'.$contribution->source_id) : ( $contribution->type == 2 ? url('/gallery/'.$contribution->source_id) : url('/post/'.$contribution->source_id)) }}">
                                <div class="box-bg">
                                    {{-- <time>{{ date('F Y', strtotime($news->start_at)) }}</time> --}}
                                    <img class="w-100" src="{{ str_contains($contribution->cover_photo, 'mdsirasset.s3.ap-southeast-1.amazonaws.com') ? $contribution->cover_photo : \App\Helpers\ImageStoreHelpers::showImage('news_images',$contribution->created_at,$contribution->cover_photo,'') }}" alt="{{ strip_tags($contribution->name) }}">
                                    <div class="row">
                                        <div class="col-9 col-md-8 col-xl-10">
                                            <p>{{ $contribution->name }}</p>
                                        </div>
                                        <div class="col-3 col-md-4 col-xl-2 ps-md-0">
                                            <p class="round"><i class="fa fa-angle-right" aria-hidden="true"></i></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endif
                @endforeach

            </div>
        </div>
    </div>


    <div class="container mt-4">
        <div class="home-media-gallery pt-4 pb-2 ps-4 pe-4 ">
            <h1 class="mb-3">MEDIA GALLERY <a href="{{ url('gallery') }}">Explore More <i class="fa fa-angle-right" aria-hidden="true"></i></a></h1>

            <div class="col-12">
                <div class="row">
                    <div class="col-md-6">
                        @php $i=1; @endphp
                        @foreach($galleryLeft as $galleryL)
                            @if($galleryL)
                                @if($i == 1)
                                    <a class="item" href="{{ url('/gallery/'.$galleryL->id) }}">
                                        <div class="item item-1 mb-4">
                                            <img class="w-100" src="{{ $galleryL->cover_photo ? \App\Helpers\ImageStoreHelpers::showImage('gallery',$galleryL->id,$galleryL->cover_photo,'') : asset('admin/img/image_placeholder.jpg')  }}" alt="{{ $galleryL->name }}">
                                            <p>{{ $galleryL->name }}</p>
                                        </div>
                                    </a>
                                @else
                                    <a class="item" href="{{ url('/gallery/'.$galleryL->id) }}">
                                        <div class="item item-2 mb-4">
                                            <img class="w-100" src="{{ $galleryL->cover_photo ? \App\Helpers\ImageStoreHelpers::showImage('gallery',$galleryL->id,$galleryL->cover_photo,'') : asset('admin/img/image_placeholder.jpg')  }}" alt="{{ $galleryL->name }}">
                                            <p>{{ $galleryL->name }}</p>
                                        </div>
                                    </a>
                                @endif
                            
                            @php
                                $i++;
                            @endphp
                            @endif
                        @endforeach
                    </div>
                    <div class="col-md-6">
                        @php $i=1; @endphp
                        @foreach($galleryRight as $galleryR)
                            @if($galleryR)
                                @if($i == 1)
                                    <a class="item" href="{{ url('/gallery/'.$galleryR->id) }}">
                                        <div class="item item-2 mb-4">
                                            <img class="w-100" src="{{ $galleryR->cover_photo ? \App\Helpers\ImageStoreHelpers::showImage('gallery',$galleryR->id,$galleryR->cover_photo,'') : asset('admin/img/image_placeholder.jpg')  }}" alt="{{ $galleryR->name }}">
                                            <p>{{ $galleryR->name }}</p>
                                        </div>
                                    </a>
                                @else
                                    <a class="item" href="{{ url('/gallery/'.$galleryR->id) }}">
                                        <div class="item item-1 mb-4">
                                            <img class="w-100" src="{{ $galleryR->cover_photo ? \App\Helpers\ImageStoreHelpers::showImage('gallery',$galleryR->id,$galleryR->cover_photo,'') : asset('admin/img/image_placeholder.jpg')  }}" alt="{{ $galleryR->name }}">
                                            <p>{{ $galleryR->name }}</p>
                                        </div>
                                    </a>
                                @endif
                                @php
                                    $i++;
                                @endphp
                            @endif
                        @endforeach
                    </div>

                </div>
            </div>

        </div>
    </div>
@endsection

@push('meta')
    <title>Sayem Sobhan Anvir</title>
    <meta property="og:title" content="Managing Director of Bashundhara Group" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="Sayem Sobhan Anvir">
    <meta name="description" content="Sayem Sobhan Anvir">
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:description" content="Sayem Sobhan Anvir" />
    <meta property="og:image" content="{{ url('desktop/img/default-img.jpg') }}" />
    <link rel="canonical" href="{{ url('/') }}">
    <link rel="image_src" href="{{ url('desktop/img/default-img.jpg') }}">
@endpush

@push('stylesheet')
@endpush

@push('scripts')

@endpush
