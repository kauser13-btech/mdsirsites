@extends('layouts.desktop')

@section('content')
    <div class="home-awards mt-5 pt-5 award-received">
        <div class="container">
            <h1 class="mb-3">Awards</h1>
        </div>
        <div class=" mt-3 mb-2">
            <div class="container">
                <div class="awards-dadasaheb-phalke">
                    <div class="col-12 col-sm-12 col-md-12">
                        <h2>Mother Teresa International Award 2022</h2>
                        {{-- <img class="w-100 mobile-img mb-3" src="{{asset('/desktop/')}}/img/MT2022A.png" alt=""> --}}
                        <p>Mother Teresa International Award has been conferred on Bashundhara Group Managing Director Sayem Sobhan Anvir for his great contributions to the media industry of Bangladesh.
                            The Mother Teresa International Award Committee handed over the award to Sayem Sobhan Anvir at a function held at the Satyajit Ray Auditorium of the Indian Council for Cultural Relations (ICCR) in Kolkata on Thursday evening.
                            The function was organised to celebrate the 22nd anniversary of the Mother Teresa International Award.</p>
                        {{-- <img class="w-100 MT2022-img" src="{{asset('/desktop/')}}/img/MT2022.png" alt=""> --}}
                    </div>
                    {{-- <img class="award-mt2022 desktop-img" src="{{asset('/desktop/')}}/img/MT2022A.png" alt=""> --}}
                </div>
            </div>
        </div>

        <div class="mt-3">
            <div class="container">
                <div class="awards-dadasaheb-phalke row">
                    {{-- <div class="col-4">
                        <img class="w-80 mb-5 desktop-img" src="{{asset('/desktop/')}}/img/greatest-brand.png" alt="">
                    </div> --}}
                    <div class="col-12 col-sm-12 col-md-12">
                        <h2>Bangladesh Greatest Brands 2021-22</h2>

                        {{-- <img class="w-80 mb-5 mobile-img" src="{{asset('/desktop/')}}/img/greatest-brand.png" alt=""> --}}

                        <p>In 2022, under his dynamic leadership, the group received the prestigious “Greatest Brand of the Year 2021–22” award from AsiaOne Magazine at the 17th Asia-Europe Business & Social Forum in London, recognizing its remarkable brand excellence and contribution to business and society.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class=" mt-3">
            <div class="container">
                <div class="awards-dadasaheb-phalke row">
                    <div class="col-12 col-sm-12 col-md-12">
                        <h2>Person Of The Year 2021-22</h2>
                        <p>In 2022, at the 17th Asia-Europe Business & Social Forum, held at the London Marriott Hotel, London, United Kingdom, in the presence of distinguished government officials, ambassadors, business leaders, investors, royal dignitaries, and senior professionals from across Europe, Asia, the Middle East, Africa, and other regions, he was honoured with the prestigious “Person of the Year 2021–22” award by Singapore-headquartered AsiaOne Magazine for his outstanding leadership and contribution to business and industry.
                        </p>
                    </div>
                    {{-- <div class="col-12 col-sm-12 col-md-4">
                        <img class="w-85 mb-5 pull-right desktop-img" src="{{asset('/desktop/')}}/img/pofy21-22.png" alt="">
                        <img class="w-100 mb-5 pull-right mobile-img" src="{{asset('/desktop/')}}/img/pofy21-22.png" alt="">
                    </div> --}}
                </div>
            </div>
        </div>

        <div class=" mt-3">
            <div class="container">
                <div class="awards-dadasaheb-phalke">
                    <div class="col-12">
                        <h2>Best Excellence Award 2021</h2>
                        <p>In 2021, at a ceremony held at The Westin Dhaka, he was honoured with the prestigious “Best Excellence Award 2021” by the Indian Importers Chambers of Commerce and Industry (IICCI) for his contribution to the advancement of Bangladesh’s trade and commerce. Mr. Atul Kumar Saxena, President of the Indian Importers Chambers of Commerce and Industry (IICCI), presented the award.</p>
                        {{-- <img class="w-100" src="{{asset('/desktop/')}}/img/bexa1021.png" alt=""> --}}
                    </div>
                    {{-- <img class="award-best" src="{{asset('/desktop/')}}/img/bexa1021a.png" alt=""> --}}
                </div>
            </div>
        </div>

        <div class="mt-3  mb-2">
            <div class="container">
                <div class="cip-card">
                    <div class="col-12 col-sm-12 col-xl-12 ">
                        <h2>CIP card</h2>
                        <p class="m-0">Bashundhara Group Managing Director Sayem Sobhan Anvir has been honoured with CIP (commercially important person) award. He was given the award as the entrepreneur director (2016) of Meghna Cement Mills Limited. Bashundhara Group‘s General Manager Azizur Rahman Selim received the award on behalf of Sayem Sobhan Anvir from Industries Minister Amir Hossain Amu at a program held in the city’s Sonargaon Hotel on Thursday.</p>
                    </div>
                    {{-- <img class="w-100" src="{{asset('/desktop/')}}/img/award-CIP-card.png" alt=""> --}}
                </div>
            </div>
        </div>
        <div class=" mt-3  mb-2">
            <div class="container">
                <div class="awards-dadasaheb-phalke">
                    <div class="col-12">
                        <h2>Dadasaheb Phalke Excellence Awards 2017</h2>
                        <p>On 21 April 2017, at a grand ceremony held at the St. Andrew’s College Auditorium, Mumbai, India, he was honoured with the prestigious “Dadasaheb Phalke Excellence Award 2017” for his outstanding contribution to mass media, social service, and sports. The award was presented to him by renowned Indian poet, lyricist and screenwriter Javed Akhtar, recognising his leadership and contribution to the development of the media industry through EWMGPLC.</p>
                        {{-- <img class="w-100" src="{{asset('/desktop/')}}/img/award-1.png" alt=""> --}}
                    </div>
                    {{-- <img class="award" src="{{asset('/desktop/')}}/img/DPIFF-trophy.png" alt=""> --}}
                </div>
            </div>
        </div>

    </div>


    {{-- <div class="container mt-5">
        <div class="award-received pt-5">
            <h1 class="mb-5">Other Awards</h1>
            <div class="award-received-flexslider carousel my-5">
                <ul class="slides">
                    @foreach($sql as $award)
                        <li>
                            <a href="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$award->created_at,$award->cover_photo,'') }}" data-lightbox="homePortfolio"  data-title="{{$award->name}}">
                                <img class="w-100 award-other-slider-img" src="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$award->created_at,$award->cover_photo,'') }}" alt="{{ strip_tags($award->name) }}" />
                                <p class="award-other-slider">{{ strip_tags($award->name) }}</p>
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div> --}}


@endsection

@push('meta')
    <title>Sayem Sobhan Anvir - Awards</title>
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

