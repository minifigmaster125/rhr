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


$(document).ready(function(){ 
    
    // Gallery
    if(jQuery("#gallery").length){
        
        // Declare variables
        var totalImages = jQuery("#gallery > li").length, 
            imageWidth = jQuery("#gallery > li:first").outerWidth(true),
            totalWidth = imageWidth * totalImages,
            visibleImages = Math.round(jQuery("#gallery-wrap").width() / imageWidth),
            visibleWidth = visibleImages * imageWidth,
            stopPosition = (visibleWidth - totalWidth);
            
        jQuery("#gallery").width(totalWidth);
        
        jQuery("#gallery-prev").click(function(){
            if(jQuery("#gallery").position().left < 0 && !jQuery("#gallery").is(":animated")){
                jQuery("#gallery").animate({left : "+=" + imageWidth + "px"});
            }
            return false;
        });
        
        jQuery("#gallery-next").click(function(){
            if(jQuery("#gallery").position().left > stopPosition && !jQuery("#gallery").is(":animated")){
                jQuery("#gallery").animate({left : "-=" + imageWidth + "px"});
            }
            return false;
        });
    }
        
});



