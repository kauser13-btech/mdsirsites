@extends('layouts.desktop')

@section('content')
    <div class="container mt-5">
        <div class="pt-5">
            <img class="w-100 rounded" src="{{asset('/desktop/')}}/img/about-cover-photo.jpeg" alt="">
        </div>


        <div class="accordion mt-4 about-accordion" id="accordionPanelsStayOpenExample">

            <div class="accordion-item">
                <h2 class="accordion-header" id="accordion-1">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#accordion-1-Open" aria-expanded="true" aria-controls="accordion-1-Open">ABOUT</button>
                </h2>
                <div id="accordion-1-Open" class="accordion-collapse collapse show" aria-labelledby="accordion-1">
                    <div class="accordion-body">
                        <p>A visionary entrepreneur and transformational business leader, Sayem Sobhan Anvir serves as the Chairman of Anvir Bashundhara Group, one of Bangladesh’s leading diversified business conglomerates. Guided by a steadfast belief in building an economically empowered, self-reliant, and globally competitive Bangladesh, he has played a defining role in shaping the Group’s remarkable growth and long-term vision.</p>
                        <p>Mr. Anvir assumed the responsibilities of Managing Director of Bashundhara Group on 16 September 2001, marking the beginning of a new era of innovation, expansion, and industrial excellence. Under his leadership, the Group evolved into one of the country’s largest and most influential business conglomerates, with a diverse portfolio spanning manufacturing, real estate, media, trading, energy, shipping, food, retail, sports, and other strategic sectors, while establishing a growing international presence.</p>
                        <p>Today, as Chairman of Anvir Bashundhara Group, he continues to lead the organization with a future-focused vision centered on sustainable growth, technological advancement, responsible corporate governance, and nation-building. His leadership philosophy reflects the enduring commitment to creating long-term value for people, businesses, and the country.</p>
                        <p>Beyond business, Mr. Anvir has consistently championed initiatives that strengthen communities, empower youth, promote sports, advance quality journalism, and support healthcare, education, and humanitarian causes. His vision extends beyond corporate success to fostering inclusive economic development and developing the next generation of leaders. This commitment embodies the Group’s enduring philosophy: For the People, For the Country.</p>
                        <p>Mr. Anvir received his early education at King’s School, Ely, Cambridgeshire, United Kingdom—one of the world’s oldest and most distinguished educational institutions. He later earned a Bachelor’s degree in Business Administration from the American International University London in 2001 before returning to Bangladesh to dedicate himself to the country’s industrial and economic advancement.</p>
                        <p>His outstanding contributions to Bangladesh’s economy and international business have earned him numerous recognitions. Since 2016, he has been honored by the Government of Bangladesh as a Commercially Important Person (CIP) in recognition of his significant contribution to the national economy. In 2011, he also received the United States Congressional Recognition for his exceptional efforts in strengthening business relations between Bangladesh and the United States.</p>
                        <p>Through visionary leadership, strategic foresight, and an unwavering commitment to national progress, Sayem Sobhan Anvir continues to shape the future of industry while contributing meaningfully to Bangladesh’s sustainable economic development and global competitiveness.</p>
                        

                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection

@push('meta')
    <title>Sayem Sobhan Anvir - About</title>
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

