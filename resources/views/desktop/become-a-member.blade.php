@extends('layouts.desktop')

@section('content')
<section class="members-page report-page my-5">
    <div class="container">
        <h2>Become a Member <a class="float-end btn btn-secondary" target="_blank" href="{{ $becomeMember->file }}">Download Form</a></h2>
        <div class="bg-light p-4">
            <form class="row g-3 was-validated" novalidate action="{{ route('become-a-member.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @if (Session::has('success'))
                    <div class="alert alert-secondary" role="alert">{{ Session::get('success') }}</div>
                    <div class="clearfix"></div>
                @endif

                <div class="col-md-12">
                    <label class="form-label">নাম (বাংলা)</label>
                    <input type="text" class="form-control" placeholder="নাম" name="bn_f_name" value="{{ old('bn_f_name') }}" required>
                    @error('bn_f_name')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
{{--                <div class="col-md-12">--}}
{{--                    <label class="form-label">&nbsp;</label>--}}
{{--                    <input type="text" class="form-control" placeholder="Last" name="bn_l_name" value="{{ old('bn_l_name') }}" required>--}}
{{--                    @error('bn_l_name')--}}
{{--                        <div class="text-danger">{{ $message }}</div>--}}
{{--                    @enderror--}}
{{--                </div>--}}

                <div class="col-md-12">
                    <label class="form-label">নাম (English)</label>
                    <input type="text" class="form-control" placeholder="Name" name="en_f_name" value="{{ old('en_f_name') }}" required>
                    @error('en_f_name')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
{{--                <div class="col-md-6">--}}
{{--                    <label class="form-label">&nbsp;</label>--}}
{{--                    <input type="text" class="form-control" placeholder="Last" name="en_l_name" value="{{ old('en_l_name') }}" required>--}}
{{--                    @error('en_l_name')--}}
{{--                        <div class="text-danger">{{ $message }}</div>--}}
{{--                    @enderror--}}
{{--                </div>--}}

                <div class="col-md-12">
                    <label class="form-label">জাতীয় পরিচয়পত্র নম্বর</label>
                    <input type="text" class="form-control" placeholder="জাতীয় পরিচয়পত্র নম্বর" name="nid" value="{{ old('nid') }}" required>
                    @error('nid')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-md-12">
                    <label class="form-label">পিতা/স্বামীর নাম</label>
                    <input type="text" class="form-control" placeholder="পিতা/স্বামীর নাম" name="guardian" value="{{ old('guardian') }}">
                    @error('guardian')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-md-12">
                    <label class="form-label">মোবাইল নম্বর</label>
                    <input type="text" class="form-control" placeholder="মোবাইল নম্বর" name="mobile" value="{{ old('mobile') }}" required>
                    @error('mobile')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-md-12">
                    <label class="form-label">ই-মেইল</label>
                    <input type="text" class="form-control" placeholder="ই-মেইল" name="email" value="{{ old('email') }}">
                    @error('email')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>



                <div class="col-md-12">
                    <h2 class="form-label mb-0 mt-4">প্রতিষ্ঠানের তথ্য</h2>
                </div>
                <div class="col-md-12">
                    <label class="form-label">প্রতিষ্ঠানের নাম (English)</label>
                    <input type="text" class="form-control" placeholder="প্রতিষ্ঠানের নাম" name="organization" value="{{ old('organization') }}" required>
                    @error('organization')
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

                <div class="col-md-12">
                    <label class="form-label">টেলিফোন নম্বর</label>
                    <input type="text" class="form-control" placeholder="টেলিফোন নম্বর" name="telephone" value="{{ old('telephone') }}">
                    @error('telephone')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-md-12">
                    <label class="form-label">ঠিকানা (English)</label>
                    <textarea class="form-control" name="address" required>{{ old('address') }}</textarea>
                    @error('address')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-md-6">
                    <label class="form-label">ভ্যাট রেজিষ্ট্রেশন নম্বর</label>
                    <input type="text" class="form-control" placeholder="ভ্যাট রেজিষ্ট্রেশন নম্বর" name="vat_number" value="{{ old('vat_number') }}">
                    @error('vat_number')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-6">
                    <label class="form-label">টিআইএন নম্বর</label>
                    <input type="text" class="form-control" placeholder="টিআইএন নম্বর" name="tin_number" value="{{ old('tin_number') }}">
                    @error('tin_number')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>



                <div class="col-md-12">
                    <h2 class="form-label mb-0 mt-4">নথি সংযুক্ত করুন</h2>
                </div>
                <div class="col-md-4">
                    <label class="form-label">ট্রেড লাইসেন্স</label>
                    <input class="form-control" type="file" name="trade_license" value="{{ old('trade_license') }}" required>
                    @error('trade_license')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label class="form-label">পাসপোর্ট সাইজ ছবি</label>
                    <input class="form-control" type="file" name="image" value="{{ old('image') }}" required>
                    @error('image')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label class="form-label">জাতীয় পরিচয়পত্র</label>
                    <input class="form-control" type="file" name="nid_file" value="{{ old('nid_file') }}" required>
                    @error('nid_file')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-md-4">
                    <label class="form-label">টিআইএন</label>
                    <input class="form-control" type="file" name="tin_file" value="{{ old('tin_file') }}">
                    @error('tin_file')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-md-4">
                    <label class="form-label">ভ্যাট রেজিস্ট্রেশন</label>
                    <input class="form-control" type="file" name="vat_file" value="{{ old('vat_file') }}">
                    @error('vat_file')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label class="form-label">ভিজিটিং কার্ড</label>
                    <input class="form-control" type="file" name="visiting_card_file" value="{{ old('visiting_card_file') }}">
                    @error('visiting_card_file')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-md-4 mb-5">
                    <label class="form-label">অংশীদারী/লিমিটেড কোম্পানীর ক্ষেত্রে রেজুলেশন</label>
                    <input class="form-control" type="file" name="company_file" value="{{ old('company_file') }}">
                    @error('company_file')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="col-12">
                    <label class="form-label">অঙ্গীকার *</label>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="1" checked disabled>
                        <label class="form-check-label" for="gridCheck">আমি বাংলাদেশ জুয়েলার্স সমিতি-বাজুসের আদর্শ, উদ্দেশ্য ও নীতিমালা মেনে নিয়ে গঠনতন্ত্র মোতাবেক সকল নিয়ম ও নির্দেশনা মেনে চলতে বাধ্য থাকব বলে অঙ্গীকারবদ্ধ হয়ে সদস্য হবার জন্য আবেদন করছি। বাজুস কর্তৃক প্রণীত সকল নিয়ম-কানুন সর্বদা মেনে চলব। এর ব্যত্যয় ঘটলে বাজুস যে সিদ্ধান্ত গ্রহণ করবে তা মেনে নিতে বাধ্য থাকব। আমাকে/আমার প্রতিষ্ঠানকে বাজুসের সদস্যভূক্ত করে বাধিত করবেন।</label>
                    </div>
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </form>
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
