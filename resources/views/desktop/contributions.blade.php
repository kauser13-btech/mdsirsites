@extends('layouts.desktop')

@section('content')
    <div class="container social-work-contributions mt-5">
        <div class="pt-5">
            <h1 class="mb-3">SOCIAL WORK</h1>
            {{-- <p class="text-white">The contributions and social works of Bashundhara Group Managing Director <b>Sayem Sobhan Anvir</b> are countless. Bashundhara Group Managing Director <b>Sayem Sobhan Anvir</b> has received India’s most prestigious Dadasaheb Phalke Excellence Awards-2017 on Friday. He has been accorded the award for the outstanding contribution of East West Media Group Ltd, a concern of the country’s leading business conglomerate Bashundhara Group, to mass media and social service...</p> --}}
        </div>

{{--        <div class="my-5 d-flex justify-content-center">--}}
{{--            <img class="w-75 desktop-img" src="{{asset('/desktop/')}}/img/desktop-social-work-contributions-img.png" alt="">--}}
{{--            <img class="w-75 mobile-img" src="{{asset('/desktop/')}}/img/mobile-img.png" alt="">--}}
{{--        </div>--}}

{{--        <h1 class="mt-5 mb-3">Recent CONTRIBUTIONS</h1>--}}
        <div class="row">
            @foreach($sql as $contribution)

                    @if(($contribution->type == 1 || $contribution->type == 3) &&  App\Helpers\generalHelper::newsIsVisible($contribution->source_id) == 1)
                        <div class="col-12 col-sm-12 col-md-4 mb-5">
                            <a class="news-item mb-3" href="{{ url('/post/'.$contribution->source_id) }}">
                                <img class="w-100 rounded mb-3 contrib-recent" src="{{ str_contains($contribution->cover_photo, 'mdsirasset.s3.ap-southeast-1.amazonaws.com') ? $contribution->cover_photo : \App\Helpers\ImageStoreHelpers::showImage('news_images',$contribution->created_at,$contribution->cover_photo,'thumbnails') }}" alt="{{ strip_tags($contribution->name) }}" />
                            </a>

                            @if(App\Helpers\generalHelper::bundleIsDependent($contribution->source_id))
                                <a class="news-item" style="width: 47%;float: left;" href="{{ url('/post/'.$contribution->source_id) }}">
                                    {{ $contribution->name }}
{{--                                    {{ App\Helpers\generalHelper::BundleNewsText($contribution->source_id) }}--}}
                                </a>
                                <a class="news-item" style="width: 50%;float: right; padding-left: 3%;border-left: 1px solid #ccc;" href="{{ url('/posts/'.App\Helpers\generalHelper::dependentBundleNewsId($contribution->source_id)) }}">
                                    {{ App\Helpers\generalHelper::dependentBundleNewsText($contribution->source_id) }}
                                </a>
                            @else
                                <a class="news-item" href="{{ url('/post/'.$contribution->source_id) }}">
                                    {{ $contribution->name }}
                                </a>
                            @endif



{{--                            <a class="news-item" href="{{ url('/post/'.$contribution->source_id) }}">--}}
{{--                                <img class="w-100 rounded mb-3 contrib-recent" src="{{ $contribution->cover_photo }}" alt="{{ strip_tags($contribution->name) }}" />--}}
{{--                                {{ $contribution->name.'<---->'.App\Helpers\generalHelper::newsIsVisible($contribution->source_id) }}--}}
{{--                            </a>--}}
                        </div>
                    @elseif($contribution->type == 2)
                        <div class="col-12 col-sm-12 col-md-4 mb-5">
                            <a class="news-item" href="{{ url('/gallery/'.$contribution->source_id) }}">
                                <img class="w-100 rounded mb-3 contrib-recent" src="{{ $contribution->cover_photo }}" alt="{{ strip_tags($contribution->name) }}" />
                                {{ $contribution->name }}
                            </a>
                        </div>
{{--                    @elseif($contribution->type == 3 &&  App\Helpers\generalHelper::newsIsVisible($contribution->source_id) == 1)--}}
{{--                        <div class="col-12 col-sm-12 col-md-4 mb-5">--}}
{{--                            <a class="news-item" href="{{ url('/post/'.$contribution->source_id) }}">--}}
{{--                                <img class="w-100 rounded mb-3 contrib-recent" src="{{ $contribution->cover_photo }}" alt="{{ strip_tags($contribution->name) }}" />--}}
{{--                                {{ $contribution->name }}--}}
{{--                            </a>--}}
{{--                        </div>--}}
                    @endif

            @endforeach
        </div>



    </div>
@endsection

@push('meta')
    <title>Sayem Sobhan Anvir - SOCIAL WORK & CONTRIBUTIONS</title>
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
