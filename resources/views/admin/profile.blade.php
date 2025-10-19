@extends('layouts.app')

@section('content')


<div class="col-md-8">
	<div class="card">
	<div class="card-header card-header-icon card-header-rose">
		<div class="card-icon">
		<i class="material-icons">perm_identity</i>
		</div>
		<h4 class="card-title">Edit Profile -
		<small class="category">Complete your profile</small>
		</h4>
	</div>
	<div class="card-body">
			<form class="form-horizontal" action="{{ url('admin/profileUpdate') }}" method="POST" enctype="multipart/form-data">
			@csrf
			@if (Session::has('success'))
				<script type="text/javascript">
					setTimeout(function() {
						md.showNotification('top','center','success',"{{ Session::get('success') }}").trigger('click');
					},100);
				</script>
			@endif
			<div class="row">
				<div class="col-md-6">
				<div class="form-group">
					<label class="bmd-label-floating">Username</label>
					<input type="text" class="form-control" value="{{ Auth::user()->email }}" disabled>
				</div>
				</div>
				<div class="col-md-6">
				<div class="form-group">
					<label class="bmd-label-floating">Email address</label>
					<input type="email" class="form-control" value="{{ Auth::user()->email }}" disabled>
				</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
				<div class="form-group">
					<label class="bmd-label-floating">Fist Name</label>
					<input type="text" class="form-control" name="name" value="{{ Auth::user()->name }}" required>
				</div>
				</div>
				<div class="col-md-6">
				<div class="form-group">
					<label class="bmd-label-floating">Designation</label>
					<input class="form-control" type="text" name="designation" value="{{ Auth::user()->designation }}" required>
				</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
				<div class="form-group">
					<label class="bmd-label-floating">New Password</label>
					<input type="password" class="form-control" id="examplePassword" name="password">
					<input type="hidden" name="old-password" value="{{ Auth::user()->password }}">
				</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<h4 class="title">Profile Picture</h4>
					<div class="fileinput fileinput-new text-center" data-provides="fileinput">
						<div class="fileinput-new thumbnail img-circle">
							@if(Auth::user()->img)
								<img src="{{ \App\Helpers\ImageStoreHelpers::showImage('profile',Auth::user()->created_at,Auth::user()->img) }}" alt="Ad Image">
							@else
								<img src="{{ asset('/admin/img/placeholder.jpg') }}" alt="...">
							@endif
						</div>
						<div class="fileinput-preview fileinput-exists thumbnail img-circle"></div>
						<div>
							<span class="btn btn-round btn-rose btn-file">
								<span class="fileinput-new">Add Photo</span>
								<span class="fileinput-exists">Change</span>
								<input type="file" name="profile_img" />
							</span>
							<br />
							<a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
						</div>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-rose pull-right">Update Profile</button>
			<div class="clearfix"></div>
		</form>
	</div>
	</div>
</div>
			
		
			

@endsection

@push('breadcrumbs') Profile @endpush

@push('meta')
	<title>{{ config('app.name', 'Laravel') }}</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush