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
//= require_directory .

 


$(document).on('turbolinks:load', function () {
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
        centerMode: true,
        dots: true,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: 'linear',
    });
    
  });

  $(document).on('turbolinks:load', function(){
    $('.slider3').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        arrows: true,
        dots: true,
        arrows: false,
      });
  });


  $(document).on('turbolinks:load', function(){
    $('.slider1').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        dots: true,
        arrows: false,
      });
  });

 $(document).on('turbolinks:load', function() {
    $('.slider-show').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'
      });
      $('.slider-nav').slick({
        slidesToShow: 2,
        slidesToScroll: 1,
        asNavFor: '.slider-show',
        dots: true,
        centerMode: true,
        focusOnSelect: true
      });
});
$(document).on('turbolinls:load', function(){
  $("home-text").textillate({
       loop: true,
       in: {
           effect: 'fadeInDown',
           delay: 50,
           shuffle: true
       } ,
       out: {
           effect: 'flash',
           delay: 50
       }
  }); 
});

$(document).on('turbolinks:load', function(){
    $("#Mottomiru").click(function(){
      $("#rest-of-ranking").show();
      $("#Mottomiru").hide();
    });
});


