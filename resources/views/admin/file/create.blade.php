@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('file.store') }}" method="POST">
	@csrf

	@if (Session::has('success'))
		<script type="text/javascript">
			setTimeout(function() {
		        md.showNotification('top','center','success',"{{ Session::get('success') }}").trigger('click');
		    },100);
		</script>
	@endif

	<div class="col-md-12">
		<div class="row">
			<div class="col-md-7">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Text</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<label class="col-sm-2 col-form-label">Title</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="title">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Page</label>
							<div class="col-sm-9">
								<div class="form-group">
									<select name="page" class="selectpicker" data-style="select-with-transition" title="Choose Page" data-size="6" required>
										<option disabled>Choose Page</option>
										<option value="Govt_Circular">Govt. Circular</option>
										<option value="Annual_Report">Annual Report</option>
										<option value="Become_A_Member">Become a Member</option>
										<option value="Gold_And_SilverRate">Gold And Silver Rate</option>
										<option value="Policy">Policy</option>
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="input-group">
								<div class="col-sm-3">
									<a id="lfm" data-input="file" data-preview="holder" class="btn btn-primary"><i class="fa fa-picture-o"></i> Choose PDF</a>
								</div>
								<div class="col-sm-8">
									<input id="file" class="form-control" type="text" name="file">
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="col-md-5">

				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Publishing</h4>
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
													<input name="s_status" class="form-check-input" type="radio" value="1" checked> Active
													<span class="circle"><span class="check"></span></span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label">
													<input name="s_status" class="form-check-input" type="radio" value="0"> Inactive
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
		</div>

		<div class="col-md-12">
			<div class="card-footer ml-auto mr-auto">
				<div class="col-md-12">
					<button type="submit" class="btn btn-rose">Submit</button>
				</div>
			</div>
		</div>

	</div>
</form>

@endsection

@push('breadcrumbs') News Add @endpush

@push('meta')
	<title>News Add</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@if(Auth::user()->role!='subscriber')
	<script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
	<script>
	jQuery(document).ready(function($) {
		var route_prefix = "/admin/news-filemanager";
		$('#lfm').filemanager('file', {prefix: route_prefix});
	});
	</script>
@endif
@endpush
