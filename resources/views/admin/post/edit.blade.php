@extends('layouts.app')

@section('content')

<form class="form-horizontal" action="{{ route('post.update', $sql->nid) }}" method="POST" enctype="multipart/form-data">
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
			<div class="col-md-12">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">News Info</h4>
						</div>
					</div>
					<div class="card-body ">
						<div class="row">
							<label class="col-sm-2 col-form-label">Display News Headline</label>
							<div class="col-sm-9">
								<div class="form-group">
									<textarea class="form-control n_head" name="n_head" required="true">{!! $sql->n_head !!}</textarea>
								</div>
								<div id="n_head" class="text-danger">
									<span id="current_count1">0</span>
									<span id="maximum_count1">/ 65</span>
									<small>৬০ থেকে ৬৫ অক্ষররের মধ্যে সীমিত রাখুন। - আলেক্সা</small>
								</div>
							</div>
							<label class="col-sm-1 label-on-right"><code>*</code></label>
						</div>

						<div class="row">
							<label class="col-sm-2 col-form-label">News Headline</label>
							<div class="col-sm-9">
								<div class="form-group">
									<textarea class="form-control n_subhead" name="n_subhead" required="true">{!! $sql->n_subhead !!}</textarea>
								</div>
								<div id="n_subhead" class="text-danger">
									<span id="current_count2">0</span>
									<span id="maximum_count2">/ 65</span>
									<small>৬০ থেকে ৬৫ অক্ষররের মধ্যে সীমিত রাখুন। - আলেক্সা</small>
								</div>
							</div>
							<label class="col-sm-1 label-on-right"><code>*</code></label>
						</div>


						<div class="row">
							<label class="col-sm-2 col-form-label">News Bundle</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="hidden" class="form-control" name="bundle_id" value="{{ $sql->bundle ? $sql->bundle->id : 1 }}" />
									<input type="text" class="form-control" name="bundle_name" value="{{ $sql->bundle ? $sql->bundle->name : 'Default Bundle' }}" disabled />
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">News Category</label>
							<div class="col-sm-9">
								<div class="form-group">
									<select class="selectpicker" data-style="select-with-transition" title="Category" data-size="10" name="category">
										<option {{ $sql->category == 1 ? 'selected' : '' }} value="1">Online News</option>
										<option {{ $sql->category == 2 ? 'selected' : '' }} value="2">Print Media</option>
										<option {{ $sql->category == 3 ? 'selected' : '' }} value="3">Blog</option>
										<option {{ $sql->category == 4 ? 'selected' : '' }} value="4">Social</option>
									</select>
								</div>
							</div>
						</div>
						@if($sql->n_solder)
							<div class="row">
								<label class="col-sm-2 col-form-label">Old News Link</label>
								<div class="col-sm-9">
									<div class="form-group">
										<a href="{{ $sql->n_solder }}" target="_blank">Visit News</a>
									</div>
								</div>
							</div>
						@endif
					</div>
				</div>
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Source</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<label class="col-sm-2 col-form-label">Name</label>
							<div class="col-sm-9">
								<div class="form-group">
									<select class="form-control _select2" data-style="select-with-transition" title="News Source" data-size="10" name="source_id">
										<option selected value="">Select News Source</option>
										@foreach($sources as $source)
											<option value="{{ $source->id }}" {{ $sql->source_id == $source->id ? 'selected':'' }}>{{$source->name}}</option>
										@endforeach
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">News Link</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="news_link"  value="{{ $sql->news_link }}" />
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
							<h4 class="card-title">Meta & Social Tags</h4>
						</div>
					</div>
					<div class="card-body ">
						<div class="row">
							<label class="col-sm-2 col-form-label">Og Title Info</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input class="form-control" type="text" name="title_info" value="{{ $sql->title_info }}" />
								</div>
							</div>
						</div>

						<div class="row">
							<label class="col-sm-2 col-form-label">keywords</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" name="meta_keyword" class="form-control tagsinput" data-role="tagsinput" data-color="info" value="{{ $sql->meta_keyword }}">
								</div>
							</div>
							<label class="col-sm-1 label-on-right"><code>*</code></label>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label">Description</label>
							<div class="col-sm-9">
								<div class="form-group">
									<textarea class="form-control meta-desc" name="meta_description" placeholder="Description">{!! $sql->meta_description !!}</textarea>
								</div>
								<div id="meta-count" class="text-danger">
									<span id="current_count">0</span>
									<span id="maximum_count">/ 160</span>
									<small>১২০ থেকে ১৫৫ অক্ষররের মধ্যে সীমিত রাখুন। - গুগল</small>
								</div>
							</div>
							<label class="col-sm-1 label-on-right"><code>*</code></label>
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
						<textarea class="form-control" id="editor" name="n_details">{!! $sql->n_details !!}</textarea>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">List Image</h4>
						</div>
					</div>
					<div class="card-body ">
						<div class="row">
							<div class="col-md-12 col-sm-12">
								<div class="fileinput fileinput-new text-center" data-provides="fileinput">
									<div class="fileinput-new thumbnail">
										@if($sql->main_image)
											<img src="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$sql->created_at,$sql->main_image,'thumbnails') }}">
										@else
											<img src="{{ asset('admin/img/image_placeholder.jpg') }}" alt="...">
										@endif
									</div>
									<div class="fileinput-preview fileinput-exists thumbnail"></div>
									<div>
										<span class="btn btn-rose btn-round btn-file">
											<span class="fileinput-new"><i class="material-icons">file_present</i></span>
											<span class="fileinput-exists">Change</span>
											<input type="file" name="main_image" />
											<input type="hidden" name="old_main_image" id="old_main_image" value="{{ $sql->main_image }}">
										</span>
										<a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
										@if($sql->main_image)
											<a href="#pablo" class="btn btn-danger btn-round  oldfileinput-remove" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
										@endif
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="row">
									<label class="col-sm-2 col-form-label label-checkbox">Caption</label>
									<div class="col-sm-10">
										<textarea class="form-control" cols="8" name="n_caption">{!! $sql->n_caption !!}</textarea>
									</div>

								</div>
							</div>
						</div>


					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card ">
					<div class="card-header card-header-rose card-header-text">
						<div class="card-text">
							<h4 class="card-title">Details Image</h4>
						</div>
					</div>
					<div class="card-body ">
						<div class="row">
							<div class="col-md-12 col-sm-12">
								<div class="fileinput fileinput-new text-center" data-provides="fileinput">
									<div class="fileinput-new thumbnail">
										@if($sql->details_main_image)
											<img src="{{ \App\Helpers\ImageStoreHelpers::showImage('news_images',$sql->created_at,$sql->details_main_image,'thumbnails') }}">
										@else
											<img src="{{ asset('admin/img/image_placeholder.jpg') }}" alt="...">
										@endif
									</div>
									<div class="fileinput-preview fileinput-exists thumbnail"></div>
									<div>
										<span class="btn btn-rose btn-round btn-file">
											<span class="fileinput-new"><i class="material-icons">file_present</i></span>
											<span class="fileinput-exists">Change</span>
											<input type="file" name="details_main_image" />
											<input type="hidden" name="old_details_main_image" id="old_details_main_image" value="{{ $sql->details_main_image }}">
										</span>
										<a href="#pablod" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
										@if($sql->details_main_image)
											<a href="#pablod" class="btn btn-danger btn-round  oldfileinput-remove" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
										@endif
									</div>
								</div>
							</div>
							{{-- <div class="col-md-12">
								<div class="row">
									<label class="col-sm-2 col-form-label label-checkbox">Caption</label>
									<div class="col-sm-10">
										<textarea class="form-control" cols="8" name="n_caption">{!! $sql->n_caption !!}</textarea>
									</div>

								</div>
							</div> --}}
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
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<label class="col-sm-2 col-form-label">Start publishing</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="text" class="form-control datetimepicker" placeholder="Start publishing" name="start_at" value="{{ $sql->start_at }}">
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<div class="row">
										<label class="col-sm-2 col-form-label">Status</label>
										<div class="col-sm-8">
											<div class="form-group">
												<div class="form-check">
													<label class="form-check-label">
														<input class="form-check-input" type="radio" name="n_status" value="3" @if($sql->n_status==3)checked @endif> Publish
														<span class="circle"><span class="check"></span></span>
													</label>
												</div>
												<div class="form-check">
													<label class="form-check-label">
														<input class="form-check-input" type="radio" name="n_status" value="0" @if($sql->n_status==0)checked @endif> Inactive
														<span class="circle"><span class="check"></span></span>
													</label>
												</div>
											</div>
										</div>
										<label class="col-sm-2 label-on-right"><code>*</code></label>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="row">
									<label class="col-sm-2 col-form-label label-checkbox">Gallery ID</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="gallery_id"  value="{{ $sql->gallery_id }}" />
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
		$('[name="main_image"]').click(function(event) {
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
