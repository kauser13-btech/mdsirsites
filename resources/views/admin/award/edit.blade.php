@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('award.update', $sql->id) }}" method="POST" enctype="multipart/form-data">
	@csrf
	@method('PATCH')
	<input type="hidden" name="created_at" value="{{ $sql->created_at }}">

	<div class="col-md-12">
		@if (Session::has('success'))
			<script type="text/javascript">
				setTimeout(function() {
			        md.showNotification('top','center','success',"{{ Session::get('success') }}").trigger('click');
			    },100);
			</script>
		@endif
			<div class="row">
				<div class="col-md-6">
					<div class="card ">
						<div class="card-header card-header-rose card-header-text">
							<div class="card-text">
								<h4 class="card-title">Award Info</h4>
							</div>
						</div>
						<div class="card-body ">
							<div class="row">
								<label class="col-sm-2 col-form-label">Name</label>
								<div class="col-sm-9">
									<div class="form-group">
										<textarea class="form-control n_name" name="name" required="true">{!! $sql->name !!}</textarea>
									</div>
									<div id="n_name" class="text-danger">
										<span id="current_count1">0</span>
										<span id="maximum_count1">/ 65</span>
										<small>৬০ থেকে ৬৫ অক্ষররের মধ্যে সীমিত রাখুন। - আলেক্সা</small>
									</div>
								</div>
								<label class="col-sm-1 label-on-right"><code>*</code></label>
							</div>
							<div class="row">
								<label class="col-sm-2 col-form-label">Name Bangla</label>
								<div class="col-sm-9">
									<div class="form-group">
										<textarea class="form-control n_name_bangla" name="name_bangla">{!! $sql->name_bangla !!}</textarea>
									</div>
									<div id="n_name_bangla" class="text-danger">
										<span id="current_count2">0</span>
										<span id="maximum_count2">/ 65</span>
										<small>৬০ থেকে ৬৫ অক্ষররের মধ্যে সীমিত রাখুন। - আলেক্সা</small>
									</div>
								</div>
							</div>
							<div class="row">
								<label class="col-sm-2 col-form-label">Type</label>
								<div class="col-sm-9">
									<div class="form-group">
										<select class="selectpicker" data-style="select-with-transition" title="Appreciation" data-size="10" name="type">
											<option value="0" {{ $sql->type == 0 ? 'selected':'' }}>Minor</option>
											<option value="1" {{ $sql->type == 1 ? 'selected':'' }}>Major</option>
											<option value="2" {{ $sql->type == 2 ? 'selected':'' }}>Appreciation</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<label class="col-sm-2 col-form-label">Received From</label>
								<div class="col-sm-9">
									<div class="form-group">
										<textarea class="form-control" name="received_from">{!! $sql->received_from !!}</textarea>
									</div>
								</div>
								<label class="col-sm-1 label-on-right"><code>*</code></label>
							</div>
							<div class="row">
								<label class="col-sm-2 col-form-label">Received Date</label>
								<div class="col-sm-9">
									<div class="form-group">
										<input type="text" class="form-control datetimepicker" placeholder="Received Date" name="received_date" value="{{ $sql->received_date }}">
									</div>
								</div>
								<label class="col-sm-1 label-on-right"><code>*</code></label>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6">
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
												<img src="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$sql->created_at,$sql->cover_photo,'thumbnails') }}">
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
					<div class="card ">
						<div class="card-header card-header-rose card-header-text">
							<div class="card-text">
								<h4 class="card-title">Publishing</h4>
							</div>
						</div>
						<div class="card-body ">
							<div class="row">

								<div class="col-md-12">
									<div class="form-group">
										<div class="row">
											<label class="col-sm-2 col-form-label">Status</label>
											<div class="col-sm-8">
												<div class="form-group">
													<div class="form-check">
														<label class="form-check-label">
															<input class="form-check-input" type="radio" name="status" value="1" @if($sql->status==1)checked @endif> Publish
															<span class="circle"><span class="check"></span></span>
														</label>
													</div>
													<div class="form-check">
														<label class="form-check-label">
															<input class="form-check-input" type="radio" name="status" value="0" @if($sql->status==0)checked @endif> Inactive
															<span class="circle"><span class="check"></span></span>
														</label>
													</div>
												</div>
											</div>
											<label class="col-sm-2 label-on-right"><code>*</code></label>
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
								<h4 class="card-title">Article</h4>
							</div>
						</div>
						<div class="card-body ">
							<textarea class="form-control" id="editor" name="description">{!! $sql->description !!}</textarea>
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

	</div>
</form>

@endsection

@push('breadcrumbs')Edit Post @endpush

@push('meta')
	<title>Edit Post</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
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
	CKEDITOR.replace('editor', options);
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
	_strlen();
	$('.meta-desc').keyup(function() {
	      _strlen();
	});

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
