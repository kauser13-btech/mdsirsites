@extends('layouts.desktop')

@section('content')
<section class="member-details mt-5">
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-5 col-lg-3 text-white sidebar" style="background:#132634 !important;border-top-left-radius: 5px;border-bottom-left-radius: 5px;">
                <div class="col-md-12 mx-auto">
                    <figure class="profile-image mx-auto text-center">
                        @php
                            $defaultAvatar = ($sql->gender=='Male')?'default-avatar.png':'default-avata-f.jpg';
                        @endphp
                        <img class="img-fluid rounded" src="{{ $sql->img ? $sql->img : asset('/admin/img/'.$defaultAvatar) }}" alt="{{ $sql->name }}">
                        <h4 class="mt-3" style="color:#ffc300;">Bajus ID: {{ $sql->number_id }}</h4>
                        <figcaption class="text-center">{{ str_replace('_', ' ', $sql->position) }}</figcaption>
                        {{-- <button class="your-button-class" id="sslczPayBtn"
                                token="if you have any token validation"
                                postdata="your javascript arrays or objects which requires in backend"
                                order="If you already have the transaction generated for current order"
                                endpoint="/pay-via-ajax"> Pay Now
                        </button> --}}
                    </figure>
                </div>
            </div>
            <div id="about-me" data-simplebar class="col-12 col-sm-12 col-md-7 col-lg-9 content about-me active">
                <div class="card about-me">
                    <h3 class="sideline font-weight-bold mb-2">Personal Information</h3>
                    <table class="table table-bordered">
{{--                        <thead>--}}
{{--                            <tr>--}}
{{--                                <th scope="col" width="20%">Name</th>--}}
{{--                                <th scope="col">{{  $sql->name }}</th>--}}
{{--                            </tr>--}}
{{--                        </thead>--}}
                        <tbody>
                            <tr>
                                <th scope="row">Name</th>
                                <td>{{  $sql->name }}</td>
                            </tr>
                            <tr>
                                <th scope="row">Member Since</th>
                                <td>{{  $sql->member_since }}</td>
                            </tr>
                            <tr>
                                <th scope="row">Home Address</th>
                                <td>{{  $sql->home_address }}</td>
                            </tr>
                            <tr>
                                <th scope="row">Contact Number</th>
                                <td>{{  $sql->contact }}</td>
                            </tr>
                            <tr>
                                <th scope="row">Email</th>
                                <td>{{  $sql->email }}</td>
                            </tr>
                            <tr>
                                <th scope="row">Blood Group</th>
                                <td>{{  $sql->blood_group }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>

            <div class="col-12 col-sm-12 col-md-5 col-lg-3 text-white sidebar mt-5" style="background-image: url({{ asset('/desktop/') }}/img/details-inst-bg.png )  !important;border-top-left-radius: 5px;border-bottom-left-radius: 5px;    background-size: cover;background-position-y: bottom;background-repeat-y: no-repeat;">
                <div class="col-md-12 mx-auto">
                    <figure class="profile-image mx-auto text-center">
{{--                        @php--}}
{{--                            $defaultAvatar = ($sql->gender=='Male')?'default-avatar.png':'default-avata-f.jpg';--}}
{{--                        @endphp--}}
                        <img class="img-fluid rounded" src="{{ $sql->inst_img ? $sql->inst_img : 'https://dummyimage.com/480x600/9c9c9c/ffffff.jpg&text=Institution/Shop+Logo' }}" alt="{{ $sql->name }}">
                        <h4 class="mt-3" style="color:#ffc300;">{{ $sql->inst_name }}</h4>
{{--                        <figcaption class="text-center">{{ str_replace('_', ' ', $sql->position) }}</figcaption>--}}
                        {{-- <button class="your-button-class" id="sslczPayBtn"
                                token="if you have any token validation"
                                postdata="your javascript arrays or objects which requires in backend"
                                order="If you already have the transaction generated for current order"
                                endpoint="/pay-via-ajax"> Pay Now
                        </button> --}}
                    </figure>
                </div>
            </div>
            <div id="about-me" data-simplebar class="col-12 col-sm-12 col-md-7 col-lg-9 content about-me active mt-5">
                <div class="card about-me">
                    <h3 class="sideline font-weight-bold mb-2">Institutional Information</h3>
                    <table class="table table-bordered">
{{--                        <thead>--}}
{{--                        <tr>--}}
{{--                            <th scope="col" width="20%">Institution/Shop Name</th>--}}
{{--                            <th scope="col"></th>--}}
{{--                        </tr>--}}
{{--                        </thead>--}}
                        <tbody>
                        <tr>
                            <th scope="row">Institution/Shop Name</th>
                            <td>{{  $sql->inst_name }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Institution Address</th>
                            <td>{{  $sql->inst_address }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Trade License</th>
                            <td>{{  $sql->inst_trade_license }}</td>
                        </tr>
                        <tr>
                            <th scope="row">BIN</th>
                            <td>{{  $sql->inst_bin }}</td>
                        </tr>
                        <tr>
                            <th scope="row">TIN</th>
                            <td>{{  $sql->inst_tin }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Telephone</th>
                            <td>{{  $sql->inst_telephone }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Mobile</th>
                            <td>{{  $sql->inst_mobile }}</td>
                        </tr>
                        <tr>
                            <th scope="row">District</th>
                            <td>{{  $sql->district }}</td>
                        </tr>
                        <tr>
                            <th scope="row">Divisions</th>
                            <td>{{  $sql->divisions }}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>

        </div>
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
