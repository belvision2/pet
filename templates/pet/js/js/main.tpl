<!DOCTYPE html>
<html lang="ru">
<head>
	{headers}
<meta name="viewport" content="width=device-width">
         [category=42]
    <script type="text/javascript" src="http://wikipet.by/templates/pet/js/mootools.js"></script>

   [/category]
	<link rel="stylesheet" href="{THEME}/css/styledefault.css"  type="text/css" media="all" />
	<link rel="stylesheet" href="{THEME}/css/tg.css"  type="text/css" media="all" />
	<link rel="stylesheet" href="{THEME}/css/style.css"  type="text/css" media="all" />
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script><![endif]-->

 [category=22]
<link rel="stylesheet" type="text/css" href="{THEME}/dist/css/slider-pro.css" media="screen"/>
<script type="text/javascript" src="{THEME}/libs/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="{THEME}/dist/js/jquery.sliderPro.js"></script>

<script type="text/javascript">
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
        
  $('.slider-pro').hover(function(){
  $('.sp-bottom-thumbnails').css('display', 'block');
      $('.sp-thumbnail').css('margin-left', '0px');
       $('.sp-layer').css('top', '8px');
       $('.sp-layer').css('left', '8px');
 });       
        
        
	});
    

</script>
    [/category]
      
     <script src="{THEME}/js/jsCarousel-2.0.0.js" type="text/javascript"></script>

    <link href="{THEME}/css/jsCarousel-2.0.0.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        $(document).ready(function() {
           $('#carouselh').jsCarousel({ onthumbnailclick: function(src) { alert(src); }, autoscroll: false, circular: true, masked: false, itemstodisplay: 4, orientation: 'h' }); 
               $('#carouselh2').jsCarousel({ onthumbnailclick: function(src) { alert(src); }, autoscroll: false, circular: true, masked: false, itemstodisplay: 1, orientation: 'h' }); 
            $('#carouselh3').jsCarousel({ onthumbnailclick: function(src) { alert(src); }, autoscroll: false, circular: true, masked: false, itemstodisplay: 5, orientation: 'h' });
              $('#carouselh4').jsCarousel({ onthumbnailclick: function(src) { alert(src); }, autoscroll: false, circular: true, masked: false, itemstodisplay: 6, orientation: 'h' });
            $('#carouselh5').jsCarousel({ onthumbnailclick: function(src) { alert(src); }, autoscroll: false, circular: true, masked: false, itemstodisplay: 5, orientation: 'h' });
        });       
        
    </script>

     <script src="{THEME}/js/script.js"></script>
 
</head>
<body>
<div class="wrapper">
<div class="wrapper-all">

{include file="modules/header.tpl"}
   [static=index] {include file="modules/index-slider.tpl"}[/static]

   <div id="content">
    {include file="modules/rightsidebar.tpl"}
	[not-static=index]{include file="speedbar.tpl"}[/not-static]

	


		     {info}
		     {content}
      

	   </div><!-- content -->
	  </div><!-- wrapper-all -->
	  <div class="clear"></div>
{include file="modules/footer-new.tpl"}

</div><!-- wrapper -->
	{AJAX}
	<script type="text/javascript" src="{THEME}/js/lib.js"></script>
	<script type="text/javascript">
		jQuery(function($){
			$.get("{THEME}/images/sprite.svg", function(data) {
			  var div = document.createElement("div");
			  div.innerHTML = new XMLSerializer().serializeToString(data.documentElement);
			  document.body.insertBefore(div, document.body.childNodes[0]);
			});
		});
        
	</script>
  <!--социальные кнопки слева-->
    <div class="social-left">
      <div id="l-vk"></div>
        <div id="l-ok"></div>
          <div id="l-fb"></div>
            <div id="l-inst"></div>
               <div id="l-you"></div>
    
    
    </div>
    
    <!--социальные кнопки слева конец-->
    <!--меню-->
<div class="pop-up-menu" style=" display:none;   z-index: 99999999;
    top: 10px;
    margin-top: 132px;
    position: absolute;
    margin-left: 26px; width: 96%;
 box-shadow: 0px 2px 8px rgba(0,0,0,0.5);
 border-radius: 2px;">

