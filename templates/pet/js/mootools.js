$(document).ready(function(){
	$.easing.def = "easeInOutQuad";
	$('li.button a').click(function(e){
		var dropDown = $(this).parent().next();
		$('.dropdown2').not(dropDown).slideUp('slow');
		dropDown.slideToggle('slow');
		e.preventDefault();
	});
    
    $('li.button a span').click(function(e){
        $("li.button a span").removeClass('show');
     $(this).addClass('show');
});
  
});