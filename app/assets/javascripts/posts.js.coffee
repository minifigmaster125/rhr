# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

    do archives
    
archives = ->
    $("aside .archlist li .archlink").click ->
        #alert  $(this).parent("li").attr("id")
        #<% Post.all.each do |s| %>   
        #    if <% s.date.strftime("%Y") %> != $("aside #archlist #archlink").text() 
        #        alert "yosh"
        #        ump.hide("drop")
        #<% end %>

