# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

    do slider
    do history

    #Button change for history slider
    $(".secondary #changeYear #prev").mouseover ->
        $(".secondary #changeYear #prev").css "background-color","red"
        $(".secondary #changeYear #prev").css "color","white"
    $(".secondary #changeYear #next").mouseover ->
        $(".secondary #changeYear #next").css "background-color","red"
        $(".secondary #changeYear #next").css "color","white"
    $(".secondary #changeYear #prev").mouseout ->
        $(".secondary #changeYear #prev").css "background-color","#ffcccc"
        $(".secondary #changeYear #prev").css "color","black"
    $(".secondary #changeYear #next").mouseout ->
        $(".secondary #changeYear #next").css "background-color","#ffcccc"
        $(".secondary #changeYear #next").css "color","black"

    #recent news clickable
    $(".news").click ->
        window.location = "http://google.com" #$(this).find("a").attr("href")

    $(".background-info").click ->
        window.location = "http://google.com"
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

#History slider
history = ->

    count = 1
    years = 3
    if count is 1
        $(".secondary #changeYear #prev").effect("fade")
    $(".secondary #changeYear #next").click ->
	
        if count < years
            count++
            $(".secondary #changeYear #prev").delay(1500).slideDown()
            $(".secondary #year" + --count).slideUp()
            $(".secondary #year" + ++count).delay(1000).slideDown()
            if count is years
                $(".secondary #changeYear #next").delay(1100).effect("fade")

    $(".secondary #changeYear #prev").click ->
		        
        if count > 1
            count--
            $(".secondary #changeYear #next").delay(1500).slideDown()
            $(".secondary #year" + ++count).slideUp()
            $(".secondary #year" + --count).delay(1000).slideDown()
            if count is 1
                $(".secondary #changeYear #prev").delay(1100).effect("fade")



#Image Slider
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




