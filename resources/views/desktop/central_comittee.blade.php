@extends('layouts.desktop')

@section('content')
<section class="members-page report-page my-5">
    <div class="container">
        <div class="report-page-title mb-4">CENTRAL COMMITTEE</div>

        <div class="row justify-content-md-center">
            <div class="col-12 mb-5">
                <div class="members-president">
                    @if($president)
                        <div class="row">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="img">
                                    <img class="w-100" src="{{ $president->img ? $president->img : asset('/admin/img/default-avatar.png') }}" alt="{{ $president->name }}">
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-8 pt-5 pe-3 ps-3 members-president-desc">
                                <div class="info">
                                    <p style="font-size: 20px;margin-bottom: 8%;">“Jewelry is a potential sector of the country. Unfortunately, the field has not flourished that much. I will try my level best to develop the sector and make it export oriented.”</p>
                                    <h1>{{ $president->name }}</h1>
                                    <h2 style="text-transform: capitalize;">{{ $president->central_committee_post }}</h2>
                                    <span>Bangladesh Jewellers Association (BAJUS)</span>
                                </div>
                            </div>
                        </div>
                    @else
                        <div class="row mt-3 secretary">
                            <h1 class="position-title">President not set.</h1>
                        </div>
                    @endif
                </div>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row mt-3 executive-member">
{{--            <h1 class="position-title">Vice President</h1>--}}
            @if($vice_president)
                @foreach($vice_president as $row)
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4" style="padding: 0px 20px;">
                        <a href="{{ url('member/'.$row->id) }}"  class="text-decoration-none" >
                            <div class="member-card">
                                <div class="img">
                                    @php
                                        $defaultAvatar = ($row->gender=='Male')?'default-avatar.png':'default-avata-f.jpg';
                                    @endphp
                                    <img src="{{ $row->img ? $row->img : asset('/admin/img/'.$defaultAvatar) }}" alt="{{ $row->name }}">
                                </div>
                                <div class="member-description">
                                    <h2 style="text-transform: capitalize;color: white;font-size: 18px;">{{ ucwords(str_replace('-', ' ', $row->central_committee_post)) }}</h2>
                                    <h2>{{ $row->name }}</h2>
                                    <h3>{{ $row->inst_name }}</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
                @foreach($general_secretary as $row)
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4" style="padding: 0px 20px;">
                        <a href="{{ url('member/'.$row->id) }}"  class="text-decoration-none" >
                            <div class="member-card">
                                <div class="img">
                                    @php
                                        $defaultAvatar = ($row->gender=='Male')?'default-avatar.png':'default-avata-f.jpg';
                                    @endphp
                                    <img src="{{ $row->img ? $row->img : asset('/admin/img/'.$defaultAvatar) }}" alt="{{ $row->name }}">
                                </div>
                                <div class="member-description">
                                    <h2 style="text-transform: capitalize;color: white;font-size: 18px;">{{ ucwords(str_replace('-', ' ', $row->central_committee_post)) }}</h2>
                                    <h2>{{ $row->name }}</h2>
                                    <h3>{{ $row->inst_name }}</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
                @foreach($assistant_secretary as $row)
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4" style="padding: 0px 20px;">
                        <a href="{{ url('member/'.$row->id) }}"  class="text-decoration-none" >
                            <div class="member-card">
                                <div class="img">
                                    @php
                                        $defaultAvatar = ($row->gender=='Male')?'default-avatar.png':'default-avata-f.jpg';
                                    @endphp
                                    <img src="{{ $row->img ? $row->img : asset('/admin/img/'.$defaultAvatar) }}" alt="{{ $row->name }}">
                                </div>
                                <div class="member-description">
                                    <h2 style="text-transform: capitalize;color: white;font-size: 18px;">{{ ucwords(str_replace('-', ' ', $row->central_committee_post)) }}</h2>
                                    <h2>{{ $row->name }}</h2>
                                    <h3>{{ $row->inst_name }}</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
                @foreach($treasurer as $row)
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
                        <a href="{{ url('member/'.$row->id) }}"  class="text-decoration-none" >
                            <div class="member-card">
                                <div class="img">
                                    @php
                                        $defaultAvatar = ($row->gender=='Male')?'default-avatar.png':'default-avata-f.jpg';
                                    @endphp
                                    <img src="{{ $row->img ? $row->img : asset('/admin/img/'.$defaultAvatar) }}" alt="{{ $row->name }}">
                                </div>
                                <div class="member-description">
                                    <h2 style="text-transform: capitalize;color: white;font-size: 18px;">{{ ucwords(str_replace('-', ' ', $row->central_committee_post)) }}</h2>
                                    <h2>{{ $row->name }}</h2>
                                    <h3>{{ $row->inst_name }}</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
                @foreach($executive_member as $row)
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4" style="padding: 0px 20px;">
                        <a href="{{ url('member/'.$row->id) }}"  class="text-decoration-none" >
                            <div class="member-card">
                                <div class="img">
                                    @php
                                        $defaultAvatar = ($row->gender=='Male')?'default-avatar.png':'default-avata-f.jpg';
                                    @endphp
                                    <img src="{{ $row->img ? $row->img : asset('/admin/img/'.$defaultAvatar) }}" alt="{{ $row->name }}">
                                </div>
                                <div class="member-description">
                                    <h2 style="text-transform: capitalize;color: white;font-size: 18px;">{{ ucwords(str_replace('-', ' ', $row->central_committee_post)) }}</h2>
                                    <h2>{{ $row->name }}</h2>
                                    <h3>{{ $row->inst_name }}</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach

            @endif
        </div>


    </div>
</section>


@endsection

@push('meta')
    <title>Bajus - CENTRAL COMMITTEE – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন</title>
    <meta property="og:title" content="Bajus - CENTRAL COMMITTEE – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন,CENTRAL COMMITTEE">
    <meta name="description" content="CENTRAL COMMITTEE – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:description" content="CENTRAL COMMITTEE – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta property="og:image" content="{{ url('desktop/img/default-img.jpg') }}" />
    <link rel="canonical" href="{{ url('/') }}">
    <link rel="image_src" href="{{ url('desktop/img/default-img.jpg') }}">
@endpush

@push('stylesheet')
@endpush

@push('scripts')
<script src="{{ asset('/admin/js/plugins/jquery.dataTables.min.js') }}"></script>
<script type="text/javascript">
jQuery(document).ready(function($) {
    $('#datatables').DataTable({
    "pagingType": "full_numbers",
    "lengthMenu": [
        [10, 25, 50, -1],
        [10, 25, 50, "All"]
    ],
    responsive: true,
    language: {
    search: "_INPUT_",
    searchPlaceholder: "Search records",
    }
    });
});
</script>
@endpush
