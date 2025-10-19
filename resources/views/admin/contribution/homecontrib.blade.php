@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('contrib.homeContribUpdate') }}" method="POST">
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
							<h4 class="card-title">Contribution IDS</h4>
						</div>
					</div>
					<div class="card-body ">
						@php
							$ids = $sql ? json_decode($sql->value) : [];
						@endphp
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 1</label>
							<div class="col-sm-1">
								<div class="form-group">
									<input type="number" id="id1" name="ids[]" class="form-control" value="{{ $sql ? $ids[0] : '' }}" required>
								</div>
							</div>
							<button type="button" id="primary-check-button1" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
							<label class="col-sm-7 text-left mt-5" id="primary-news-title1"></label>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 2</label>
							<div class="col-sm-1">
								<div class="form-group">
									<input type="number" id="id2" name="ids[]" class="form-control" value="{{ $sql ? $ids[1] : '' }}" required>
								</div>
							</div>
							<button type="button" id="primary-check-button2" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
							<label class="col-sm-7 text-left mt-5" id="primary-news-title2"></label>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 3</label>
							<div class="col-sm-1">
								<div class="form-group">
									<input type="number" id="id3" name="ids[]" class="form-control" value="{{ $sql ? $ids[2] : '' }}" required>
								</div>
							</div>
							<button type="button" id="primary-check-button3" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
							<label class="col-sm-7 text-left mt-5" id="primary-news-title3"></label>
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
	<script>
		$('body').on('click', '#primary-check-button1', function(e) {
			e.preventDefault();

			var n_id = $("#id1").val();

			$.ajax({
				type:'POST',
				url:"{{ route('contrib.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title1");

					if (data.found) {
						x.innerHTML = data.data.name;
						x.style.color= "Green";
					} else {
						x.innerHTML = "News Not Found";
						x.style.color= "Red"
					}

				}
			});
		});

		$('body').on('click', '#primary-check-button2', function(e) {
			e.preventDefault();

			var n_id = $("#id2").val();

			$.ajax({
				type:'POST',
				url:"{{ route('contrib.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title2");

					if (data.found) {
						x.innerHTML = data.data.name;
						x.style.color= "Green";
					} else {
						x.innerHTML = "News Not Found";
						x.style.color= "Red"
					}

				}
			});
		});

		$('body').on('click', '#primary-check-button3', function(e) {
			e.preventDefault();

			var n_id = $("#id3").val();

			$.ajax({
				type:'POST',
				url:"{{ route('contrib.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title3");

					if (data.found) {
						x.innerHTML = data.data.name;
						x.style.color= "Green";
					} else {
						x.innerHTML = "News Not Found";
						x.style.color= "Red"
					}

				}
			});
		});


	</script>
@endpush