<div class="p-m-col-1">
   <h1 style="cursor:pointer;">все разделы</h1>
	<ul>
		<li><a href="#">Энциклопедия</a></li>
		<li><a href="#">Здоровье и питание</a></li>
		<li><a href="#">Позитив</a></li>
		<li><a href="#">Каталоги</a></li>
		
	</ul>
</div>



<div class="p-m-col-6">
	<div class="p-m-col-6-1">
		<ul>
			<li><a href="#">Собаки</a></li>
			<li><a href="#">Коты</a></li>
			<li><a href="#">Птицы</a></li>
			<li><a href="#">Авквариумные животные</a></li>
			<li><a href="#">Террариумные животные</a></li>
			<li><a href="#">Грызуны</a></li>
			<li><a href="#">Другие</a></li>
		</ul>
	</div>
	
	<div class="p-m-col-6-1">
		<ul  class="p-m-col-6-1-menu-">
			<li><a href="#">Здоровье</a></li>
			<li><a href="#">Питание</a></li>
			<li><a href="#">Уход и гигиена</a></li>
			<li><a href="#">Дрессировка и воспитание</a></li>
			<li><a href="#">ЗОЖ</a></li>
			<li><a href="#">Гигиена</a></li>
		</ul>
	</div>
	
	<div class="p-m-col-6-1">
		<ul  class="p-m-col-6-1-menu-3">
			<li><a href="#">Фото</a></li>
			<li><a href="#">Видео</a></li>
			<li><a href="#">Истории</a></li>
			<li><a href="#">В свободное время</a></li>
			<li><a href="#">Конкурсы</a></li>
		</ul>
	</div>
		
	<div class="p-m-col-6-1">
		<ul  class="p-m-col-6-1-menu-4">
			<li><a href="#">Ветклиники и станции</a></li>
			<li><a href="#">Ветаптеки</a></li>
			<li><a href="#">Зоомагазины</a></li>
			<li><a href="#">Салоны и парикмахерсике</a></li>
			<li><a href="#">Ателье, магазины</a></li>
			<li><a href="#">Зоогостиницы</a></li>
			<li><a href="#">Зоотакси</a></li>
		</ul>
	</div>
	
	<div class="p-m-col-6-1">
		<ul>
			<li><a href="#">Хендлеры</a></li>
			<li><a href="#">Грумеры</a></li>
			<li><a href="#">Догвокеры</a></li>
			<li><a href="#">Инструкторы</a></li>
			<li><a href="#">Ветеринары</a></li>
			<li><a href="#">Диетологи</a></li>
			<li><a href="#">Психологи</a></li>
			<li><a href="#">Патронаж</a></li>
			<li><a href="#">Фотографы-анималисты, фотостудии</a></li>
			<li><a href="#">Организация праздников</a></li>
		</ul>
	</div>
	
	<div class="p-m-col-6-1">
		<ul>
			<li><a href="#">Клубы</a></li>
			<li><a href="#">Питомники</a></li>
			<li><a href="#">Заводчики</a></li>
			<li><a href="#">Международные организации</a></li>
		</ul>
	</div>
	
	
</div>

<div class="clear"></div>

<div class="p-m-col-4">
	<div class="p-m-col-4-1">
		<h2>Говорят специалисты</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do </p>
	</div>
</div>

<div class="p-m-col-4">
	<div class="p-m-col-4-1">
		<h2>Новости компаний</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do</p> 
	</div>
</div>

<div class="p-m-col-4">
	<div class="p-m-col-4-1">
		<h2>Афиша</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do </p>
	</div>
</div>

<div class="p-m-col-4">
	<div class="p-m-col-4-1">
		<h2>Акции и скидки</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do </p>
	</div>
</div>

<div class="p-m-col-4">
	<div class="p-m-col-4-1">
		<h2>Содержание животных (правовые вопросы)</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do </p>
	</div>
</div>

<div class="p-m-col-4">
	<div class="p-m-col-4-1">
		<h2>Спецпроеты</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do </p>
	</div>
</div>

<div class="p-m-col-4">
	<div class="p-m-col-4-1">
		<h2>Журнал</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do </p>
	</div>
</div>
</div><!--/end pop-up-menu -->
 
</body>
</html>