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
//= require_tree .


$('.menu-button a').click(function(){
 $('.menu ul').toggleClass('expanded');
});


$().ready(function() {
  setContentHeight();
  $(window).resize(function(){
    setContentHeight();
  });
});

function setContentHeight(){
  $('.content-wrap').css("min-height", ($(window).height() + "px" ));
}

$('.attending-radio').click(function() {
  var radio = $(this);
  var attendingContent = radio.parent().siblings('.attending-content');

  var expanded = radio.attr('value') == "true";

  attendingContent.toggleClass('expanded', expanded);
})
