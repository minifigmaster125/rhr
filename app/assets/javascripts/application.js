// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require static
//= require_tree .
//

function slider() {
	$(".main .slider #image1").fadeIn(2000);
	$(".main .slider #image1").delay(3000).fadeOut(2000);

	var sc = $(".main .slider img").size();
	var count = 2;

	setInterval(function(){
		$(".main .slider #image" + count).fadeIn(2000);
		$(".main .slider #image" + count).delay(3000).fadeOut(2000);
		
		if (count == sc){
			count = 1;
		} else {
			count +=1;
		}
	},6500);
}





