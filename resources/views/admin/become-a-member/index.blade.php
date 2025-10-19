
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
				<h4 class="card-title">Become a Member</h4>
			</div>
			<div class="card-body">
				<div class="material-datatables">
					<table class="table table-striped table-no-bordered table-hover datatables" cellspacing="0" width="100%" style="width:100%">
						<thead>
							<tr>
								<th>Sl. No</th>
								<th>Name</th>
								<th>Thana</th>
								<th>Organization</th>
								<th>Email</th>
								<th>Image</th>
								<th class="disabled-sorting text-right" width="10%">Actions</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Sl. No</th>
								<th>Name</th>
								<th>Thana</th>
								<th>Organization</th>
								<th>Email</th>
								<th>Image</th>
								<th class="disabled-sorting text-right" width="10%">Actions</th>
							</tr>
						</tfoot>
						<tbody>
							@foreach($list as $row)
							<tr>
								<td class="text-info">{{ $loop->index }}</td>
								<td class="text-primary">{{ $row->bn_f_name.' '.$row->bn_l_name }}</td>
								<td class="text-primary">{{ $row->thana }}</td>
								<td class="text-primary">{{ $row->organization }}</td>
								<td>{{ $row->email }}</td>
								<td class="text-primary"><img src="{{ \App\Helpers\ImageStoreHelpers::showImage('becomeamember',$row->created_at,$row->image) }}" style="max-height:100px"></td>
								<td class="text-right">
									<a class="btn btn-success" href="{{ url('admin/become-a-member/'.$row->id.'/edit') }}">View</a>
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

@push('breadcrumbs') Menu List @endpush

@push('meta')
	<title>Menu List</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush