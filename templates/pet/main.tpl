<!DOCTYPE html>
<html lang="ru">
<head>
	{headers}
<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="{THEME}/css/styledefault.css"  type="text/css" media="all" />
	<link rel="stylesheet" href="{THEME}/css/style.css"  type="text/css" media="all" />
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script><![endif]-->
       [category=42,44,20,99]
    <script type="text/javascript" src="http://wikipet.by/templates/pet/js/mootools.js"></script>
     <script type="text/javascript" src="http://wikipet.by/templates/pet/js/jquery.easing.1.3.js"></script>

   [/category]
 [category=22,60-71]
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
        
  /*$('.slider-pro').hover(function(){
  $('.sp-bottom-thumbnails').css('display', 'block');
      $('.sp-thumbnail').css('margin-left', '0px');
       $('.sp-layer').css('top', '8px');
       $('.sp-layer').css('left', '8px');
 });   */    
        
        
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
   [static=index] {include file="main/index-slider.tpl"}[/static]

   <div id="content">
    {include file="sidebar/rightsidebar.tpl"}
        [category=1-1000]{speedbar}[/category]
       	[category=54]{include file="ivan.tpl"}[/category]
     

	


		     {info}
		     {content}
      
       [available=main]


           <div id="main_content">
<div id="content">
<div id="viberi-pitomca">
<h1 class="blue">Выбери питомца</h1>
<h4 class="description">И узнай о нем больше</h4>
    <div class="clear"></div>
<div class="line"></div>
    <div class="clear"></div>
	<div id="demo-right">
                    <div id="hWrapper">
                        <div id="carouselh">
                         <div>
                                <img alt="" src="{THEME}/img/img_5.jpg" /><br />
                                <span class="thumbnail-text">Грызуны</span></div>
                         <div>
                                <img alt="" src="{THEME}/img/img_6.jpg" /><br />
                                <span class="thumbnail-text">Террариумные</span></div>
                            <div>
                                <img alt="" src="{THEME}/img/img_7.jpg" /><br />
                                <span class="thumbnail-text">Другие</span></div>
                            <!--<div>
                                <img alt="" src="{THEME}/img/img_8.jpg" /><br />
                                <span class="thumbnail-text">Другие</span></div>-->
          
                            <div>
                                <img alt="" src="{THEME}/img/img_1.jpg" /><br />
                                <span class="thumbnail-text">Аквариумные</span></div>
                                             <div>
                                <img alt="" src="{THEME}/img/img_2.jpg" /><br />
                                <span class="thumbnail-text">Кошки</span></div>
                            <div>
                                <img alt="" src="{THEME}/img/img_3.jpg" /><br />
                                <span class="thumbnail-text">Птицы</span></div>
                            <div>
                                <img alt="" src="{THEME}/img/img_4.jpg" /><br />
                                <span class="thumbnail-text">Собаки</span></div>
                    
                            
                        </div>
                    </div>
                  
                </div>

</div>
<div class="empty">
    {custom category="22,60-65" from="0" limit="1" template="main/index-collag1"}

<div class="col-2">
	{custom category="11,13-18,52,55"  limit="1" from="0" template="main/index-collag2"}
{custom category="24,25,27,49"  limit="1" from="0" idexclude="56" template="main/index-collag2"}
</div>
<div class="col-3">
{custom category="42,99"  limit="1" from="1" idexclude="56" template="main/index-collag3"}
{custom category="53,100,91"  limit="1" from="0" idexclude="56" template="main/index-collag3"}
{custom category="59,80,89" limit="1" from="2" idexclude="56" template="main/index-collag4"}
</div>
</div>
<div id="positiv">
    <a href="http://wikipet.by/positive/"><h1 class="red">позитив</h1></a>
<div class="line"></div>
<ul class="main-page-block-menu">
<li><a href="https://wikipet.by/positive/kreativ-foto/">Фото</a></li>
<li><a href="#">Видео</a></li>
<li><a href="https://wikipet.by/positive/veselie-istorii/">Истории</a></li>
<li><a href="https://wikipet.by/positive/v-svobodnoe-vremya/">В свободное время</a></li>
<li><a href="http://wikipet.by/positive/v-svobodnoe-vremya/152-astrologiya.html">Астрология</a></li>
</ul>
{custom category="24,25,49" order="reads" limit="6" from="0" idexclude="56" template="main/index-collag-positiv"}
</div>

<div class="clear"></div>
<div id="zdorovie-i-pitanie">
<a href="http://wikipet.by/zdorove-i-pitanie/"><h1 class="blue">жизнь с питомцем</h1></a>
<div class="line"></div>
<ul class="main-page-block-menu1">

<li><a href="https://wikipet.by/zdorove-i-pitanie-sobaki/zdorove-sobaki/">Здоровье</a></li>
<li><a href="https://wikipet.by/zdorove-i-pitanie-sobaki/pitanie-sobaki/">Питание</a></li>
<li><a href="https://wikipet.by/zdorove-i-pitanie-sobaki/zozh/">ЗОЖ</a></li>
<li><a href="https://wikipet.by/zdorove-i-pitanie-sobaki/uhod-i-gigiena/">Уход и гигиена</a></li>
<li><a href="https://wikipet.by/zdorove-i-pitanie-sobaki/psihologiya/">Психология</a></li>
    <li><a href="https://wikipet.by/zdorove-i-pitanie-sobaki/dressirovka-i-vospitanie/">Дрессировка и воспитание</a></li>
</ul>
{custom category="42,99" limit="6" from="0" idexclude="56" template="main/index-collag-positiv"}
</div>

<div class="clear"></div>
<div id="govoriyat-specilisti" style="display:none;">
<a href="http://wikipet.by/govoryat-eksperty/"><h1 class="blue">говорят специалисты</h1></a>
<div class="line"></div>
<br>
<br>
{custom category="45" order="reads" limit="3" from="0" idexclude="56" template="main/index-collag-positiv"}

</div>
<div class="clear"></div>
<div id="wikipet-zhurnal">
<a href="http://wikipet.by/wikipet-zhurnal/"><h1 class="red">wikipet-журнал</h1></a>
<div class="line"></div>
<ul class="main-page-block-menu2">
    <li><a href="#">Тема дня</a></li>
    <li><a href="https://wikipet.by/positive/animal-fashion/">Animal Fashion</a></li>
    <li><a href="https://wikipet.by/positive/animalistika/">Анималистика</a></li>
    <li><a href="https://wikipet.by/positive/zhivotnye-v-biznese/">Животные в бизнесе</a></li>
    <li><a href="https://wikipet.by/positive/zanimatelnaya-psihologiya/">Занимательная психология</a></li>

    
</ul>
    
    
   <div class="line"></div>
<ul class="main-page-block-menu">
    <li><a href="https://wikipet.by/positive/mifologiya-i-simvolika/">Мифология и символика</a></li>
    <li><a href="https://wikipet.by/positive/zhivotnye-tvorcy/">Животные творцы</a></li>
    <li><a href="https://wikipet.by/positive/personi/">Персоны</a></li>
    <li><a href="https://wikipet.by/positive/pryamoy-reportaj/">Прямой репортаж</a></li>
    <li><a href="https://wikipet.by/positive/geroi/">Герои нашего времени</a></li>
  

 
</ul> 
    
    
{custom category="11,13-18,52,55" order="reads" limit="6" from="0"  template="main/index-collag-positiv"}
</div>

<div class="clear"></div>
<div id="art">
<a href="http://wikipet.by/pet-art/"><h1 class="red">Творчество</h1></a>
<div class="line"></div>
<ul class="main-page-block-menu">
<li><a href="http://wikipet.by/pet-art/hand-made/">Hand-made</a></li>
<li><a href="https://wikipet.by/pet-art/dizayn-mebel/">Дизайн</a></li>
<li><a href="http://wikipet.by/pet-art/master-klass/">Мастер-классы</a></li>
</ul>
{custom category="41,91"  limit="3" from="0"  template="main/index-collag-art"}

</div>

<div class="clear"></div>
<div id="conkursi" style="display:none">
<a href="http://wikipet.by/konkursy/"><h1 class="red">Конкурсы</h1></a>
<div class="line"></div>

{custom category="47" order="reads" limit="3" from="0" template="main/index-collag-positiv"}

</div>

	
</div>

           </div><!--main_content-->


       [/available]
       
       
       
       

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
 [static=index] <!--социальные кнопки слева-->
    <div class="social-left">
      <div id="l-vk"></div>
        <div id="l-ok"></div>
          <div id="l-fb"></div>
            <div id="l-inst"></div>
               <div id="l-you"></div>
    
    
    </div>
    
    <!--социальные кнопки слева конец-->[/static]
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
			<li><a href="http://wikipet.by/zdorove-i-pitanie-sobaki/dressirovka-i-vospitanie/">Дрессировка и воспитание</a></li>
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
		<a href="http://wikipet.by/akcii-i-skidki"><h2>Акции и скидки</h2></a>
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
 
    <!--to top-->
    <style>#toTop{
        
          position: fixed;
    bottom: 0px;
    right: 10px;
    cursor: pointer;
        }
  
    </style>
    
    <a id="toTop" style="display: block;"><img src="{theme}/img/up.gif" alt="" title="Наверх"></a>
    <script type="text/javascript" src="{theme}/js/jquery.totop.js"></script>
    <script type="text/javascript">// < ![CDATA[
		$(function(){
            $("#toTop").scrollToTop();
                    $('#toTop').css('display', 'block'); 
            $('li .dropdown').css('display', 'block'); 
                    });
	// ]]></script>
</body>
</html>