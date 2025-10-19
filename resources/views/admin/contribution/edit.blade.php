@extends('layouts.app')

@section('content')

	<form class="form-horizontal" action="{{ route('contribution.update', $sql->id) }}" method="POST" enctype="multipart/form-data">
		@csrf
		@method('PATCH')
		<input type="hidden" name="created_at" value="{{ $sql->created_at }}">
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
								<h4 class="card-title">Text</h4>
							</div>
						</div>
						<div class="card-body">
							<div class="row">
								<label class="col-sm-2 col-form-label">Name</label>
								<div class="col-sm-9">
									<div class="form-group">
										<input type="text" class="form-control" name="name" value="{{ $sql->name }}">
									</div>
								</div>
							</div>
							<div class="row">
								<label class="col-sm-2 col-form-label">Name Bangla</label>
								<div class="col-sm-9">
									<div class="form-group">
										<input type="text" class="form-control" name="name_bangla" value="{{ $sql->name_bangla }}">
									</div>
								</div>
							</div>
							<div class="row">
								<label class="col-sm-2 col-form-label">Type</label>
								<div class="col-sm-9">
									<div class="form-group">
										<select class="selectpicker" data-style="select-with-transition" title="Contribution" data-size="10" name="type">
											<option value="1" {{ $sql->type == 1 ? 'selected':'' }}>News</option>
											<option value="2" {{ $sql->type == 2 ? 'selected':'' }}>Gallery</option>
											<option value="3" {{ $sql->type == 3 ? 'selected':'' }}>Bundle</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<label class="col-sm-2 col-form-label">Source ID</label>
								<div class="col-sm-9">
									<div class="form-group">
										<input type="number" class="form-control" name="source_id" value="{{ $sql->source_id }}">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-5">
					<div class="card ">
						<div class="card-header card-header-rose card-header-text">
							<div class="card-text">
								<h4 class="card-title">Media</h4>
							</div>
						</div>
						<div class="card-body ">
							<div class="row">
								<div class="col-md-4 col-sm-4">
									<h4 class="title">Image</h4>
									<div class="fileinput fileinput-new text-center" data-provides="fileinput">
										<div class="fileinput-new thumbnail">
											@if($sql->cover_photo)
												<img src="{{ str_contains($sql->cover_photo, 'mdsirasset.s3.ap-southeast-1.amazonaws.com') ? $sql->cover_photo : \App\Helpers\ImageStoreHelpers::showImage('news_images',$sql->created_at,$sql->cover_photo,'thumbnails') }}">
											@else
												<img src="{{ asset('admin/img/image_placeholder.jpg') }}" alt="...">
											@endif
										</div>
										<div class="fileinput-preview fileinput-exists thumbnail"></div>
										<div>
										<span class="btn btn-rose btn-round btn-file">
											<span class="fileinput-new"><i class="material-icons">file_present</i></span>
											<span class="fileinput-exists">Change</span>
											<input type="file" name="cover_photo" />
											<input type="hidden" name="old_main_image" id="old_main_image" value="{{ $sql->cover_photo }}">
										</span>
											<a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
											@if($sql->cover_photo)
												<a href="#pablo" class="btn btn-danger btn-round  oldfileinput-remove" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
											@endif
										</div>
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
								<h4 class="card-title">Publishing</h4>
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
														<input name="status" class="form-check-input" type="radio" value="1" @if($sql->status==1)checked @endif> Active
														<span class="circle"><span class="check"></span></span>
													</label>
												</div>
												<div class="form-check">
													<label class="form-check-label">
														<input name="status" class="form-check-input" type="radio" value="0" @if($sql->status==0)checked @endif> Inactive
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
	@push('scripts')
		@if(Auth::user()->role!='subscriber')
			<script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
			<script>
				jQuery(document).ready(function($) {
					var route_prefix = "/admin/news-filemanager";
					$('#lfm').filemanager('image', {prefix: route_prefix});
				});
			</script>
		@endif


		<script src="{{ asset('admin/ckeditor/ckeditor.js') }}"></script>
		<script src="{{ asset('admin/tinymce/tinymce.min.js') }}"></script>
		<script>
			var options = {
				@if(Auth::user()->role!='subscriber')
				filebrowserImageBrowseUrl: '/admin/news-filemanager?type=Images',
				filebrowserImageUploadUrl: '/admin/news-filemanager/upload?type=Images&_token=',
				filebrowserBrowseUrl: '/admin/news-filemanager?type=Files',
				filebrowserUploadUrl: '/admin/news-filemanager/upload?type=Files&_token='
				@endif
			};
			// CKEDITOR.replace('editor', options);
			jQuery(document).ready(function($) {
				$('.oldfileinput-remove').click(function(event) {
					$('#old_main_image').val('');
					$(this).remove();
					return false;
				});
				$('[name="cover_photo"]').click(function(event) {
					$('.oldfileinput-remove').remove();
				});
			});
			function _strlen() {
				var characterCount = $('.meta-desc').val().length,
						current_count = $('#current_count'),
						maximum_count = $('#maximum_count'),
						count = $('#meta-count');
				current_count.text(characterCount);
			}
			// _strlen();
			// $('.meta-desc').keyup(function() {
			// 	_strlen();
			// });

			$(document).ready(function() {
				$('body').on('click', '#add-button', function() {
					var div = $("#dynamic-field-1 > .row").clone();
					$("#append-dynamic-field").append(div);
				});

				$('body').on('click', '.remove-button', function() {
					$(this).parents('.dynamic-field .row').remove();
				});
			});

		</script>
	@endpush
