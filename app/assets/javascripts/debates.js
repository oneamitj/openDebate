// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('ready', function(){
 
  $('.debate').mouseenter(function(){
    var $meta = $(this).children('.meta');
    var $edit = $($meta).children('.hover_show');
    var $Delete = $($meta).children('.hover_show');
    $edit.removeClass('hidden');
  });

  $('.debate').mouseleave(function(){
    var $meta = $(this).children('.meta');
    var $edit = $($meta).children('.hover_show');
    var $Delete = $($meta).children('.hover_show');
    $edit.addClass('hidden');
  });
});