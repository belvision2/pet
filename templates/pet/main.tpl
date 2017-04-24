<!DOCTYPE html>
<html lang="ru">
<head>
	{headers}
<meta name="viewport" content="width=device-width">
    <meta http-equiv="Cache-Control" content="no-cache">
	<link rel="stylesheet" href="{THEME}/css/styledefault.css"  type="text/css" media="all" />
	<link rel="stylesheet" href="{THEME}/css/style.css"  type="text/css" media="all" />
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script><![endif]-->
   
    <script type="text/javascript" src="http://wikipet.by/templates/pet/js/mootools.js"></script>
     <script type="text/javascript" src="http://wikipet.by/templates/pet/js/jquery.easing.1.3.js"></script>


<link rel="stylesheet" type="text/css" href="{THEME}/dist/css/slider-pro.css" media="screen"/>
<script type="text/javascript" src="{THEME}/libs/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="{THEME}/dist/js/jquery.sliderPro.js"></script>
<script src="{THEME}/js/script.js"></script>
</head>
<body>
<div class="wrapper">
<div class="wrapper-all">

{include file="modules/header.tpl"}
   [static=index] {include file="main/index-slider.tpl"}[/static]

   <div id="content">
    {include file="sidebar/rightsidebar.tpl"}
      [not-static=index] {speedbar}[/not-static]
       	[category=54]{include file="ivan.tpl"}[/category]
       [category=29]
<div class="enc-nav">

<ul class="pet-size">
<li><a href="#">КРУПНЫЕ И ГИГАНТЫ</a></li>
<li><a href="#">СРЕДНИЕ И СРЕДНЕКРУПНЫЕ</a></li>
<li><a href="#">МАЛЕНЬКИЕ И ИКССМОЛЫ</a></li>
</ul>
<ul class="abc">
<li><a href="#">А</a></li>
<li><a href="#">Б</a></li>
<li><a href="#">В</a></li>
<li><a href="#">Г</a></li>
<li><a href="#">Д</a></li>
<li><a href="#">Е </a></li>
<li><a href="#">Ж </a></li>
<li><a href="#">З </a></li>
<li><a href="#">И </a></li>
<li><a href="#">Й </a></li>
<li><a href="#">К </a></li>
<li><a href="#">Л </a></li>
<li><a href="#">М </a></li>
<li><a href="#">Н </a></li>
<li><a href="#">О </a></li>
<li><a href="#">П </a></li>
<li><a href="#">Р </a></li>
<li><a href="#">С </a></li>
<li><a href="#">Т </a></li>
<li><a href="#">У </a></li>
<li><a href="#">Ф </a></li>
<li><a href="#">Х </a></li>
<li><a href="#">Ц </a></li>
<li><a href="#">Ч </a></li>
<li><a href="#">Ш </a></li>
<li><a href="#">Э </a></li>
<li><a href="#">Ю </a></li>
<li><a href="#">Я </a></li>
</ul>

</div>
       <style>aside, .pages, .navigation {display: none;}
#dle-content {
    width: 1201px;
	padding-top:0;}  
    .seed-form {
        width: 1200px;}
    .inside_article_search {
        width: 1035px;}
</style>


{custom categoryexclude="0-28,30-1000" limit="1000"  template="sobaki-custom"}
   [/category]  
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
 [static=index] <!--социальные кнопки слева
    <script src="{THEME}/js/social.js"></script>
    <div class="social-left">
      <div id="l-vk"></div>
        <div id="l-ok"></div>
          <a href="https://www.facebook.com/WikiPetby-482208312169722/"><div id="l-fb"></div></a>
        <a href="https://www.instagram.com/wikipet.by/"><div id="l-inst"></div></a>
               <div id="l-you"></div>
    
    
    </div>
    
    социальные кнопки слева конец-->[/static]
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