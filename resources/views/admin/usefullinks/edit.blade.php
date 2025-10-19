@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('usefullinks.update', $sql->id) }}" method="POST">
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
			<div class="col-md-12">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Text</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<label class="col-sm-2 col-form-label">Name</label>
							<div class="col-sm-10">
								<div class="form-group">
									<input type="text" class="form-control" name="name" value="{{ $sql->name }}">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Url</label>
							<div class="col-sm-10">
								<div class="form-group">
									<input type="url" class="form-control" name="url" value="{{ $sql->url }}">
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
										<input id="thumbnail" class="form-control" type="text" name="img" value="{{ $sql->img }}">
										<code>Image Size:160x84</code>
									</div>
								</div>
							</div>
							<div class="col-sm-2">
								<div id="holder" style="max-height:100px;width: 100%;overflow: hidden;">
									<img src="{{ $sql->img }}" width="200">
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

@push('breadcrumbs') Link Update @endpush

@push('meta')
	<title>Link Update</title>
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