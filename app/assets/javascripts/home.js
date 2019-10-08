

$(document).ready(function () {
    $("#theTarget").skippr({
        transition : 'slide',
        speed : 1000,
        easing : 'easeOutQuart',
        navType : 'block',
        childrenElementType : 'div',
        arrows : true,
        autoPlay : true,
        autoPlayDuration : 8000,
        keyboardOnAlways : true,
        hidePrevious : false
    });
  });

