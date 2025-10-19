<rss version="2.0"
xmlns:content="http://purl.org/rss/1.0/modules/content/">
	<channel>
		<title>Bajus News Publisher</title>
		<link>{{ url('/') }}</link>
		<description>Bajus.org RSS Feed</description>
		<language>en-us</language>
		<lastBuildDate>{{ date('c') }}</lastBuildDate>
    	<copyright>Copyright: (C) Bajus</copyright> 

    	@foreach($rss_data as $row)
		<item>
			<title>{{ $row->n_head }}</title>
			<link>{{ url('details/'.$row->n_id) }}</link>
			<guid>{{ $row->n_id }}</guid>
			<pubDate>{{ date('c',strtotime($row->created_at)) }}</pubDate>
			<author>{{ $row->n_author }}</author>
			<description>{{ $row->meta_description }}</description>
			<content:encoded>
				<![CDATA[
				<!doctype html>
				<html lang="en" prefix="op: http://media.facebook.com/op#">
					<head>
						<meta charset="utf-8">
						<link rel="canonical" href="{{ url('details/'.$row->n_id) }}">
						<meta property="op:markup_version" content="v1.0">
					</head>
					<body>
						<article>
							<header>
								@if(strip_tags($row->n_solder))<h4>{!! $row->n_solder !!}</h4>@endif
								<h1>{{ $row->n_head }}</h1>
								@if(strip_tags($row->n_subhead))<h3>{!! $row->n_subhead !!}</h3>@endif
								<address>{{ $row->n_author }}</address>
							</header>

	                        <figure>
								<img src='{!! App\Helpers\ImageStoreHelpers::showImage('news_images',$row->created_at,$row->main_image,'thumbnails') !!}' alt="{{ $row->n_head }}" />
	                            <?php if($row->n_caption) { ?>
	                                <figcaption class="op-vertical-below">
	                                     <span>{{$row->n_caption}}</span>
	                                </figcaption>
	                            <?php } ?>
	                        </figure>
	                        @php
				                $n_details = $row->n_details;
				                $sentences = explode("।", $n_details);

				                if(count($sentences)== 1){
				                    $sentences = explode("৷", $n_details);
				                }
				                $first = array_slice($sentences,0 ,4);
				                $last0_1 = array_slice($sentences, 4,4);
				                $last0_2 = array_slice($sentences, 8,4);
				                $last2 = array_slice($sentences, 12,5);
				                $th = array_slice($sentences, 17);

				                if (empty($last0_1)) {
				                    $output = join("। ",$first);
				                }else{
				                    $output = join("। ",$first).'। ';
				                }
				                echo stripslashes($output);

				                // ads

				                if(empty($last0_2)){
				                    $output2 = join("। ", $last0_1);
				                }else{
				                    $output2 = join("। ", $last0_1).'। ';
				                }
				                echo stripslashes($output2);

				                // ads

				                if(empty($last2)){
				                    $output2_3 = join("। ", $last0_2);
				                }else{
				                    $output2_3 = join("। ", $last0_2).'। ';
				                }
				                echo stripslashes($output2_3);

				                // ads

				                if(empty($th)){
				                    $output3 = join("। ", $last2);
				                }else{
				                    $output3 = join("। ", $last2).'। ';
				                }
				                echo stripslashes($output3);

				                // ads

				                $output4 = join("। ", $th);
				                echo stripslashes($output4);
				            @endphp

				            <figure class='op-tracker'>
		                        <iframe hidden>
		                        	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-122369094-1"></script>
									<script>
									  window.dataLayer = window.dataLayer || [];
									  function gtag(){dataLayer.push(arguments);}
									  gtag('js', new Date());
									  gtag('config', 'UA-122369094-1');
									</script>

		                        	<script type="text/javascript">
										_atrk_opts = { atrk_acct:"D3oPr1NErb205V", domain:"Bajus.org",dynamic: true};
										(function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://certify-js.alexametrics.com/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();
									</script>
									<noscript><img src="https://certify.alexametrics.com/atrk.gif?account=D3oPr1NErb205V" style="display:none" height="1" width="1" alt="" /></noscript>
									<script src="{{ asset('/mobile/js/jquery.min.js') }}"></script>
		                            <script type="text/javascript">
		                            	$(function() {
									        $.post("{{ url('details/hit') }}",{
									            n_id: "{{ $row->n_id }}",
									            _token: {{ csrf_token() }}
									        });
									    });
		                            </script>
		                        </iframe>
		                    </figure>

							<footer>
								স্বত্ব © {{ App\Helpers\generalHelper::bn_date(date('Y')) }} Bajus.org
							</footer>
						</article>
					</body>
				</html>
				]]>
			</content:encoded>
		</item>
		@endforeach
		
	</channel>
</rss>