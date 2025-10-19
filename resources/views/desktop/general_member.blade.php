@extends('layouts.desktop')

@section('content')
<section class="report-page my-5">
    <div class="container">
        <div class="report-page-title mb-4">GENERAL MEMBER</div>
        <div class="bg-light rounded-3 p-3">
                <table id="datatables" class="table dataTable table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                    <thead>
                        <tr>
                            <th>Name Of Members</th>
                            <th>Name Of Institution</th>
                            <th>Address Of Institution</th>
                            <th>Contact</th>
                            <th class="disabled-sorting text-right">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($sql as $row)
                        <tr>
                            <td>{{ $row->name }}</td>
                            <td>{{ $row->inst_name }}</td>
                            <td>{{ $row->inst_address }}</td>
                            <td>{{ $row->contact }}</td>
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
