# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

    do slider

    #Gallery    
    if jQuery("#gallery").length
            
            #Declare Variables
            totalImages = jQuery("#gallery > li").length
            imageWidth = jQuery("#gallery > li:first").outerWidth(true)
            totalWidth = imageWidth * totalImages
            visibleImages = Math.round(jQuery("#gallery-wrap").width() / imageWidth)
            visibleWidth = visibleImages * imageWidth
            stopPosition = (visibleWidth - totalWidth)
            jQuery("#gallery").width(totalWidth)
            jQuery("#gallery-prev").click ->
                jQuery("#gallery").animate left: "+=" + imageWidth + "px" if jQuery("#gallery").position().left < 0 and not jQuery("#gallery").is(":animated")
                false
            
            jQuery("#gallery-next").click ->
                jQuery("#gallery").animate left: "-=" + imageWidth + "px" if jQuery("#gallery").position().left > stopPosition and not jQuery("#gallery").is(":animated")
                false



slider = ->
	$(".main .slider #image1").fadeIn 2000
	$(".main .slider #image1").delay(3000).fadeOut 2000
	
	sc = $(".main .slider img").size()
	count = 2

	setInterval (->
		$(".main .slider #image" + count).fadeIn 2000
		$(".main .slider #image" + count).delay(3000).fadeOut 2000
		
		if count is sc
			count = 1
		else
			count +=1;
		
	), 6500 
