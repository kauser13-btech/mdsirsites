@extends('layouts.desktop')

@section('content')
    <div class="container mt-5">
        <div class="appreciations pt-5">
            <h1 class="mb-5">Appreciations</h1>

            <div class="row">
                @foreach($sql as $appreciation)
                    <div class="col-12 col-sm-3 mb-3">
                        <div class="item">
                            <a href="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$appreciation->created_at,$appreciation->cover_photo,'') }}" data-lightbox="homePortfolio"  data-title="{{$appreciation->name}}">
                                <img class="w-100 award-other-slider-img" src="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$appreciation->created_at,$appreciation->cover_photo,'') }}" alt="{{ strip_tags($appreciation->name) }}" />
                            </a>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </div>
@endsection

@push('meta')
    <title>Sayem Sobhan Anvir - Appreciations</title>
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
