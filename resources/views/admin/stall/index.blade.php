@extends('layouts.app')

@section('content')



<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-primary card-header-icon">
				<div class="card-icon">
					<i class="material-icons">assignment</i>
				</div>
				<h4 class="card-title">Stall List 2022</h4>
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
							<td>{{ $row->f_name.' '.$row->l_name }}</td>
							<td>{{ $row->organization }}</td>
							<td>{{ $row->s_year }}</td>
							<td>
								@if($row->s_status == 0)
									<span class="btn-warning p-2 pull-right">New</span>
								@else
									<span class="btn-success p-2 pull-right">Done</span>
								@endif
							</td>
							<td class="td-actions text-right">
								<button class="btn btn-link btn-warning btn-just-icon edit" data-toggle="modal" data-target="#Modal-{{ $row->id }}"><i class="material-icons">edit</i></button>
							</td>
						</tr>

						<div class="modal fade" id="Modal-{{ $row->id }}" tabindex="-1" role="dialog" aria-labelledby="Mail" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">{{ $row->f_name.' '.$row->l_name }}</h5>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
									</div>
									<div class="modal-body">
										<div class="card w-100">
											<div class="card-body">

												<div class="row">
													<div class="col-md-4">Name</div>
													<div class="col-md-8">{{ $row->f_name.' '.$row->l_name }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Mobile</div>
													<div class="col-md-8">{{ $row->mobile }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Oorganization</div>
													<div class="col-md-8">{{ $row->organization }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Address</div>
													<div class="col-md-8">{{ $row->address }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Divisions</div>
													<div class="col-md-8">{{ $row->divisions }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">District</div>
													<div class="col-md-8">{{ $row->district }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Upazila / Thana</div>
													<div class="col-md-8">{{ $row->thana }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Stalls Number</div>
													<div class="col-md-8">{{ $row->stalls_number }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Tin Number</div>
													<div class="col-md-8">{{ $row->tin_number }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Nid Number</div>
													<div class="col-md-8">{{ $row->nid_number }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Email</div>
													<div class="col-md-8">{{ $row->email }}</div>
												</div>
												<div class="row">
													<div class="col-md-4">Year</div>
													<div class="col-md-8">{{ $row->s_year }}</div>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close</button>
										<form class="form-horizontal" action="{{ route('stall.update', $row->id) }}" method="POST" enctype="multipart/form-data">
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