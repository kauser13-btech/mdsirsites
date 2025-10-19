<li class="nav-item @if(Request::segment(2)=='member') active @endif">
	<a class="nav-link" data-toggle="collapse" href="#pagesmember">
		<i class="material-icons">people</i>
		<p> Member <b class="caret"></b></p>
	</a>
	<div class="collapse @if(Request::segment(2)=='member') show @endif" id="pagesmember">
		<ul class="nav">
			<li class="nav-item @if(Request::segment(2)=='member' && Request::segment(3)=='') active @endif">
				<a class="nav-link" href="{{ url('admin/member') }}">
					<span class="sidebar-mini"> L </span>
					<span class="sidebar-normal"> List </span>
				</a>
			</li>
			<li class="nav-item @if(Request::segment(2)=='member' && Request::segment(3)=='create') active @endif">
				<a class="nav-link" href="{{ url('admin/member/create') }}">
					<span class="sidebar-mini"> P </span>
					<span class="sidebar-normal"> Add New </span>
				</a>
			</li>
		</ul>
	</div>
</li>