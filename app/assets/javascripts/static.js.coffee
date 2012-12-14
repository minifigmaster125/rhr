# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

    do slider
    do history

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

#History	
history = ->

    count = 1
    years = 3
    if count is 1
        $(".secondary #changeYear #prev").hide("drop")
    $(".secondary #changeYear #next").click ->
	
        if count < years
            count++
            $(".secondary #changeYear #prev").show("drop")
            $(".secondary #year" + --count).slideUp()
            $(".secondary #year" + ++count).delay(1000).slideDown()
        if count is years
            $(".secondary #changeYear #next").hide("drop")

    $(".secondary #changeYear #prev").click ->
		        
        if count > 1
            count--
            $(".secondary #changeYear #next").show("drop")
            $(".secondary #year" + ++count).slideUp()
            $(".secondary #year" + --count).delay(1000).slideDown()
        if count is 1
            $(".secondary #changeYear #prev").hide("drop")
    
	

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


