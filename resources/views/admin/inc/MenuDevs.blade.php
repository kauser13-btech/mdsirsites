
<li class="nav-item @if(Request::segment(2)=='user') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagesUsers" @if(Request::segment(2)=='user') aria-expanded="true" @endif>
		<i class="material-icons">manage_accounts</i>
		<p> Manage Accounts <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='user') show @endif" id="pagesUsers">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='user' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/user')}}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='user' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/user/create')}}">
					<span class="sidebar-mini"> AN </span>
					<span class="sidebar-normal"> Add New </span>
				</a>
			</li>
		</ul>
	</div>
</li>

@if (env('TELESCOPE_ENABLED')=='true')
<li class="nav-item ">
	<a class="nav-link" href="{{ url('telescope/requests') }}" target="_blank">
		<i class="material-icons">psychology</i>
		<p> Telescope </p>
	</a>
</li>
@endif
