@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('post.homeNewsUpdate') }}" method="POST">
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
							<h4 class="card-title">Post IDS</h4>
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
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 4</label>
							<div class="col-sm-1">
								<div class="form-group">
									<input type="number" id="id4" name="ids[]" class="form-control" value="{{ $sql ? $ids[3] : '' }}" required>
								</div>
							</div>
							<button type="button" id="primary-check-button4" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
							<label class="col-sm-7 text-left mt-5" id="primary-news-title4"></label>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 5</label>
							<div class="col-sm-1">
								<div class="form-group">
									<input type="number" id="id5" name="ids[]" class="form-control" value="{{ $sql ? $ids[4] : '' }}" required>
								</div>
							</div>
							<button type="button" id="primary-check-button5" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
							<label class="col-sm-7 text-left mt-5" id="primary-news-title5"></label>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 6</label>
							<div class="col-sm-1">
								<div class="form-group">
									<input type="number" id="id6" name="ids[]" class="form-control" value="{{ $sql ? $ids[5] : '' }}" required>
								</div>
							</div>
							<button type="button" id="primary-check-button6" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
							<label class="col-sm-7 text-left mt-5" id="primary-news-title6"></label>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 7</label>
							<div class="col-sm-1">
								<div class="form-group">
									<input type="number" id="id7" name="ids[]" class="form-control" value="{{ $sql ? $ids[6] : '' }}" required>
								</div>
							</div>
							<button type="button" id="primary-check-button7" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
							<label class="col-sm-7 text-left mt-5" id="primary-news-title7"></label>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">IDS 8</label>
							<div class="col-sm-1">
								<div class="form-group">
									<input type="number" id="id8" name="ids[]" class="form-control" value="{{ $sql ? $ids[7] : '' }}" required>
								</div>
							</div>
							<button type="button" id="primary-check-button8" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
							<label class="col-sm-7 text-left mt-5" id="primary-news-title8"></label>
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
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title1");

					if (data.found) {
						x.innerHTML = data.data.n_head;
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
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title2");

					if (data.found) {
						x.innerHTML = data.data.n_head;
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
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title3");

					if (data.found) {
						x.innerHTML = data.data.n_head;
						x.style.color= "Green";
					} else {
						x.innerHTML = "News Not Found";
						x.style.color= "Red"
					}

				}
			});
		});

		$('body').on('click', '#primary-check-button4', function(e) {
			e.preventDefault();

			var n_id = $("#id4").val();

			$.ajax({
				type:'POST',
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title4");

					if (data.found) {
						x.innerHTML = data.data.n_head;
						x.style.color= "Green";
					} else {
						x.innerHTML = "News Not Found";
						x.style.color= "Red"
					}

				}
			});
		});

		$('body').on('click', '#primary-check-button5', function(e) {
			e.preventDefault();

			var n_id = $("#id5").val();

			$.ajax({
				type:'POST',
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title5");

					if (data.found) {
						x.innerHTML = data.data.n_head;
						x.style.color= "Green";
					} else {
						x.innerHTML = "News Not Found";
						x.style.color= "Red"
					}

				}
			});
		});

		$('body').on('click', '#primary-check-button6', function(e) {
			e.preventDefault();

			var n_id = $("#id6").val();

			$.ajax({
				type:'POST',
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title6");

					if (data.found) {
						x.innerHTML = data.data.n_head;
						x.style.color= "Green";
					} else {
						x.innerHTML = "News Not Found";
						x.style.color= "Red"
					}

				}
			});
		});


		$('body').on('click', '#primary-check-button7', function(e) {
			e.preventDefault();

			var n_id = $("#id7").val();

			$.ajax({
				type:'POST',
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title7");

					if (data.found) {
						x.innerHTML = data.data.n_head;
						x.style.color= "Green";
					} else {
						x.innerHTML = "News Not Found";
						x.style.color= "Red"
					}

				}
			});
		});

		$('body').on('click', '#primary-check-button8', function(e) {
			e.preventDefault();

			var n_id = $("#id8").val();

			$.ajax({
				type:'POST',
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title8");

					if (data.found) {
						x.innerHTML = data.data.n_head;
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
