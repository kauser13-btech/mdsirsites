@extends('layouts.desktop')

@section('content')

    <div class="container mt-5">
{{--        <div class="home-news">--}}
{{--            <div class="container mt-5">--}}
{{--                <h1 class="mb-3">Feature News</h1>--}}
{{--                <div class="row">--}}
{{--                    @foreach($headerPost as $news)--}}
{{--                        <div class="col-md-3">--}}
{{--                        <a class="post-link" href="{{ url('post/'.$news->nid) }}">--}}
{{--                            <div class="box-bg">--}}
{{--                                --}}{{-- <time>{{ date('F Y', strtotime($news->start_at)) }}</time> --}}
{{--                                <img class="w-100" src="{{ $news->main_image ? App\Helpers\ImageStoreHelpers::showImage('news_images',$news->created_at,$news->main_image,'thumbnails') : asset('admin/img/image_placeholder.jpg')  }}" alt="{{ strip_tags($news->n_head) }}">--}}
{{--                                <div class="row">--}}
{{--                                    <div class="col-8 col-md-7 col-xl-9">--}}
{{--                                        <p>{{ $news->n_head }}</p>--}}
{{--                                    </div>--}}
{{--                                    <div class="col-4 col-md-5 col-xl-3 ps-md-0">--}}
{{--                                        <p class="round"><i class="fa fa-angle-right" aria-hidden="true"></i></p>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </a>--}}
{{--                    </div>--}}
{{--                    @endforeach--}}

{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
        <div class="news-section pt-5">
            <h1 class="mb-5">News</h1>

            <div class="row mt-5">
                @foreach($sql as $post)
                    <div class="col-12 col-sm-12 col-md-4 mb-5">
                        <a class="item mb-3" href="{{ url('/posts/'.$post->slug) }}">
                            <img class="w-100 rounded mb-3" src="{{ $post->main_image ? App\Helpers\ImageStoreHelpers::showImage('news_images',$post->created_at,$post->main_image,'') : asset('admin/img/image_placeholder.jpg') }}" alt="{{ strip_tags($post->n_head) }}" />
                        </a>

                        @if($post->bundle->dependent_id)
                            <a class="item" style="width: 47%;float: left;" href="{{ url('/posts/'.$post->slug) }}">
                                {{ $post->n_head }}
                            </a>
                            <a class="item" style="width: 50%;float: right; padding-left: 3%;border-left: 1px solid #ccc;" href="{{ url('/posts/'.App\Helpers\generalHelper::dependentNewsId($post->bundle->dependent_id)) }}">
                                {{ App\Helpers\generalHelper::dependentNewsText($post->bundle->dependent_id) }}
                            </a>
                        @else
                            <a class="item" href="{{ url('/posts/'.$post->slug) }}">
                                {{ $post->n_head }}
                            </a>
                        @endif
                    </div>
                @endforeach
            </div>
            <div class="d-flex justify-content-center">
                {!! $sql->links('pagination::bootstrap-4') !!}
            </div>

        </div>


    </div>
@endsection

@push('meta')
    <title>Sayem Sobhan Anvir - News</title>
    <meta property="og:title" content="SAYEM SOBHAN ANVIR | CHAIRMAN, ABG" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="Sayem Sobhan Anvir">
    <meta name="description" content="Sayem Sobhan Anvir">
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:description" content="SAYEM SOBHAN ANVIR | CHAIRMAN, ABG" />
	<meta property="og:image" content="https://cdn.bd-pratidin.com/files/shares/abg/sayemsobhan.png" />
    <link rel="canonical" href="{{ url('/') }}">
    <link rel="image_src" href="{{ url('desktop/img/default-img.jpg') }}">
@endpush

@push('stylesheet')
@endpush

@push('scripts')
    <script>
        // $(window).scroll(function () {
        //      console.log(($(window).scrollTop() + $(window).height())+"==="+$(document).height());
        //     // if (($(window).scrollTop() + $(window).height() + 700) > $(document).height()) {
        //     //     if (page > parseInt(localStorage.getItem('page')))
        //     //         loadProperty()
        //     //     else {
        //     //         // $('#loader').hide();
        //     //
        //     //     }
        //     //
        //     // }
        // });
    </script>
@endpush
