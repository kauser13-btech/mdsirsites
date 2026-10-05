@extends('layouts.desktop')

@section('content')
    <style>
        .flex-viewport{
            max-height: 780px !important;
        }
    </style>
    <div class="container mt-5">
        <div class="gallery pt-5">
            <h1 class="mb-5">Gallery</h1>
            <div class="gallery-slider">
                <div class="gallery-flexslider">
                    <ul class="slides">
                        @if($current_gallery)
                            @foreach($current_gallery->photo as $gallery_photo)
                                <li>
                                    <img src="{{ \App\Helpers\ImageStoreHelpers::showImage('gallery',$current_gallery->id,$gallery_photo->link,'') }}" alt="{{$gallery_photo->caption}}" />
                                    <p class="flex-caption">{{$gallery_photo->caption}}</p>
                                </li>
                            @endforeach
                        @endif
                    </ul>
                </div>
            </div>
<div class=" d-flex justify-content-center ">
    <div id="gallery-flexslider-thumb" class="flexslider">
        <ul class="slides">
            @foreach($current_gallery->photo as $gallery_photo)
                <li>
                    <img src="{{ \App\Helpers\ImageStoreHelpers::showImage('gallery',$current_gallery->id,$gallery_photo->link,'') }}" alt="{{$gallery_photo->caption}}" />
                </li>
            @endforeach
        </ul>
    </div>
</div>
            

            <div class="row mt-5 more-gallery">
                @foreach($sql as $gallery)
                    <div class="col-12 col-sm-12 col-md-3 mb-5">
                        <a class="item" href="{{ url('/gallery/'.$gallery->id).'?page='.$sql->currentPage() }}">
                            <div class="item-img">
                                <img class="w-100 rounded mb-3" src="{{ \App\Helpers\ImageStoreHelpers::showImage('gallery',$gallery->id,$gallery->cover_photo,'') }}" alt="">
                            </div>
                            {{ $gallery->name }}
                        </a>
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
    <title>Sayem Sobhan Anvir - Gallery</title>
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
@endpush
