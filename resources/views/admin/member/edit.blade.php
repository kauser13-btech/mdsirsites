@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('member.update', $sql->id) }}" method="POST">
	@csrf
	@method('PATCH')

	@if (Session::has('success'))
		<script type="text/javascript">
			setTimeout(function() {
		        md.showNotification('top','center','success',"{{ Session::get('success') }}").trigger('click');
		    },100);
		</script>
	@endif

	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Member</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<label class="col-sm-3 col-form-label">Member ID</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="number" class="form-control" name="number_id" value="{{ $sql->number_id }}">
									@error('number_id')
										<div class="alert alert-danger">{{ $message }}</div>
									@enderror
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Member Since</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input name="member_since" type="text" class="form-control datepicker" placeholder="Member Since" value="{{ $sql->member_since }}">
									@error('number_id')
										<div class="alert alert-danger">{{ $message }}</div>
									@enderror
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Central Committee Post</label>
							<div class="col-sm-6">
								<div class="form-group">
									<select class="selectpicker" data-style="select-with-transition" title="Central Committee Post" data-size="10" name="central_committee_post">
										<option @if($sql->central_committee_post=='') selected @endif value="">N/A</option>
										<option @if($sql->central_committee_post=='president') selected @endif value="president">President</option>
										<option @if($sql->central_committee_post=='senior-vice-president') selected @endif value="senior-vice-president">Senior Vice President</option>
										<option @if($sql->central_committee_post=='vice-president') selected @endif value="vice-president">Vice President</option>
										<option @if($sql->central_committee_post=='general-secretary') selected @endif value="general-secretary">General Secretary</option>
										<option @if($sql->central_committee_post=='assistant-secretary') selected @endif value="assistant-secretary">Assistant Secretary</option>
										<option @if($sql->central_committee_post=='Treasurer') selected @endif value="Treasurer">Treasurer</option>
										<option @if($sql->central_committee_post=='executive-member') selected @endif value="executive-member">Executive Member</option>
									</select>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="form-group">
									<input type="number" class="form-control" name="central_committee_order" value="{{ $sql->central_committee_order }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">District Committee Post</label>
							<div class="col-sm-8">
								<div class="form-group">
									<select class="selectpicker" data-style="select-with-transition" title="District Committee Post" data-size="10" name="district_committee_post">
										<option @if($sql->district_committee_post=='') selected @endif value="">N/A</option>
										<option @if($sql->district_committee_post=='president') selected @endif value="president">President</option>
										<option @if($sql->district_committee_post=='general-secretary') selected @endif value="general-secretary">General Secretary</option>
										<option @if($sql->district_committee_post=='convener') selected @endif value="convener">Convener</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Divisions</label>
							<div class="col-sm-8">
								<div class="form-group">
									<select class="selectpicker" data-style="select-with-transition" title="Choose Division" data-size="7" name="divisions" id="divisions" onchange="divisionsList();">
										<option disabled @if($sql->divisions=='') selected @endif>Select Division</option>
										<option @if($sql->divisions=='Barishal') selected @endif value="Barishal">Barishal</option>
										<option @if($sql->divisions=='Chattogram') selected @endif value="Chattogram">Chattogram</option>
										<option @if($sql->divisions=='Dhaka') selected @endif value="Dhaka">Dhaka</option>
										<option @if($sql->divisions=='Khulna') selected @endif value="Khulna">Khulna</option>
										<option @if($sql->divisions=='Mymensingh') selected @endif value="Mymensingh">Mymensingh</option>
										<option @if($sql->divisions=='Rajshahi') selected @endif value="Rajshahi">Rajshahi</option>
										<option @if($sql->divisions=='Rangpur') selected @endif value="Rangpur">Rangpur</option>
										<option @if($sql->divisions=='Sylhet') selected @endif value="Sylhet">Sylhet</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">District</label>
							<div class="col-sm-8">
								<div class="form-group">
									<select name="district" class="form-control _select2" id="distr"></select>
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="card">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Institution Information</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<label class="col-sm-3 col-form-label">Name</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="inst_name" value="{{ $sql->inst_name }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Name in Bangla</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="inst_name_bn" value="{{ $sql->inst_name_bn }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Address</label>
							<div class="col-sm-8">
								<div class="form-group">
									<textarea class="form-control" name="inst_address">{!! $sql->inst_address !!}</textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Address in Bangla</label>
							<div class="col-sm-8">
								<div class="form-group">
									<textarea class="form-control" name="inst_address_bn">{!! $sql->inst_address_bn !!}</textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Trade License</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="inst_trade_license" value="{{ $sql->inst_trade_license }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">BIN</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="inst_bin" value="{{ $sql->inst_bin }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">TIN</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="inst_tin" value="{{ $sql->inst_tin }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Telephone Number</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="inst_telephone" value="{{ $sql->inst_telephone }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Mobile Number</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="inst_mobile" value="{{ $sql->inst_mobile }}">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="input-group">
								<div class="col-sm-3">
									<a id="lfm1" data-input="thumbnail1" data-preview="holder1" class="btn btn-primary text-light"><i class="fa fa-picture-o"></i>Photo</a>
								</div>
								<div class="col-sm-6">
									<input id="thumbnail1" class="form-control" type="text" name="img" value="{{ $sql->inst_img }}">
									<code>Image Size:265x272</code>
								</div>
								<div class="col-sm-3">
									<div id="holder1" style="max-height:100px;width: 100%;overflow: hidden;">
										<img src="{{ $sql->inst_img }}" width="50" height="60">
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="card">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Membership Status</h4>
						</div>
					</div>
					<div class="card-body ">
						<div class="col-md-12">
							<div class="form-group">
								<div class="row">
									<label class="col-sm-2 col-form-label">Status</label>
									<div class="col-sm-8">
										<div class="form-group">
											<div class="form-check">
												<label class="form-check-label">
													<input name="m_status" class="form-check-input" type="radio" value="1" @if($sql->m_status==1)checked @endif> Active
													<span class="circle"><span class="check"></span></span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label">
													<input name="m_status" class="form-check-input" type="radio" value="0" @if($sql->m_status==0)checked @endif> Inactive
													<span class="circle"><span class="check"></span></span>
												</label>
											</div>
										</div>
									</div>
									<label class="col-sm-2 label-on-right"><code>required</code></label>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Member Information</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="input-group">
								<div class="col-sm-3">
									<a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary text-light"><i class="fa fa-picture-o"></i> Upload Photo</a>
								</div>
								<div class="col-sm-6">
									<input id="thumbnail" class="form-control" type="text" name="img" value="{{ $sql->img }}">
									<code>Image Size:265x272</code>
								</div>
								<div class="col-sm-3">
									<div id="holder" style="max-height:100px;width: 100%;overflow: hidden;">
										<img src="{{ $sql->img }}" width="50" height="60">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Name</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="name" value="{{ $sql->name }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Name in Bangla</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="name_bn" value="{{ $sql->name_bn }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Gender</label>
							<div class="col-sm-8">
								<div class="form-group">
									<select name="gender" class="selectpicker" data-style="select-with-transition" title="Choose Gender" data-size="7">
										<option disabled @if($sql->gender=='') selected @endif> Choose Gender</option>
										<option @if($sql->gender=='Male') selected @endif value="Male">Male</option>
										<option @if($sql->gender=='Female') selected @endif value="Female">Female</option>
									</select>
		                      </div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Contact Number</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="contact" value="{{ $sql->contact }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Email</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="email" class="form-control" name="email" value="{{ $sql->email }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Blood Group</label>
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="blood_group" value="{{ $sql->blood_group }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-3 col-form-label">Home Address</label>
							<div class="col-sm-8">
								<div class="form-group">
									<textarea class="form-control" name="home_address">{!! $sql->home_address !!}</textarea>
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Standing Committee</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-12 dynamic-field" id="dynamic-field-1">

								@if($sql->standing_committee != '')
									@foreach(json_decode($sql->standing_committee, true)['name'] as $standing_committee)
										@if($standing_committee!='')
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<select name="standing_committee[name][]" class="form-control">
														<option value=""  @if($standing_committee == '') selected @endif>Select Standing Committee</option>
														<option @if($standing_committee == 'monitoring-of-districts-organization') selected @endif value="monitoring-of-districts-organization">Monitoring of Districts Organization</option>
														<option @if($standing_committee == 'banking-and-financial-service') selected @endif value="banking-and-financial-service">Banking And Financial Service</option>
														<option @if($standing_committee == 'pricing-and-price-monitoring') selected @endif value="pricing-and-price-monitoring">Pricing and Price Monitoring</option>
														<option @if($standing_committee == 'foreign-tread-and-market-development') selected @endif value="foreign-tread-and-market-development">Foreign Tread and Market Development</option>
														<option @if($standing_committee == 'tariff-and-taxation') selected @endif value="tariff-and-taxation">Tariff and Taxation</option>
														<option @if($standing_committee == 'media-communication-and-social-affairs') selected @endif value="media-communication-and-social-affairs">Media &#038; Communication and Social Affairs</option>
														<option @if($standing_committee == 'young-entrepreneurs') selected @endif value="young-entrepreneurs">Young Entrepreneurs</option>
														<option @if($standing_committee == 'women-affairs') selected @endif value="women-affairs">Women Affairs</option>
														<option @if($standing_committee == 'anti-smuggling-and-law-enforcement') selected @endif value="anti-smuggling-and-law-enforcement">Anti-Smuggling and Law Enforcement</option>
														<option @if($standing_committee == 'research-and-development') selected @endif value="research-and-development">Research and Development</option>
														<option @if($standing_committee == 'exhibition-tread-and-event-management') selected @endif value="exhibition-tread-and-event-management">Exhibition, Tread and Event Management</option>
														<option @if($standing_committee == 'law-and-membership') selected @endif value="law-and-membership">Law and Membership</option>
													</select>
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<select name="standing_committee[post][]" class="form-control">
														<option @if(json_decode($sql->standing_committee, true)['post'][$loop->index]=='') selected @endif value="">Select Standing Committee Post</option>
														<option @if(json_decode($sql->standing_committee, true)['post'][$loop->index]=='chairman') selected @endif value="chairman">Chairman</option>
														<option @if(json_decode($sql->standing_committee, true)['post'][$loop->index]=='vice-chairman') selected @endif value="vice-chairman">Vice Chairman</option>
														<option @if(json_decode($sql->standing_committee, true)['post'][$loop->index]=='member-secretary') selected @endif value="member-secretary">Member Secretary</option>
														<option @if(json_decode($sql->standing_committee, true)['post'][$loop->index]=='member') selected @endif value="member">Member</option>
													</select>
												</div>
											</div>
											<div class="col-md-2">
												<button type="button" class="btn btn-danger remove remove-button"><span class="material-icons">delete_forever</span></button>
											</div>
										</div>
										@endif
									@endforeach
								@else
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<select name="standing_committee[name][]" class="form-control">
													<option value="" selected>Select Standing Committee</option>
													<option value="monitoring-of-districts-organization">Monitoring of Districts Organization</option>
													<option value="banking-and-financial-service">Banking And Financial Service</option>
													<option value="pricing-and-price-monitoring">Pricing and Price Monitoring</option>
													<option value="foreign-tread-and-market-development">Foreign Tread and Market Development</option>
													<option value="tariff-and-taxation">Tariff and Taxation</option>
													<option value="media-communication-and-social-affairs">Media &#038; Communication and Social Affairs</option>
													<option value="young-entrepreneurs">Young Entrepreneurs</option>
													<option value="women-affairs">Women Affairs</option>
													<option value="anti-smuggling-and-law-enforcement">Anti-Smuggling and Law Enforcement</option>
													<option value="research-and-development">Research and Development</option>
													<option value="exhibition-tread-and-event-management">Exhibition, Tread and Event Management</option>
													<option value="law-and-membership">Law and Membership</option>
												</select>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<select name="standing_committee[post][]" class="form-control">
													<option value="" selected>Select Standing Committee Post</option>
													<option value="Chairman">Chairman</option>
													<option value="Vice_Chairman">Vice Chairman</option>
													<option value="Member_Secretary">Member Secretary</option>
													<option value="Member">Member</option>
												</select>
											</div>
										</div>
										<div class="col-md-2">
											<button type="button" class="btn btn-danger remove remove-button"><span class="material-icons">delete_forever</span></button>
										</div>
									</div>
								@endif
								<div class="hid-standing d-none">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<select name="standing_committee[name][]" class="form-control">
													<option value="" selected>Select Standing Committee</option>
													<option value="monitoring-of-districts-organization">Monitoring of Districts Organization</option>
													<option value="banking-and-financial-service">Banking And Financial Service</option>
													<option value="pricing-and-price-monitoring">Pricing and Price Monitoring</option>
													<option value="foreign-tread-and-market-development">Foreign Tread and Market Development</option>
													<option value="tariff-and-taxation">Tariff and Taxation</option>
													<option value="media-communication-and-social-affairs">Media &#038; Communication and Social Affairs</option>
													<option value="young-entrepreneurs">Young Entrepreneurs</option>
													<option value="women-affairs">Women Affairs</option>
													<option value="anti-smuggling-and-law-enforcement">Anti-Smuggling and Law Enforcement</option>
													<option value="research-and-development">Research and Development</option>
													<option value="exhibition-tread-and-event-management">Exhibition, Tread and Event Management</option>
													<option value="law-and-membership">Law and Membership</option>
												</select>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<select name="standing_committee[post][]" class="form-control">
													<option value="" selected>Select Standing Committee Post</option>
													<option value="Chairman">Chairman</option>
													<option value="Vice_Chairman">Vice Chairman</option>
													<option value="Member_Secretary">Member Secretary</option>
													<option value="Member">Member</option>
												</select>
											</div>
										</div>
										<div class="col-md-2">
											<button type="button" class="btn btn-danger remove remove-button"><span class="material-icons">delete_forever</span></button>
										</div>
									</div>
								</div>

								<div id="append-dynamic-field"></div>
							</div>
							<div class="col-md-3 mt-30 append-buttons">
								<div class="clearfix">
									<button type="button" id="add-button" class="btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-plus fa-fw"></i></button>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="col-md-12">
			<div class="card-footer ml-auto mr-auto">
				<div class="col-md-12">
					<button type="submit" class="btn btn-rose">Update</button>
				</div>
			</div>
		</div>

	</div>
</form>

@endsection

@push('breadcrumbs') Member Edit @endpush

@push('meta')
	<title>Member Edit</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@if(Auth::user()->role!='subscriber')
	<script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
	<script>
		jQuery(document).ready(function($) {
			var route_prefix = "/admin/news-filemanager";
			$('#lfm').filemanager('image', {prefix: route_prefix});

			$("#divisions").val("{{$sql->divisions}}").change();
			setTimeout(function(){
				$("#distr").val("{{$sql->district}}").change();
			},900);

		});
	</script>
@endif
<script>
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

	$(document).ready(function() {
		$('body').on('click', '#add-button', function() {
			var div = $("#dynamic-field-1 > .hid-standing .row").clone();
			$("#append-dynamic-field").append(div);
		});

		$('body').on('click', '.remove-button', function() {
			$(this).parents('.dynamic-field .row').remove();
		});
	});

	</script>
@endpush
