@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-primary card-header-icon">
				<div class="card-icon">
					<i class="material-icons">assignment</i>
				</div>
				<h4 class="card-title">Post List <a href="{{ url('admin/post/create') }}" class="btn btn-primary btn-sm pull-right">Add New</a></h4>
			</div>
			<div class="card-body">
				<div class="material-datatables">
					<table data-order='[[ 0, "desc" ]]' class="table table-striped table-no-bordered table-hover datatables" cellspacing="0" width="100%" style="width:100%">
						<thead>
							<tr>
								<th>ID</th>
								<th>Head</th>
								<th>Source</th>
								<th>Bundle</th>
								<th>Is Primary</th>
								<th>Status</th>
								<th class="disabled-sorting text-right">Actions</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Head</th>
								<th>Source</th>
								<th>Bundle</th>
								<th>Is Primary</th>
								<th>Status</th>
								<th class="disabled-sorting text-right">Actions</th>
							</tr>
						</tfoot>
						<tbody>
							@foreach($sql as $row)
							<tr>
								<td class="text-info">{{ $row->nid }}</td>
								<td class="text-primary"><a href="{{ $row->news_link }}" target="_blank"> {{ $row->n_head }}</a></td>
								<td class="text-danger"><a href="{{ $row->source->base_url }}" target="_blank">{{ $row->source->name }}</a></td>
								<td class="text-danger">{{ $row->bundle->name }}</td>
								<td class="text-right">
									@if($row->is_primary==1)
										<span class="badge badge-pill badge-success">Primary</span>
									@else
										<span class="badge badge-pill badge-danger">Not Primary</span>
									@endif
								</td>
								<td class="text-right">
									@if($row->n_status==3)
										<span class="badge badge-pill badge-success">Publish</span>
									@else
										<span class="badge badge-pill badge-danger">Inactive</span>
									@endif
								</td>
								<td class="text-right">
									<a href="{{ url('admin/post/'.$row->nid.'/edit') }}" class="btn btn-link btn-warning btn-just-icon edit"><i class="material-icons">edit_note</i></a>
									<form class="pull-right" method="POST" action="{{ route('post.destroy', $row->nid) }}">
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
