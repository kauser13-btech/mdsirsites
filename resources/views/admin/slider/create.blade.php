@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('slider.store') }}" method="POST">
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
							<label class="col-sm-2 col-form-label">Text</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="text">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Landing Page</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="url" class="form-control" name="link" placeholder="https://example.com" pattern="*.://.*" size="30">
								</div>
							</div>
						</div>

						<div class="row">
							<div class="input-group">
								<div class="col-sm-2">
									<a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary"><i class="fa fa-picture-o"></i> Choose</a>
								</div>
								<div class="col-sm-7">
									<input id="thumbnail" class="form-control" type="text" name="img">
									<code>Image Size:1366x576</code>
								</div>
								<div class="col-sm-2">
									<div id="holder" style="max-height:100px;width: 100%;overflow: hidden;"></div>
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
							<div class="row">
								<label class="col-sm-2 col-form-label">Start publishing</label>
								<div class="col-sm-8">
									<div class="form-group">
										<input name="start_date" type="text" class="form-control datetimepicker" placeholder="Start publishing">
									</div>	
								</div>
							</div>
						</div>

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
		$('#lfm').filemanager('image', {prefix: route_prefix});
	});
	</script>
@endif
@endpush