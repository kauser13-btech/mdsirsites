@extends('layouts.desktop')

@section('content')
<section class="report-page my-5">
    <div class="container">
        <div class="report-page-title mb-4">{{ str_replace('-', ' ', $cat) }}</div>
        <div class="bg-light p-3">
                <table id="datatables" class="table dataTable table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                    <thead>
                        <tr>
                            <th>Name Of Members</th>
                            <th>Designation</th>
                            <th>Institution</th>
                            <th>Institution Address</th>
                            <th class="disabled-sorting text-right">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($sql as $row)
                        @php
                        	$designation = json_decode($row->standing_committee);
                        	$designation_key = array_search($cat,$designation->name,true);
                        	$designation_name = ucwords(str_replace('_', ' ', $designation->post[$designation_key]));
                        	$designation_name = ucwords(str_replace('-', ' ', $designation_name));
                        	$designation_order = 4;
                        	if ( $designation_name == 'Chairman' )
                        	    $designation_order = 1;
                        	elseif ( $designation_name == 'Vice Chairman' )
                        	    $designation_order = 2;
                        	elseif ( $designation_name == 'Member Secretary' )
                        	    $designation_order = 3;
                        @endphp
                        <tr>
                            <td>{{ $row->name }}</td>
                            <td data-order="{{ $designation_order }}">{{ $designation_name }}</td>
                            <td>{{ $row->inst_name }}</td>
                            <td>{{ $row->inst_address }}</td>
                            <td class="disabled-sorting text-right">
                                <a href="{{ url('member/'.$row->id) }}" class="btn btn-secondary">Details</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
</section>

@endsection

@push('meta')
    <title>Bajus - DISTRICT COMMITTEE – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন</title>
    <meta property="og:title" content="Bajus - DISTRICT COMMITTEE – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন,DISTRICT COMMITTEE">
    <meta name="description" content="DISTRICT COMMITTEE – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:description" content="DISTRICT COMMITTEE – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
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
    "order": [ 1, 'asc' ],
    "pagingType": "full_numbers",
    "lengthMenu": [
        [25, 50, 100, -1],
        [25, 50, 100, "All"]
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
