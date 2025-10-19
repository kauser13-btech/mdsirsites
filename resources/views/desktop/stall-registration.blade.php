@extends('layouts.desktop')

@section('content')
<section class="members-page report-page my-5">
    <div class="container">
        <div class="card">
            <div class="card-header"><h2 class="text-center p-0 m-0">Stall Registration for BAJUS Expo-2022</h2></div>
            <div class="card-body">

                <form class="row g-3 was-validated" novalidate action="{{ route('stall.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @if (Session::has('success'))
                        <div class="alert alert-success" role="alert">{{ Session::get('success') }}</div>
                        <div class="clearfix"></div>
                    @endif

                    <div class="col-md-6">
                        <label class="form-label">নাম</label>
                        <input type="text" class="form-control" placeholder="First Name" name="f_name" value="{{ old('f_name') }}" required>
                        @error('f_name')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">&nbsp;</label>
                        <input type="text" class="form-control" placeholder="Last Name" name="l_name" value="{{ old('l_name') }}" required>
                        @error('l_name')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">মোবাইল নম্বর</label>
                        <input type="text" class="form-control" placeholder="মোবাইল নম্বর" name="mobile" value="{{ old('mobile') }}" required>
                        @error('mobile')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">প্রতিষ্ঠানের নাম</label>
                        <input type="text" class="form-control" placeholder="প্রতিষ্ঠানের নাম" name="organization" value="{{ old('organization') }}" required>
                        @error('organization')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-12">
                        <label class="form-label">ঠিকানা</label>
                        <textarea class="form-control" name="address" required>{{ old('address') }}</textarea>
                        @error('address')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="col-md-4">
                        <label class="form-label">বিভাগ</label>
                        <select class="form-select" name="divisions" id="divisions" onchange="divisionsList();" required>
                            <option disabled selected>Select Division</option>
                            <option @if(old('divisions')=='Barishal') selected @endif value="Barishal">Barishal</option>
                            <option @if(old('divisions')=='Chattogram') selected @endif value="Chattogram">Chattogram</option>
                            <option @if(old('divisions')=='Dhaka') selected @endif value="Dhaka">Dhaka</option>
                            <option @if(old('divisions')=='Khulna') selected @endif value="Khulna">Khulna</option>
                            <option @if(old('divisions')=='Mymensingh') selected @endif value="Mymensingh">Mymensingh</option>
                            <option @if(old('divisions')=='Rajshahi') selected @endif value="Rajshahi">Rajshahi</option>
                            <option @if(old('divisions')=='Rangpur') selected @endif value="Rangpur">Rangpur</option>
                            <option @if(old('divisions')=='Sylhet') selected @endif value="Sylhet">Sylhet</option>
                        </select>
                        @error('divisions')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">জেলা</label>
                        <select name="district" class="form-select" id="distr" required></select>
                        @error('district')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">উপজেলা/থানা</label>
                        <input type="text" class="form-control" placeholder="উপজেলা/থানা" name="thana" value="{{ old('thana') }}" required>
                        @error('thana')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">স্টল সংখ্যা</label>
                        <input type="number" class="form-control" placeholder="স্টল সংখ্যা" name="stalls_number" value="{{ old('stalls_number') }}" required>
                        @error('stalls_number')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">টিআইএন নম্বর</label>
                        <input type="number" class="form-control" placeholder="টিআইএন নম্বর" name="tin_number" value="{{ old('tin_number') }}" required>
                        @error('tin_number')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">জাতীয় পরিচয়পত্র নম্বর</label>
                        <input type="number" class="form-control" placeholder="জাতীয় পরিচয়পত্র নম্বর" name="nid_number" value="{{ old('nid_number') }}" required>
                        @error('nid_number')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">ই-মেইল</label>
                        <input type="email" class="form-control" placeholder="ই-মেইল" name="email" value="{{ old('email') }}" required>
                        @error('email')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="col-12">
                        <button type="submit" class="btn btn-success">Submit</button>
                    </div>
                </form>

            </div>
        </div>

    </div>
</section>


@endsection

@push('meta')
    <title>Bajus - Become a Member – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন</title>
    <meta property="og:title" content="Bajus - Become a Member – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta name="url" content="{{ url('/') }}">
    <meta name="keywords" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন,Become a Member">
    <meta name="description" content="Become a Member – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:description" content="Become a Member – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
    <meta property="og:image" content="{{ url('desktop/img/default-img.jpg') }}" />
    <link rel="canonical" href="{{ url('/') }}">
    <link rel="image_src" href="{{ url('desktop/img/default-img.jpg') }}">
