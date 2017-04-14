
/* всплывающее окно входа */
$(document).ready(function(e) {
p = $('.popup__overlay')
$('.popup__toggle').click(function() {
    p.css('display', 'block')
})
p.click(function(event) {
    e = event || window.event
    if (e.target == this) {
        $(p).css('display', 'none')
    }
})
$('.popup__close').click(function() {
    p.css('display', 'none')
})
  });	
	/* поиск в шапке */

	function otkr(){
	
			var text2 = document.getElementById('text2');
			var login_pane = document.getElementById('login_pane');
		if(text2.style.display == 'none')
		{
			text2.style.display = 'block';
			login_pane.style.display = 'none';
		}
		else
		{
			text2.style.display = 'none';
			login_pane.style.display = 'block';
		}
	}

/*$(document).ready(function() {

 	  // подсветка ссылок меню в хэдэре при переходе на страницу
	     var url = window.location;
	   // Will only work if string in href matches with location
         $('header a[href="'+ url +'"]').parent().addClass('active');
         
         // Will also work for relative and absolute hrefs
         $('header a').filter(function() {
         return this.href == url;
         }).parent().addClass('active');
		 
   });  */ 

/* меню на главной */

$(document).ready(function(e) {
p = $('.pop-up-menu');

$('.p-m-col-1 h1').click(function() {
    p.css('display', 'none')
});

    $('#menu-all').click(function() {
    p.css('display', 'none')
});
    $('#menu-all2').click(function() {
    p.css('display', 'none')
});
    
    
    vxod = $('.popup__overlay');
    
        $('.popup__toggle').click(function() {
    vxod.css('display', 'block')
});
    
           $('.popup__close').click(function() {
    vxod.css('display', 'none')
});
    
  });

  /* слайдер про */

	$( document ).ready(function( $ ) {
		$( '#example3' ).sliderPro({
			width: 952,
			height: 409,
			fade: false,
			arrows: true,
			buttons: false,
			fullScreen: false,
			shuffle: true,
			smallSize: 500,
			mediumSize: 1000,
			largeSize: 3000,
			thumbnailArrows: true,
			autoplay: false
		});
        
  /*$('.slider-pro').hover(function(){
  $('.sp-bottom-thumbnails').css('display', 'block');
      $('.sp-thumbnail').css('margin-left', '0px');
       $('.sp-layer').css('top', '8px');
       $('.sp-layer').css('left', '8px');
 });   */    
        
        
	});
	$( document ).ready(function( $ ) {
		$( '#index_small_slider' ).sliderPro({
			width: 950,
			height: 300,
			fade: false,
			arrows: true,
			buttons: false,
			fullScreen: false,
			shuffle: true,
			thumbnailArrows: true,
			autoplay: false
		});     
	});
    
	$( document ).ready(function( $ ) {
		$( '#zizn-menu' ).sliderPro({
			width: 952,
			height: 60,
			fade: false,
			arrows: true,
			buttons: false,
			fullScreen: false,
			shuffle: true,
			thumbnailArrows: true,
			autoplay: false
		});     
	});

	$( document ).ready(function( $ ) {
		$( '#index-slider-big' ).sliderPro({
			width: 1200,
			height: 405,
			fade: false,
			arrows: true,
			buttons: false,
			fullScreen: false,
			shuffle: true,
			thumbnailArrows: true,
			autoplay: false
		});     
	});
    


	$( document ).ready(function( $ ) {
		$( '#index-menu' ).sliderPro({
			width: 1200,
			height: 95,
			fade: false,
			arrows: true,
			buttons: false,
			fullScreen: false,
			shuffle: true,
			thumbnailArrows: true,
			autoplay: false
		});     
	});
    


	$( document ).ready(function( $ ) {
		$( '#index_small_slider' ).sliderPro({
			width: 950,
			height: 300,
			fade: false,
			arrows: true,
			buttons: false,
			fullScreen: false,
			shuffle: true,
			thumbnailArrows: true,
			autoplay: false
		});     
	});
    





  