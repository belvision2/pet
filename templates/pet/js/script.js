


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

    
    $(window).on('load resize scroll', function () {

        if (!$('#glue').hasClass('fixed'))
            glue_top = $('.empty').offset().top - 350;

        var w_top = $(window).scrollTop();
        if (w_top <= glue_top) {
            $('.social-left').css('display', 'none');
        } else {
           $('.social-left').css('display', 'block');
        }

    });

  });