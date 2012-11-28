# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

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


