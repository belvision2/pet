$(document).ready(function(e) {
    /*  социальные кнопки на главной слева */
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