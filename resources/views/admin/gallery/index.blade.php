@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-primary card-header-icon">
				<div class="card-icon">
					<i class="material-icons">assignment</i>
				</div>
				<h4 class="card-title">Gallery List <a href="{{ url('admin/gallery/create') }}" class="btn btn-primary btn-sm pull-right">Add New</a></h4>
			</div>
			<div class="card-body">
				<div class="material-datatables">
					<table class="table table-striped table-no-bordered table-hover datatables" cellspacing="0" width="100%" style="width:100%">
						<thead>
							<tr>
								<th>Sl. No</th>
								<th>ID</th>
								<th>Title</th>
								<th>Event Date</th>
								<th>Status</th>
								<th class="disabled-sorting text-right">Actions</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Sl. No</th>
								<th>ID</th>
								<th>Title</th>
								<th>Event Date</th>
								<th>Status</th>
								<th class="disabled-sorting text-right">Actions</th>
							</tr>
						</tfoot>
						<tbody>
							@foreach($sql as $row)
							<tr>
								<td class="text-info">{{ $loop->index+1 }}</td>
								<td class="text-primary"> {{ $row->id }}</td>
								<td class="text-primary"> {{ $row->name }}</td>
								<td class="text-danger">{{ $row->event_date }}</td>
								<td class="text-right">
									@if($row->status==1)
										<span class="badge badge-pill badge-success">Publish</span>
									@else
										<span class="badge badge-pill badge-danger">Inactive</span>
									@endif
								</td>
								<td class="text-right">
									<a href="{{ url('admin/gallery/'.$row->id.'/edit') }}" class="btn btn-link btn-warning btn-just-icon edit"><i class="material-icons">edit_note</i></a>
									<form class="pull-right" method="POST" action="{{ route('gallery.destroy', $row->id) }}">
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
			<div class="card-footer">
				{{ $sql->links() }}
			</div>
		</div>
	</div>
</div>


@endsection

@push('breadcrumbs') Menu List @endpush

@push('meta')
	<title>{{ config('app.name', 'Laravel') }}</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush
