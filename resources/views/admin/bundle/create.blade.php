@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('bundle.store') }}" method="POST">
	@csrf

	@if (Session::has('success'))
		<script type="text/javascript">
			setTimeout(function() {
		        md.showNotification('top','center','success',"{{ Session::get('success') }}").trigger('click');
		    },100);
		</script>
	@endif

	<div class="col-md-12">
		<div class="row">
			<div class="col-md-7">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Bundle</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<label class="col-sm-2 col-form-label">Title</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="name" id="primary-news-title">
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<label class="col-sm-2 col-form-label">Main News*</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="number" class="form-control" name="primary_news_id">
										</div>
									</div>
									<button type="button" id="primary-check-button" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
								</div>
							</div>
{{--							<label class="col-md-12 text-center mt-5" id="primary-news-title"></label>--}}
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Language</label>
							<div class="col-sm-8">
								<div class="form-group">
									<div class="form-check">
										<label class="form-check-label">
											<input name="lang" class="form-check-input" type="radio" value="en" checked> English
											<span class="circle"><span class="check"></span></span>
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label">
											<input name="lang" class="form-check-input" type="radio" value="bn"> Bangla
											<span class="circle"><span class="check"></span></span>
										</label>
									</div>
								</div>
							</div>
							<label class="col-sm-2 label-on-right"><code>required</code></label>
						</div>


					</div>
				</div>
			</div>

			<div class="col-md-5">

				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Publishing & Display</h4>
						</div>
					</div>
					<div class="card-body ">

						<div class="col-md-12">
							<div class="form-group">
								<div class="row">
									<label class="col-sm-2 col-form-label">Status</label>
									<div class="col-sm-8">
										<div class="form-group">
											<div class="form-check">
												<label class="form-check-label">
													<input name="status" class="form-check-input" type="radio" value="1" checked> Active
													<span class="circle"><span class="check"></span></span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label">
													<input name="status" class="form-check-input" type="radio" value="0"> Inactive
													<span class="circle"><span class="check"></span></span>
												</label>
											</div>
										</div>
									</div>
									<label class="col-sm-2 label-on-right"><code>required</code></label>
									<label class="col-sm-2 col-form-label">Display</label>
									<div class="col-sm-8">
										<div class="form-group">
											<div class="form-check">
												<label class="form-check-label">
													<input name="is_display" class="form-check-input" type="radio" value="1" checked> Display
													<span class="circle"><span class="check"></span></span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label">
													<input name="is_display" class="form-check-input" type="radio" value="0"> Hide
													<span class="circle"><span class="check"></span></span>
												</label>
											</div>
										</div>
									</div>
									<label class="col-sm-2 label-on-right"><code>required</code></label>
								</div>
							</div>
						</div>

					</div>

				</div>

			</div>
			<div class="col-md-12">

				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">News List</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-12 dynamic-field" id="dynamic-field-1">
								<div class="row">
									<div class="col-md-2 news-check-div">
										<div class="form-group  news-check-div1">
											<label for="field" class="hidden-md">News ID*</label>
											<input type="number" id="field" class="form-control news_id" name="news_id[]">
										</div>
									</div>
									<button type="button" class="col-md-1 btn btn-secondary float-left text-uppercase shadow-sm news_check"><i class="fa fa-check fa-fw"></i></button>
{{--									<label class="col-md-6 news_title" >ttt</label>--}}
									<div class="col-md-6 news-check-div">
										<div class="form-group  news-check-div1">
											<label for="field1" class="hidden-md">News Title</label>
											<input type="text" id="field1" class="form-control news_title" name="news_title[]" >
										</div>
									</div>
									<div class="col-md-2">
										<button type="button" class="btn btn-danger remove remove-button"><span class="material-icons">delete_forever</span></button>
									</div>
								</div>
								<div id="append-dynamic-field"></div>
							</div>
							<div class="col-md-3 mt-30 append-buttons">
								<div class="clearfix">
									<button type="button" id="add-button" class="btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-plus fa-fw"></i></button>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<div class="col-md-12">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Dependent Bundle</h4>
						</div>
					</div>
					<div class="card-body">

						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<label class="col-sm-2 col-form-label">Bundle ID*</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="number" class="form-control" name="dependent_bundle_id">
										</div>
									</div>
									<button type="button" id="bundle-check-button" class="col-sm-1 btn btn-secondary float-left text-uppercase shadow-sm"><i class="fa fa-check fa-fw"></i></button>
								</div>
							</div>
{{--							<label class="col-md-12 text-center mt-5" id="primary-news-title"></label>--}}
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Bundle Title</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="dependent_bundle_title" id="dependent_bundle_title">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="col-md-12">
			<div class="card-footer ml-auto mr-auto">
				<div class="col-md-12">
					<button type="submit" class="btn btn-rose">Submit</button>
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
@if(Auth::user()->role!='subscriber')
	<script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
	<script>
	jQuery(document).ready(function($) {
		var route_prefix = "/admin/news-filemanager";
		$('#lfm').filemanager('image', {prefix: route_prefix});
	});
	$(document).ready(function() {
		$('body').on('click', '#add-button', function() {
			var div = $("#dynamic-field-1 > .row").clone();
			var xt = div.find(".news_title");
			var xd = div.find(".news_id");
			xt.val('');
			xd.val('');
			$("#append-dynamic-field").append(div);
		});

		$('body').on('click', '.remove-button', function() {
			$(this).parents('.dynamic-field .row').remove();
		});

		$('body').on('click', '#primary-check-button', function(e) {
			e.preventDefault();

			var n_id = $("input[name=primary_news_id]").val();

			$.ajax({
				type:'POST',
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var x = document.getElementById("primary-news-title");

					if (data.found) {
						x.value = data.data.n_head;
						// x.style.color= "Green";
					} else {
						x.value = "News Not Found";
						// x.style.color= "Red"
					}

				}
			});
		});


		$('body').on('click', '.news_check', function(e) {
			e.preventDefault();

			var parent = $(this).closest('.row');
			var n_id = parent.find(".news_id").val();

			$.ajax({
				type:'POST',
				url:"{{ route('news.check') }}",
				data:{n_id:n_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var xt = parent.find(".news_title");
					if (data.found) {
						xt.val(data.data.n_head);
					} else {
						xt.val("News Not Found");
					}

				}
			});
		});

		$('body').on('click', '#bundle-check-button', function(e) {
			e.preventDefault();

			var b_id = $("input[name=dependent_bundle_id]").val();

			$.ajax({
				type:'POST',
				url:"{{ route('bundle.check') }}",
				data:{b_id:b_id,"_token": "{{ csrf_token() }}",},
				success:function(data){
					var xb = document.getElementById("dependent_bundle_title");

					if (data.found) {
						xb.value = data.data.name;
					} else {
						xb.value = "News Not Found";
					}

				}
			});
		});


	});
	</script>
@endif
@endpush
