# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
    do figure


figure = ->
    $("#main figure #image1").fadeIn 2000
    $("#main figure #image1").delay(3000).fadeOut 2000
	
    sc = $("#main figure img").size()
    count = 2

    setInterval (->
        $("#main figure #image" + count).fadeIn 2000
        $("#main figure #image" + count).delay(3000).fadeOut 2000
        if count is sc
            count = 1
        else
            count +=1;
		
    ), 6500
