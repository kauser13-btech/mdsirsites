(function ($) {

	$('.flexslider-slider').flexslider({
		animation: "fade",
		controlNav: true,
	});
	$('.flexcarousel').flexslider({
		animation: "slide",
		animationLoop: false,
		itemWidth: 393,
		itemMargin: 40,
		slideshow: false
	});
	$('#gallery-flexslider-thumb').flexslider({
		animation: "slide",
		controlNav: false,
		animationLoop: false,
		slideshow: false,
		itemWidth: 100,
		itemMargin: 5,
		asNavFor: '.gallery-flexslider'
	});
 
  $('.gallery-flexslider').flexslider({
		animation: "slide",
		controlNav: false,
		animationLoop: false,
		slideshow: false,
		sync: "#gallery-flexslider-thumb"
	});

	$('.award-received-flexslider').flexslider({
		animation: "slide",
		animationLoop: false,
		itemWidth: 210,
		itemMargin: 40,
		minItems: 2,
		maxItems: 4,
		slideshow: false
	});

$(document).ready(function() {
	setTimeout(function(){
		$('.loading-spinner-area').hide();
	},1000);
});

})(jQuery);
