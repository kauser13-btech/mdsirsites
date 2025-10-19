@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('gallery.homeGalleryUpdate') }}" method="POST">
	@csrf
	<div class="col-md-12">
		@if (Session::has('success'))
			<script type="text/javascript">
				setTimeout(function() {
			        md.showNotification('top','center','success',"{{ Session::get('success') }}").trigger('click');
			    },100);
			</script>
		@endif
		<div class="row">
			<div class="col-md-12">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Gallery IDS</h4>
						</div>
					</div>
					<div class="card-body ">
						@php
							$ids = $sql ? json_decode($sql->value) : [];
						@endphp
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 1</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" name="ids[]" class="form-control" value="{{ $sql ? $ids[0] : '' }}" required>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 2</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" name="ids[]" class="form-control" value="{{ $sql ? $ids[1] : '' }}" required>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 3</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" name="ids[]" class="form-control" value="{{ $sql ? $ids[2] : '' }}" required>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 4</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" name="ids[]" class="form-control" value="{{ $sql ? $ids[3] : '' }}" required>
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

@push('breadcrumbs') News Add @endpush

@push('meta')
	<title>News Add</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush
