
@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-primary card-header-icon">
				<div class="card-icon">
					<i class="material-icons">assignment</i>
				</div>
				<h4 class="card-title">Become a Member</h4>
			</div>
			<div class="card-body">
				<div class="section about-section gray-bg" id="about">
				    <div class="row align-items-center flex-row-reverse mb-5">
				        <div class="col-lg-8">
				            <div class="about-text go-to">
				                <h3 class="dark-color">{{ $sql->bn_f_name.' '.$sql->bn_l_name }}</h3>
				                <h4 class="dark-color">{{ $sql->en_f_name.' '.$sql->en_l_name }}</h4>
				                <div class="row about-list">
				                    <div class="col-md-6">
				                        <div class="media">
				                            <label>বিভাগ </label>
				                            <p>{{ $sql->divisions }}</p>
				                        </div>
				                        <div class="media">
				                            <label>জেলা </label>
				                            <p>{{ $sql->district }}</p>
				                        </div>
				                        <div class="media">
				                            <label>উপজেলা/থানা </label>
				                            <p>{{ $sql->thana }}</p>
				                        </div>
				                        <div class="media">
				                            <label>পিতা/স্বামীর নাম </label>
				                            <p>{{ $sql->guardian }}</p>
				                        </div>
				                        <div class="media">
				                            <label>প্রতিষ্ঠানের নাম </label>
				                            <p>{{ $sql->organization }}</p>
				                        </div>
				                        <div class="media">
				                            <label>মোবাইল নম্বর</label>
				                            <p>{{ $sql->mobile }}</p>
				                        </div>
				                    </div>

				                    <div class="col-md-6">
				                        <div class="media">
				                            <label>টেলিফোন নম্বর </label>
				                            <p>{{ $sql->telephone }}</p>
				                        </div>
				                        <div class="media">
				                            <label>ঠিকানা </label>
				                            <p>{{ $sql->address }}</p>
				                        </div>
				                        <div class="media">
				                            <label>ভ্যাট রেজিষ্ট্রেশন নম্বর </label>
				                            <p>{{ $sql->vat_number }}</p>
				                        </div>
				                        <div class="media">
				                            <label>টিআইএন নম্বর </label>
				                            <p>{{ $sql->tin_number }}</p>
				                        </div>
				                        <div class="media">
				                            <label>জাতীয় পরিচয়পত্র নম্বর </label>
				                            <p>{{ $sql->nid }}</p>
				                        </div>
				                        <div class="media">
				                            <label>ই-মেইল </label>
				                            <p>{{ $sql->email }}</p>
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </div>
				        <div class="col-lg-4">
				            <div class="about-avatar">
				                <img src="{{ \App\Helpers\ImageStoreHelpers::showImage('becomeamember',$sql->created_at,$sql->image) }}" class="w-100">
				            </div>
				        </div>
				    </div>
				    <hr>
				    <div class="counter">
				        <div class="row">
				            <div class="col-6 col-lg-2">
				                <div class="count-data text-center">
				                    <h6 class="count h4" data-to="500" data-speed="500">ট্রেড লাইসেন্স</h6>
				                    <p class="m-0px font-w-600"><a href="{{ url('storage/becomeamember/'.date("Y/m/d",strtotime($sql->created_at)).'/'.$sql->trade_license) }}" class="btn btn-primary" download>Download</a></p>
				                </div>
				            </div>
				            <div class="col-6 col-lg-2">
				                <div class="count-data text-center">
				                    <h6 class="count h4" data-to="500" data-speed="500">টিআইএন</h6>
				                    <p class="m-0px font-w-600"><a href="{{ url('storage/becomeamember/'.date("Y/m/d",strtotime($sql->created_at)).'/'.$sql->tin_file) }}" class="btn btn-primary" download>Download</a></p>
				                </div>
				            </div>
				            <div class="col-6 col-lg-2">
				                <div class="count-data text-center">
				                    <h6 class="count h4" data-to="500" data-speed="500">ভ্যাট রেজিস্ট্রেশন</h6>
				                    <p class="m-0px font-w-600"><a href="{{ url('storage/becomeamember/'.date("Y/m/d",strtotime($sql->created_at)).'/'.$sql->vat_file) }}" class="btn btn-primary" download>Download</a></p>
				                </div>
				            </div>
				            <div class="col-6 col-lg-2">
				                <div class="count-data text-center">
				                    <h6 class="count h4" data-to="500" data-speed="500">ভিজিটিং কার্ড</h6>
				                    <p class="m-0px font-w-600"><a href="{{ url('storage/becomeamember/'.date("Y/m/d",strtotime($sql->created_at)).'/'.$sql->visiting_card_file) }}" class="btn btn-primary" download>Download</a></p>
				                </div>
				            </div>
				            <div class="col-6 col-lg-2">
				                <div class="count-data text-center">
				                    <h6 class="count h4" data-to="500" data-speed="500">জাতীয় পরিচয়পত্র</h6>
				                    <p class="m-0px font-w-600"><a href="{{ url('storage/becomeamember/'.date("Y/m/d",strtotime($sql->created_at)).'/'.$sql->nid_file) }}" class="btn btn-primary" download>Download</a></p>
				                </div>
				            </div>
				            <div class="col-6 col-lg-2">
				                <div class="count-data text-center">
				                    <h6 class="count h4" data-to="500" data-speed="500">অংশীদারী/লিমিটেড কোম্পানীর ক্ষেত্রে রেজুলেশন</h6>
				                    <p class="m-0px font-w-600"><a href="{{ url('storage/becomeamember/'.date("Y/m/d",strtotime($sql->created_at)).'/'.$sql->company_file) }}" class="btn btn-primary" download>Download</a></p>
				                </div>
				            </div>
				        </div>
				    </div>
				</div>
			</div>
		</div>
	</div>
</div>
		
		  

@endsection

@push('breadcrumbs') Menu List @endpush

@push('meta')
	<title>Menu List</title>
@endpush

@push('stylesheet')
<style type="text/css">
.about-list .media {
  padding: 5px 0;
}
.about-list label {
  color: #20247b;
  font-weight: 600;
  width: 30%;
  margin: 0;
  position: relative;
}
.about-list label:after {
  content: "";
  position: absolute;
  top: 0;
  bottom: 0;
  right: 11px;
  width: 1px;
  height: 12px;
  background: #20247b;
  -moz-transform: rotate(15deg);
  -o-transform: rotate(15deg);
  -ms-transform: rotate(15deg);
  -webkit-transform: rotate(15deg);
  transform: rotate(15deg);
  margin: auto;
  opacity: 0.5;
}
</style>
@endpush

@push('scripts')
@endpush