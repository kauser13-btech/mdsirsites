@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-md-12">
		@if (Session::has('success'))
			<script type="text/javascript">
				setTimeout(function() {
			        md.showNotification('top','center','success',"{{ Session::get('success') }}").trigger('click');
			    },100);
			</script>
		@endif
		<div class="card">
			<div class="card-header card-header-primary card-header-icon">
				<div class="card-icon">
					<i class="material-icons">assignment</i>
				</div>
				<h4 class="card-title">member list <a href="{{ url('admin/member/create') }}" class="btn btn-primary btn-sm pull-right">Add New</a></h4>
			</div>
			<div class="card-body">
				<div class="material-datatables">
					<table class="table table-striped table-no-bordered table-hover datatables" cellspacing="0" width="100%" style="width:100%">
						<thead>
							<tr>
								<th>Number ID</th>
								<th>Name</th>
								<th>Type</th>
								<th>photo</th>
								<th>Status</th>
								<th>Created By</th>
								<th>Updated By</th>
								<th class="disabled-sorting text-right" width="10%">Actions</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Number ID</th>
								<th>Name</th>
								<th>Type</th>
								<th>photo</th>
								<th>Status</th>
								<th>Created By</th>
								<th>Updated By</th>
								<th class="disabled-sorting text-right" width="10%">Actions</th>
							</tr>
						</tfoot>
						<tbody>
							@foreach($sql as $row)
								<tr>
									<td class="text-info">{{ $row->number_id }}</td>
									<td class="text-primary">{{ $row->name }}</td>
									<td class="text-primary text-capitalize">{{ str_replace('_', ' ', $row->type) }}</td>
									<td class="text-primary"><img src="{{ $row->img }}" width="50" height="50"></td>
									<td>
										@if($row->m_status==1)
											<span class="badge badge-pill badge-success">Active</span>
										@else
											<span class="badge badge-pill badge-danger">Inactive</span>
										@endif
									</td>
									<td class="text-danger">{{ $row->createdBy->name }}</td>
									<td class="text-danger">{{ $row->updatedBy->name }}</td>
									<td class="text-right">
										<a href="{{ url('admin/member/'.$row->id.'/edit') }}" class="btn btn-link btn-warning btn-just-icon edit"><i class="material-icons">edit_note</i></a>
										<form class="pull-right" method="POST" action="{{ route('member.destroy', $row->id) }}">
											@csrf @method('DELETE')
											<button type="submit" class="btn btn-link btn-danger btn-just-icon remove" onclick="return confirm('Are you sure you want to delete this item?');"><i class="material-icons">close</i></button>
										</form>
									</td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
		
		  

@endsection

@push('breadcrumbs') Member List @endpush

@push('meta')
	<title>Member List</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush