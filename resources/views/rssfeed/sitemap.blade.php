@php echo '<?xml version="1.0" encoding="UTF-8"?>
     <urlset xmlns:image="http://www.google.com/schemas/sitemap-image/1.1" xmlns:video="http://www.google.com/schemas/sitemap-video/1.1" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">';
    foreach ($urldetails as $urld) {
        echo '<url>
              <loc>'.url('posts/'.$urld->slug).'</loc>
				<image:image>
					<image:loc>'.$urld->main_image ? App\Helpers\ImageStoreHelpers::showImage('news_images',$urld->created_at,$urld->main_image,'') : asset('admin/img/image_placeholder.jpg').'</image:loc>
				</image:image>
              <lastmod>'.date('c', strtotime($urld->start_at)).'</lastmod>
              <changefreq>hourly</changefreq>
              <priority>0.6400</priority>
          </url>';
	}
echo '</urlset>';
@endphp