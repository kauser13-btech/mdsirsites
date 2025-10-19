@extends('layouts.desktop')

@section('content')
<section class="member-details member_verify">
    <div class="verify-top-bg mb-5">
        <div class="container">
            <img class="w-100" src="{{ url('desktop/img/verify-top-bg.png') }}" alt="verify">
        </div>
    </div>

    <div class="container">
        <div class="validation p-5 mb-4">
            <div class="certification">
                <img class="w-100" src="{{ url('desktop/img/verify-bg.png') }}" alt="certification">

                @if(isset($sql->number_id))
                    <div class="text text-success">
                        <h1>Validation Successful!</h1>
                        <p>This Membership Certificate is valid</p>
                    </div>
                @else
                    <div class="text text-danger">
                        <h1>Validation Failed!</h1>
                        <p>This Membership Certificate is Not valid</p>
                    </div>
                @endif

            </div>
        </div>
        @if(isset($sql->number_id))
        <div class="row">
            <div class="col-12 col-sm-12 col-md-5 col-lg-3 text-white sidebar background-blue">
                <div class="col-md-12 mx-auto">
                    <figure class="profile-image mx-auto text-center">
                        <img class="img-fluid rounded-circle" src="{{ $sql->img }}" alt="{{ $sql->name }}">
                        <figcaption class="text-center">{{ str_replace('_', ' ', $sql->position) }}</figcaption>
                    </figure>
                </div>
            </div>
            <div id="about-me" data-simplebar class="col-12 col-sm-12 col-md-7 col-lg-9 content about-me active">
                <div class="card about-me">
                    <h3 class="sideline font-weight-bold mb-2">{{ $sql->name }}</h3>
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Designation</div>
                                {{ $sql->designation }}
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Institution</div>
                                {{ $sql->institution }}
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Address</div>
                                {{ $sql->address }}
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Telephone</div>
                                {{ $sql->telephone }}
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Mobile</div>
                                {{ $sql->mobile }}
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">District</div>
                                {{ $sql->district }}
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Division</div>
                                {{ $sql->divisions }}
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
        @endif
    </div>
</section>
@endsection

@push('meta')
    <title>Bajus - GENERAL MEMBER – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন</title>
    <meta property="og:title" content="Bajus - GENERAL MEMBER – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন,GENERAL MEMBER">
    <meta name="description" content="GENERAL MEMBER – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:description" content="GENERAL MEMBER – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta property="og:image" content="{{ url('desktop/img/default-img.jpg') }}" />
    <link rel="canonical" href="{{ url('/') }}">
    <link rel="image_src" href="{{ url('desktop/img/default-img.jpg') }}">
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush
