// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//
//= require jquery
//= require jquery-ui
//= require rails-ujs
//= require cocoon
//= require activestorage
//= require autocomplete-rails
//= require uikit.min
//= require uikit-icons.min
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree ../../../vendor/assets/javascripts/.
//= require_tree .

 


$(document).ready(function () {
    $(".btn-gnavi").on("click", function() {
        var rightVal = 0;
        
        if($(this).hasClass("open")) {
            rightVal = -300;
            $(this).removeClass("open");
        } else {
            $(this).addClass("open");
        } 
        $("#global-navi").stop().animate({
            right: rightVal
        }, 200);
    });
    
});

$(document).on('turbolinks:load', function(){
    $('.slider').slick({
      autoplay:true,  
      accessibility:true,
      arrows:true,
      centerMode:false,
      swipe:true,	
    });
  });