@endpush

@push('stylesheet')
@endpush

@push('scripts')
<script>
    jQuery(document).ready(function($) {
        $("#divisions").val("{{old('divisions')}}").change();
        @if(old('district'))
        setTimeout(function(){
            $("#distr").val("{{old('district')}}").change();
        },900);
        @endif
    });

    function divisionsList() {
        // get value from division lists
        var diviList = document.getElementById('divisions').value;

        // set barishal division districts
        if(diviList == 'Barishal'){     
            var disctList = '<option disabled selected>Select District</option><option value="Barguna">Barguna</option><option value="Barishal">Barishal</option><option value="Bhola">Bhola</option><option value="Jhalokhathi">Jhalokhathi</option><option value="Patuakhali">Patuakhali</option><option value="Pirojpur">Pirojpur</option>';
        }
        // set Chattogram division districts
        else if(diviList == 'Chattogram') {
            var disctList = '<option disabled selected>Select District</option><option value="Bandarban">Bandarban</option><option value="Chandpur">Chandpur</option><option value="Chattogram">Chattogram</option><option value="Cumilla">Cumilla</option><option value="Cox\'s Bazar">Cox\'s Bazar</option><option value="Feni">Feni</option><option value="Khagrachhari">Khagrachhari</option><option value="Noakhali">Noakhali</option><option value="Rangamati">Rangamati</option>';   
        }
        // set Dhaka division districts
        else if(diviList == 'Dhaka') {
            var disctList = '<option disabled selected>Select District</option><option value="Dhaka">Dhaka</option><option value="Faridpur">Faridpur</option><option value="Gazipur">Gazipur</option><option value="Gopalganj">Gopalganj</option><option value="Kishoreganj">Kishoreganj</option><option value="Madaripur">Madaripur</option><option value="Manikganj">Manikganj</option><option value="Munshiganj">Munshiganj</option><option value="Narayanganj">Narayanganj</option><option value="Narsingdi">Narsingdi</option><option value="Rajbari">Rajbari</option><option value="Shariatpur">Shariatpur</option><option value="Tangail">Tangail</option>';
        }
        
        else if(diviList == 'Khulna') {
            var disctList = '<option disabled selected>Select District</option><option value="Bagerhat">Bagerhat</option><option value="Chuadanga">Chuadanga</option><option value="Jashore">Jashore</option><option value="Jhenaidah">Jhenaidah</option><option value="Khulna">Khulna</option><option value="Kushtia">Kushtia</option><option value="Magura">Magura</option><option value="Meharpur">Meharpur</option><option value="Narail">Narail</option><option value="Satkhira">Satkhira</option>';
        }
        
        else if(diviList == 'Mymensingh') {
            var disctList = '<option disabled selected>Select District</option><option value="Jamalpur">Jamalpur</option><option value="Mymensingh">Mymensingh</option><option value="Netrokona">Netrokona</option><option value="Sherpur">Sherpur</option>';
        }
        else if(diviList == 'Rajshahi') {
            var disctList = '<option disabled selected>Select District</option><option value="Bogura">Bogura</option><option value="Chapai Nawabganj">Chapai Nawabganj</option><option value="Jaipurhat">Jaipurhat</option><option value="Naogaon">Naogaon</option><option value="Natore">Natore</option><option value="Pabna">Pabna</option><option value="Rajshahi">Rajshahi</option><option value="Sirajganj">Sirajganj</option>';
        }
        else if(diviList == 'Rangpur') {
            var disctList = '<option disabled selected>Select District</option><option value="Dinajpur">Dinajpur</option><option value="Gaibandha">Gaibandha</option><option value="Lalmonirhat">Lalmonirhat</option><option value="Nilphamari">Nilphamari</option><option value="Panchagarh">Panchagarh</option><option value="Rangpur">Rangpur</option><option value="Thakurgaon">Thakurgaon</option>';
        }
        else if(diviList == 'Sylhet') {
            var disctList = '<option disabled selected>Select District</option><option value="Habiganj">Habiganj</option><option value="Mauluvibazar">Mauluvibazar</option><option value="Sunamganj">Sunamganj</option><option value="Sylhet">Sylhet</option>';
        }

        document.getElementById("distr").innerHTML= disctList;
    }

</script>
@endpush
