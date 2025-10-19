@extends('layouts.desktop')

@section('content')
<section class="container">
    <h1 class="my-4 text-center text-lg-left">{{ $sql->name }}</h1>
    <div class="row gallery" id="lightgallery">
        @foreach(unserialize($sql->images) as $row)
            <a href="{{ App\Helpers\ImageStoreHelpers::showImage('gallery',$sql->created_at,$row['image'],'') }}" class="col-lg-3 col-md-4 col-xs-6 thumb">
                <figure><img class="img-fluid img-thumbnail" src="{{ App\Helpers\ImageStoreHelpers::showImage('gallery',$sql->created_at,$row['image'],'') }}" alt="{{ $row['text'] }}"></figure>
            </a>
        @endforeach
    </div>
</section>
@endsection

@push('meta')
    <title>{{ $sql->name.' '.$sql->title_info }}</title>
    <meta property="og:title" content="{{ $sql->name.' '.$sql->title_info }}" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="{{$sql->keywords}}">
    <meta name="description" content="{{$sql->description}}">
    <meta property="og:url" content="{{ url('/events/'.$sql->id) }}" />
    <meta property="og:description" content="{{$sql->description}}" />
    <meta property="og:image" content="{{ App\Helpers\ImageStoreHelpers::showImage('gallery',$sql->created_at,$sql->cover_photo,'') }}" />
    <link rel="canonical" href="{{ url('/events/'.$sql->id) }}">
    <link rel="image_src" href="{{ App\Helpers\ImageStoreHelpers::showImage('gallery',$sql->created_at,$sql->cover_photo,'') }}">
@endpush

@push('stylesheet')
<style type="text/css">
.thumb {
    margin-bottom: 15px;
}
.thumb:last-child {
    margin-bottom: 0;
}
.thumb figure img {
    width: 100%;
    height: 200px;
    object-fit: cover;
}
.lg-outer #lg-share {
display:none !important;
}
</style>
@endpush

@push('scripts')
<script type="text/javascript">
$(document).ready(function() {
    $("#lightgallery").lightGallery(); 
});
</script>
@endpush

@php 
    Assets::add([
        asset('desktop/css/lightgallery.css'),
    ],'css');
    Assets::add([
        asset('desktop/js/lightgallery-all.min.js'),
    ],'js','footer-script');
@endphp
