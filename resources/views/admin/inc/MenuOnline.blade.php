<li class="nav-item @if(Request::segment(2)=='slider') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagesslider">
		<i class="material-icons">list_alt</i>
		<p> Slider <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='slider') show @endif" id="pagesslider">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='slider' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/slider') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='slider' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/slider/create') }}">
					<span class="sidebar-mini"> P </span>
					<span class="sidebar-normal"> Add New </span>
				</a>
			</li>
		</ul>
	</div>
</li>

<li class="nav-item @if(Request::segment(2)=='bundle') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagesbundle">
		<i class="material-icons">list_alt</i>
		<p> Bundles <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='bundle') show @endif" id="pagesbundle">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='bundle' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/bundle') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='bundle' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/bundle/create') }}">
					<span class="sidebar-mini"> P </span>
					<span class="sidebar-normal"> Add New </span>
				</a>
			</li>
		</ul>
	</div>
</li>

<li class="nav-item @if(Request::segment(2)=='source') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagessource">
		<i class="material-icons">list_alt</i>
		<p> Source <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='source') show @endif" id="pagessource">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='source' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/source') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='source' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/source/create') }}">
					<span class="sidebar-mini"> P </span>
					<span class="sidebar-normal"> Add New </span>
				</a>
			</li>
		</ul>
	</div>
</li>

<li class="nav-item @if(Request::segment(2)=='post') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagespost">
		<i class="material-icons">people</i>
		<p> post <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='post') show @endif" id="pagespost">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='post' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/post') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='post' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/post/create') }}">
					<span class="sidebar-mini"> P </span>
					<span class="sidebar-normal"> Add New </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='post' && Request::segment(3)=='home-news') active @endif">
				<a class="nav-link" href="{{ url('admin/post/home-news') }}">
					<span class="sidebar-mini"> H </span>
					<span class="sidebar-normal"> Home News </span>
				</a>
			</li>
		</ul>
	</div>
</li>

<li class="nav-item @if(Request::segment(2)=='award') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagesaward">
		<i class="material-icons">speaker_notes</i>
		<p> Awards  <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='award') show @endif" id="pagesaward">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='award' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/award') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='award' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/award/create') }}">
					<span class="sidebar-mini"> AN </span>
					<span class="sidebar-normal">  Add New  </span>
				</a>
			</li>
		</ul>
	</div>
</li>

<li class="nav-item @if(Request::segment(2)=='gallery') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagesGallery">
		<i class="material-icons">filter_vintage</i>
		<p> Gallery <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='gallery') show @endif" id="pagesGallery">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='gallery' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/gallery') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='gallery' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/gallery/create') }}">
					<span class="sidebar-mini"> AN </span>
					<span class="sidebar-normal"> Add New  </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='gallery' && Request::segment(3)=='home-gallery') active @endif">
				<a class="nav-link" href="{{ url('admin/gallery/home-gallery') }}">
					<span class="sidebar-mini"> H </span>
					<span class="sidebar-normal"> Home Gallery </span>
				</a>
			</li>
{{--			<li class="nav-item @if(Request::segment(2)=='gallery' && Request::segment(3)=='category') active @endif">--}}
{{--				<a class="nav-link" href="{{ url('admin/gallery/category') }}">--}}
{{--					<span class="sidebar-mini"> CM </span>--}}
{{--					<span class="sidebar-normal"> Category Manager </span>--}}
{{--				</a>--}}
{{--			</li>--}}
		</ul>
	</div>
</li>

<li class="nav-item @if(Request::segment(2)=='contribution') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagescontribution">
		<i class="material-icons">speaker_notes</i>
		<p> Contribution  <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='contribution') show @endif" id="pagescontribution">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='contribution' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/contribution') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='contribution' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/contribution/create') }}">
					<span class="sidebar-mini"> AN </span>
					<span class="sidebar-normal">  Add New  </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='contribution' && Request::segment(3)=='sort-contrib-list') active @endif">
				<a class="nav-link" href="{{ url('admin/contribution/sort-contrib-list') }}">
					<span class="sidebar-mini"> SL </span>
					<span class="sidebar-normal"> Sort List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='contribution' && Request::segment(3)=='home-contrib') active @endif">
				<a class="nav-link" href="{{ url('admin/contribution/home-contrib') }}">
					<span class="sidebar-mini"> H </span>
					<span class="sidebar-normal"> Home Contribution </span>
				</a>
			</li>
		</ul>
	</div>
</li>

<li class="nav-item @if(Request::segment(2)=='breakingnews') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagesBreakingNews">
		<i class="material-icons">list_alt</i>
		<p> Breaking News <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='breakingnews') show @endif" id="pagesBreakingNews">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='breakingnews' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/breakingnews') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='breakingnews' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/breakingnews/create') }}">
					<span class="sidebar-mini"> P </span>
					<span class="sidebar-normal"> Add New </span>
				</a>
			</li>
		</ul>
	</div>
</li>
