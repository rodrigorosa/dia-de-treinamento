$(function(){
  $('.navigate-up').click(function(){
    location.href = '/versoes';

  });
  setInterval(function(){$('.navigate-up').addClass('enabled')}, 500);
});
