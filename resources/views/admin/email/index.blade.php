@extends('layouts.app')

@section('content')



<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-primary card-header-icon">
				<div class="card-icon">
					<i class="material-icons">assignment</i>
				</div>
				<h4 class="card-title">Email List</h4>
			</div>
			<div class="card-body">
				@if (Session::has('success'))
					<script type="text/javascript">
						setTimeout(function() {
					        md.showNotification('top','center','success',"{{ Session::get('success') }}").trigger('click');
					    },100);
					</script>
				@endif
				<div class="clearfix"></div>
				<table class="table">
					<tbody>
						@foreach($sql as $row)
						<tr>
							<td>{{ $row->name }}</td>
							<td>
								@if($row->m_status == 0)
									<span class="btn-warning p-2 pull-right">New</span>
								@else
									<span class="btn-success p-2 pull-right">Done</span>
								@endif
							</td>
							<td class="td-actions text-right">

								<button class="btn btn-link btn-warning btn-just-icon edit" data-toggle="modal" data-target="#Modal-{{ $row->id }}"><i class="material-icons">edit</i></button>

								{{-- <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">
									<i class="material-icons">close</i>
								</button> --}}
							</td>
						</tr>

						<div class="modal fade" id="Modal-{{ $row->id }}" tabindex="-1" role="dialog" aria-labelledby="Mail" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">{{ $row->name }}</h5>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
									</div>
									<div class="modal-body">
										<div class="card w-100">
											<div class="card-body">
												<ul class="list-group list-group-flush">
													<li class="list-group-item">{{ $row->company }}</li>
													<li class="list-group-item">{{ $row->email }}</li>
												</ul>
												<p class="card-text">{{ $row->message }}</p>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close</button>
										<form class="form-horizontal" action="{{ route('mail.update', $row->id) }}" method="POST" enctype="multipart/form-data">
											@csrf
											@method('PATCH')
											<button type="submit" class="btn btn-primary">Done</button>
										</form>
									</div>
								</div>
							</div>
						</div>

						@endforeach
					</tbody>
				</table>
            </div>
			<div class="card-footer">
				{{ $sql->links() }}
			</div>
		</div>
	</div>
</div>
		
		  

@endsection

@push('breadcrumbs') Mail @endpush

@push('meta')
	<title>{{ config('app.name', 'Laravel') }}</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
@endpush