@extends('layouts.desktop')

@section('content')

@php
    $lead = '';
    $list = '';
    $i=0;
    foreach($sql as $row){
        $lead_img = App\Helpers\ImageStoreHelpers::showImage('gallery',$row->created_at,$row->cover_photo,'');
        $list_img = App\Helpers\ImageStoreHelpers::showImage('gallery',$row->created_at,$row->cover_photo,'medium');

        if($i < 2){
            $lead .= '<div class="col-12 col-sm-6 mb-3">
                 <a href="'.url('events/'.$row->id).'#lg=1&slide=0" class="lead-post">
                     <img class="img w-100" src="'.$lead_img.'" alt="'.strip_tags($row->name).'">
                     <h2 class="mt-2">'.strip_tags($row->name).'</h2>
                 </a>
             </div>';
        }else{
            $list .= '<div class="col-6 col-md-4 col-lg-3 mb-3">
                 <a href="'.url('events/'.$row->id).'#lg=1&slide=0" class="sub-post">
                     <img class="img w-100" src="'.$list_img.'" alt="'.strip_tags($row->name).'">
                     <h2 class="mt-2">'.strip_tags($row->name).'</h2>
                 </a>
             </div>';
        }
    $i++;
    }
@endphp

<section id="post-list" class="mt-4">
    <div class="container">
        <div class="report-page-title mb-4">Media Gallery</div>
         <div class="row">{!! $lead !!}</div>
         <div class="row mt-5">{!! $list !!}</div>

        <div class="d-flex justify-content-center">
            {!! $sql->links('pagination::bootstrap-4') !!}
        </div>
    </div>
</section>

@endsection

@push('meta')
    <title>Bajus - EVENTS – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন</title>
    <meta property="og:title" content="Bajus - EVENTS – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
    <meta name="description" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:description" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta property="og:image" content="{{ url('desktop/img/default-img.jpg') }}" />
    <link rel="canonical" href="{{ url('/') }}">
    <link rel="image_src" href="{{ url('desktop/img/default-img.jpg') }}">
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush
