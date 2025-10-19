@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('goldsilver.store') }}" method="POST">
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
			<div class="col-md-12">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Karat</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<label class="col-sm-2 col-form-label">Karat</label>
							<div class="col-sm-10">
								<div class="form-group">
									<input type="text" class="form-control" name="karat">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Text</label>
							<div class="col-sm-10">
								<div class="form-group">
									<input type="text" class="form-control" name="text">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Price</label>
							<div class="col-sm-10">
								<div class="form-group">
									<input type="text" class="form-control" name="price">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Type</label>
							<div class="col-sm-10">
								<div class="form-group">
									<select name="type" class="selectpicker" data-style="select-with-transition" title="Choose Type" data-size="4">
										<option value="1">GOLD </option>
										<option value="2">TRADITIONAL GOLD</option>
										<option value="3">SILVER</option>
										<option value="4">TRADITIONAL SILVER</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Home Order</label>
							<div class="col-sm-10">
								<div class="form-group">
									<input type="text" class="form-control" name="g_order">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Image</label>
							<div class="col-sm-8">
								<div class="row">
									<div class="col-md-2">
										<a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary"><i class="fa fa-picture-o"></i> Photo</a>
									</div>
									<div class="col-md-10">
										<input id="thumbnail" class="form-control" type="text" name="img">
										<code>Image Size:264x191</code>
									</div>
								</div>
							</div>
							<div class="col-sm-2">
								<div id="holder" style="max-height:100px;width: 100%;overflow: hidden;"></div>
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

@push('breadcrumbs') GOLD AND SILVER PRICE @endpush

@push('meta')
	<title>GOLD AND SILVER PRICE</title>
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