@extends('layouts.desktop')

@section('content')


<section class="report-page my-5">
    <div class="container">
        <div class="report-page-title mb-4">Annual Report</div>
        <div class="bg-light">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th scope="col" width="10%">No.</th>
                        <th scope="col">Title</th>
                        <th scope="col" width="15%">PDF</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $i=1;
                        $list = '';
                        foreach($annualReport as $row){
                            $list .= '<tr>
                                        <th scope="row">'.$i.'</th>
                                        <td>'.$row->title.'</td>
                                        <td>
                                            <div class="d-flex flex-row ">
                                                <i class="bi bi-file-earmark-pdf"></i>
                                                <a href="'.$row->file.'" class="download" download>Download</a>
                                            </div>
                                        </td>
                                     </tr>';
                            $i++;
                        }
                    @endphp
                    {!! $list !!}

                </tbody>

            </table>
        </div>

    </div>
</section>

@endsection

@push('meta')
    <title>Bajus - Annual Report – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন</title>
    <meta property="og:title" content="Bajus - Annual Report – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
    <meta name="description" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:description" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta property="og:image" content="https://cdn.bd-pratidin.com/files/shares/abg/sayemsobhan.png" />
    <link rel="canonical" href="{{ url('/') }}">
    <link rel="image_src" href="{{ url('desktop/img/default-img.jpg') }}">
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush
