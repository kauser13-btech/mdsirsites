@extends('layouts.desktop')

@section('content')

<section class="report-page gold-rate-page my-5">
    <div class="container">
        <div class="report-page-title mb-4">Gold And Silver Rate <a href="{{ $goldPriceLatest->file }}" target="_blank">View In PDF</a></div>

        <div class="mb-5">
            <img class="w-100" src="{{ url('desktop/img/gold-title.png') }}" alt="gold price">
            <table class="table table-bordered table-striped gold-table">
                <thead>
                    <tr>
                        <th scope="col">Product</th>
                        <th scope="col">Description</th>
                        <th class="text-center" scope="col">Price</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($sql->whereIn('type',[1,2]) as $row)
                    <tr>
                        <th scope="row">
                            <h6>
                                @if($row->type==1)
                                    {{ $row->karat }} KARAT Gold
                                @elseif($row->type==2)
                                    {{ $row->karat }} Gold
                                @endif
                            </h6>
                        </th>
                        <td class="align-middle">
                            <p>{{ $row->text }}</p>
                        </td>
                        <td class="align-middle text-center"><span class="price">{{ $row->price }} BDT/GRAM</span></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div>
            <img class="w-100" src="{{ url('desktop/img/silver-title.png') }}" alt="silver price">
            <table class="table table-bordered table-striped silver-table">
                <thead>
                    <tr>
                        <th scope="col">Product</th>
                        <th scope="col">Description</th>
                        <th class="text-center" scope="col">Price</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($sql->whereIn('type',[3,4]) as $row)
                    <tr>
                        <th scope="row">
                            <h6>
                                @if($row->type==3)
                                    {{ $row->karat }} KARAT Silver
                                @elseif($row->type==4)
                                    {{ $row->karat }} Silver
                                @endif
                            </h6>
                        </th>
                        <td class="align-middle">
                            <p>{{ $row->text }}</p>
                        </td>
                        <td class="align-middle text-center"><span class="price">{{ $row->price }} BDT/GRAM</span></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </div>
</section>
@endsection

@push('meta')
    <title>Bajus - Gold Price – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন</title>
    <meta property="og:title" content="Bajus - Gold Price – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
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
