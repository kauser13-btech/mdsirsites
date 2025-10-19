@extends('layouts.app')

@section('content')


<div class="col-md-12">
	<div class="row">
		<div class="card">
			<div class="card-header card-header-rose card-header-text">
				<div class="card-icon">
					<i class="material-icons">search</i>
				</div>
				<h4 class="card-title">Search</h4>
			</div>
			<div class="card-body">
				<form class="form-horizontal" action="{{ url('admin/dashboard') }}" method="GET">
					<div class="col-md-12">
						<div class="row">

							<div class="col-md-4">
								<div class="form-group">
				                  <label for="exampleNewsTitle1" class="bmd-label-floating"> News Headline</label>
				                  <input type="text" class="form-control" name="n_head" id="exampleNewsTitle1" value="{{ Request::get('n_head') }}">
				                </div>
							</div>

							<div class="col-md-1">
								<div class="form-group">
				                  <label for="exampleNewsTitle2" class="bmd-label-floating"> News Id</label>
				                  <input type="text" class="form-control" id="exampleNewsTitle2" name="n_id" value="{{ Request::get('n_id') }}">
				                </div>
							</div>

							<div class="col-md-2">
								<div class="form-group">
									<select class="selectpicker" data-size="7" data-style="select-with-transition" title="Status" name="n_status">
										<option @if(Request::get('n_status')==3) selected @endif value="3">Publish</option>
										<option @if(Request::get('n_status')==2) selected @endif value="2">Save</option>
										<option @if(Request::get('n_status')==1) selected @endif value="1">Draft</option>
										<option @if(Request::get('n_status')==0) selected @endif value="0">Inactive</option>
									</select>
								</div>
							</div>

							<div class="col-md-2">
								<div class="form-group">
									<select class="_select2 form-control" title="Post By" name="user_id">
										<option value="" selected>Select User</option>
										@foreach($user as $urow)
										<option @if(Request::get('user_id')==$urow->id) selected @endif value="{{ $urow->id }}">{{ $urow->name }}</option>
										@endforeach
									</select>
								</div>
							</div>

							<div class="col-md-2">
								<div class="form-group">
									<input type="text" class="form-control datepicker" value="{{ $newsdate }}" name="n_date">
								</div>
							</div>

							<div class="col-md-1 pull-right">
								<div class="row">
									<button style="width: 100%;" type="submit" class="btn btn-rose">Search</button>
								</div>
							</div>
				
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-primary card-header-icon">
				<div class="card-icon">
					<i class="material-icons">assignment</i>
				</div>
				<h4 class="card-title">News List</h4>
			</div>
			<div class="card-body">
				<div class="toolbar">{{ $newsdate }}</div>
				<div class="material-datatables">
					<table class="table table-striped table-no-bordered table-hover datatables" cellspacing="0" width="100%" style="width:100%">
						<thead>
							<tr>
								<th>Sl. No</th>
								<th>Edition</th>
								<th>Category</th>
								<th>News Headline</th>
								<th>Status</th>
								<th>Reach</th>
								<th>Post By / Post Time</th>
								<th>Edit By / Edit Time</th>
								<th class="disabled-sorting text-right">Actions</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Sl. No</th>
								<th>Edition</th>
								<th>Category</th>
								<th>News Headline</th>
								<th>Status</th>
								<th>Reach</th>
								<th>Post By / Post Time</th>
								<th>Edit By / Edit Time</th>
								<th class="disabled-sorting text-right">Actions</th>
							</tr>
						</tfoot>
						<tbody></tbody>
					</table>
				</div>
			</div>
			<div class="card-footer">
			</div>
		</div>
	</div>
</div>
		
		  

@endsection

@push('breadcrumbs') Dashboard @endpush

@push('meta')
	<title>{{ config('app.name', 'Laravel') }}</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush