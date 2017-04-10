[not-static=positiv,eto-vse-oni,katalog,index]
[not-category=11,22,23,29,37,38,39,40,41,42]


<!--===========================
саитбар c поиском по городам на всех страницах и категориях по умолчанию
=============================-->
<aside>
[banner_right-sidebar-1]{banner_right-sidebar-1}[/banner_right-sidebar-1]
<div class="vertical_menu13">
      <div class="vertical_menu13_header">
	  <span>
       новости
	   </span>
      </div>
        <div class="liniya"></div>
  {custom category="21"  limit="4" template="rightsidebar-news"}
	  
	
	  </div>
  
[banner_right-sidebar-2]{banner_right-sidebar-2}[/banner_right-sidebar-2]

<div class="vertical_menu12">
      <div class="vertical_menu12_header">
	  <span>
       Сарафанное радио
	   </span>
      </div>
        <div class="liniya"></div>
      <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">Тимур</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>
	  <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">Тимур</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>
	  <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">Тимур</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>
	  <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">Тимур</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>
	  <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">Тимур</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>
	
	  </div>
</aside>
 <!--===========================
 конец саитбар c поиском по городам на всех страницах и категориях по умолчанию
=============================--> 
[/not-category]
[/not-static]

 <!--========================================================--> 
[category=11]
<aside>
<div class="full_menu_box">
    <div class="innerpage_menu_header">
     <span>Меню</span>
    </div>
	<div class="liniya"></div>
	
<ul class="innerpage_menu">

{custom category="22" template="taksi-sidebar" aviable="global" from="0" order="date" cache="yes"}


</ul>
   
   </div>
</aside>
[/category] 

[category=22]
<aside>
    [banner_right-sidebar-1]{banner_right-sidebar-1}[/banner_right-sidebar-1]
<div class="full_menu_box">
    <div class="innerpage_menu_header">
     <span>Меню</span>
    </div>
	<div class="liniya"></div>
	
<ul class="innerpage_menu">

{custom category="22" template="taksi-sidebar" aviable="global" limit="14" from="1" order="date" cache="yes"}


</ul>
   
   </div>
</aside>
[/category] 

[category=42]
<aside>

<div class="full_menu_box">
    <div class="innerpage_menu_header">
     <span>Меню</span>
    </div>
	<div class="liniya"></div>
	<style>
        ul.innerpage_menu-dress {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
        .innerpage_menu-dress li a {
    color: #4c4c4c;
    text-decoration: none;
    width: 200px;
    height: 50px;
    display: block;
    border: none;
}
        .innerpage_menu-dress li a span {
    font-size: 20px;
    padding: 16px 0 0 16px;
    display: block;
    font-family: OpenSans;
    text-transform: uppercase;
    line-height: 29px;
            background: url({theme}/img/arrow-down.png) 198px 23px no-repeat;
            width: 212px;
}
    .innerpage_menu-dress li {
    padding-bottom: 20px;
}
        
                ul.v-menu {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
                .v-menu li a {
    color: #4c4c4c;
    text-decoration: none;
    width: 200px;
    height: 50px;
    display: block;
    border: none;
}
                .v-menu li a span {
    font-size: 18px;
    padding: 16px 0 0 16px;
    display: block;
    font-family: OpenSans;
    line-height: 25px;
    text-transform: none;
    background: none;
}
        #dropdown{display: none;}
        .show{
            background: url(/templates/pet/img/arrow-down.png) 198px 39px no-repeat;
            color: #9d331b;
            border-left: 1px solid #9d331b;
            border-top: 1px solid #e1e1e1;
        
        }
        .border{
            border-top: 1px solid #e1e1e1;
             border-bottom: 1px solid #e1e1e1;
        }
        .esli{
            border: 1px solid #9d331b;
            margin-top: 20px;
            height: 95px;
            font-size: 26px;
            text-transform: uppercase;
            font-family: BebasNeueRegular;
            color: #9d331b;
            margin-bottom: 15px;
            
        }
           .esli span{
       display: block;
               margin-top: 23px;
               margin-left: 46px;
            
        }
    </style>
<ul class="innerpage_menu-dress">

	<li class="button"><a href="#"><span>Породы</span></a></li>
    <li class="dropdown" id="dropdown">
  <ul class="v-menu">
      <li><a href="#"><span>пункт 1</span></a></li>
      <li><a href="#"><span>пункт 2</span></a></li>
      <li><a href="#"><span>пункт 3</span></a></li>
      <li><a href="#"><span>пункт 4</span></a></li>
      <li><a href="#"><span>пункт 5</span></a></li>
  </ul>
</li>

    <li class="button"><a href="#"><span>Здоровье</span></a></li>
<li class="dropdown" id="dropdown">
  <ul class="v-menu">
      <li><a href="#"><span>пункт 1</span></a></li>
      <li><a href="#"><span>пункт 2</span></a></li>
      <li><a href="#"><span>пункт 3</span></a></li>
      <li><a href="#"><span>пункт 4</span></a></li>
      <li><a href="#"><span>пункт 5</span></a></li>
  </ul>
</li>
    <li class="button"><a href="#"><span>Питание</span></a></li>
    <li class="dropdown" id="dropdown">
  <ul class="v-menu">
      <li><a href="#"><span>пункт 1</span></a></li>
      <li><a href="#"><span>пункт 2</span></a></li>
      <li><a href="#"><span>пункт 3</span></a></li>
      <li><a href="#"><span>пункт 4</span></a></li>
      <li><a href="#"><span>пункт 5</span></a></li>
  </ul>
</li>
    <li class="button"><a href="#"><span>Уход и Гигиена</span></a></li>
    <li class="dropdown" id="dropdown">
  <ul class="v-menu">
      <li><a href="#"><span>пункт 1</span></a></li>
      <li><a href="#"><span>пункт 2</span></a></li>
      <li><a href="#"><span>пункт 3</span></a></li>
      <li><a href="#"><span>пункт 4</span></a></li>
      <li><a href="#"><span>пункт 5</span></a></li>
  </ul>
</li>
    <li class="button" ><a href="#"><span class="show">Дрессировка и Воспитание</span></a></li>
<li class="dropdown" id="dropdown-show">
  <ul class="v-menu">
      <li><a href="#"><span>Воспитательная дрессировка</span></a></li>
      <li><a href="#"><span>Спортивная</span></a></li>
      <li><a href="#"><span>Ринговая</span></a></li>
      <li><a href="#"><span>Защитная</span></a></li>
      <li><a href="#"><span>Служебная</span></a></li>
      <li><a href="#"><span>Тренинг и дрессировка</span></a></li>
  </ul>
</li>


</ul>
    <ul class="innerpage_menu-dress border">
           <li class="button"><a href="#"><span>Зож</span></a></li>
        <li class="dropdown" id="dropdown">
  <ul class="v-menu">
      <li><a href="#"><span>пункт 1</span></a></li>
      <li><a href="#"><span>пункт 2</span></a></li>
      <li><a href="#"><span>пункт 3</span></a></li>
      <li><a href="#"><span>пункт 4</span></a></li>
      <li><a href="#"><span>пункт 5</span></a></li>
  </ul>
</li>
    <li class="button"><a href="#"><span>Психология</span></a></li>
    <li class="dropdown" id="dropdown">
  <ul class="v-menu">
      <li><a href="#"><span>пункт 1</span></a></li>
      <li><a href="#"><span>пункт 2</span></a></li>
      <li><a href="#"><span>пункт 3</span></a></li>
      <li><a href="#"><span>пункт 4</span></a></li>
      <li><a href="#"><span>пункт 5</span></a></li>
  </ul>
</li>
    <li class="button"><a href="#"><span>Товары и Услуги</span></a></li>
    <li class="dropdown" id="dropdown">
  <ul class="v-menu">
      <li><a href="#"><span>пункт 1</span></a></li>
      <li><a href="#"><span>пункт 2</span></a></li>
      <li><a href="#"><span>пункт 3</span></a></li>
      <li><a href="#"><span>пункт 4</span></a></li>
      <li><a href="#"><span>пункт 5</span></a></li>
  </ul>
</li>
    </ul>
    <div class="clear"></div>
    <div class="esli"><span>если вы решили<br />завести собаку</span></div>
   [banner_right-sidebar-1]{banner_right-sidebar-1}[/banner_right-sidebar-1]
   </div>
    
    <div class="full_menu_box">
    <div class="innerpage_menu_header podrobnee-poroda">
     <span>Подробнее о породе</span>
    </div>
	<div class="liniya"></div>
        <span class="vibor">Выберите Породу</span>
        <form action="/xfsearch/Таксы" method="post">     
        <select class="shop-select2" size="1" onchange="document.location=this.options[this.selectedIndex].value">
            <option value="/xfsearch/Таксы" selected="">Таксы</option>
  <option value="/xfsearch/Таксы">Таксы</option>
  <option value="/xfsearch/Бульдог">Бульдоги</option> 
  <option value="/xfsearch/Лабрадор">Лабрадор</option> 
</select>
<div class="primenit" type="submit" onClick="javascript:this.parentNode.submit();">Применить</div>
       
            </form>
    </div>
</aside>
[/category] 
[static=index]
<aside>
[banner_right-sidebar-1]{banner_right-sidebar-1}[/banner_right-sidebar-1]
    <a href="#"><div class="akcii"><div class="akcii-1">% </div><div class="akcii-2">Акции и Скидки</div></div></a>
<div class="vertical_menu13">
      <div class="vertical_menu13_header">
	  <span>
       новости
	   </span>
      </div>
        <div class="liniya"></div>
  {custom category="21"  limit="4" template="rightsidebar-news"}
	  
	
	  </div>
  
[banner_right-sidebar-2]{banner_right-sidebar-2}[/banner_right-sidebar-2]
 <a href="#"><div class="pravo"><div class="pravo-1"></div><div class="pravo-2">ПРАВОВЫЕ ВОПРОСЫ<br />
содержания <br />
ЖИВОТНЫХ</div></div></a>
<div class="vertical_menu12">
   <div class="vertical_menu13_header">
	  <span>
       интересные факты
	   </span>
      </div>
        <div class="liniya"></div>
      <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">У гиббонов оказался очень развитый язык</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>
	  <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">У гиббонов оказался очень развитый язык</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>
	  <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">У гиббонов оказался очень развитый язык</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>
	  <div class="vertical_menu12_item">
       <div class="vertical_menu12_title">У гиббонов оказался очень развитый язык</div>
       <div class="vertical_menu12_text">This is Photoshop's version &nbsp;of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean</div>
      </div>

	
	  </div>
</aside>
[/static]
[category=41]
<aside>

<div id="fullstory-hndmd-aside-menu" >
    <div id="fullstory-hndmd-aside-menu-header">
     <span>hand-made</span>
    </div>
	<div class="liniya"></div>
	
<ul>
<li><a href="#">СКРАП</a></li>
<li><a href="#">ДЕКУПАЖ</a></li>
<li><a href="#">ПЛАСТИКА</a></li>
<li><a href="#">ВАЛЯНИЕ ШЕРСТИ</a></li>
<li><a href="#">ТЕКСТИЛЬНАЯ ИГРУШКА</a></li>
<li><a href="#">ВЫШИВКА</a></li>
<li><a href="#">БИСЕР</a></li>
<li><a href="#">РОСПИСЬ</a></li>

</ul>
</div>
 {custom category="40" limit="1" template="right-banner-hand-made-fullstory"}

<div class="innerpage_add_block_2">Реклама</div>
<div class="innerpage_add_block_3">Реклама</div>
     
</aside>
[/category]
[static=eto-vse-oni]

<aside>


  <div class="vertical_menu10">
    <div class="vertical_menu10_header">
     <span>меню</span>
    </div>
	 <div class="liniya"></div>
	 

		 <ul>
	{catmenu id="11,13-19"}
		 </ul>
     </div>
   
     

<div class="innerpage_add_block_2">Реклама</div>
<div class="innerpage_add_block_3">Реклама</div>
     
  

</aside>
[/static]


[category=39]
<aside>
<div class="hndmd-aside-gallery">
      <div class="hndmd-aside-gallery-header">
	  <span>
       галерея питомцев
	   </span>
      </div>
        <div class="liniya"></div>
      <ul>
       <li></li>
	  <li></li>
	  <li></li>
	</ul>
	  </div>
	  
	  <div class="vertical_menu10">
    <div class="hndmd-aside-menu-header">
	

     <span>это все они</span>
    </div>
	<div class="liniya"></div>
	
	 <ul>
	{catmenu id="11,13-19"}
		 </ul>
</div>  
</aside>
[/category]

[category=38]
<aside>
<div class="pravopage-vertmenu">
    <div class="innerpage_menu_header">
     <span>вопрос-ответ</span>
    </div>
	<div class="liniya"></div>
	<div id="ask_me"><input type="text" value="Задайте свой вопрос"></div>
	
<!--====================
вывод ответов на вопросы на странице "правовые вопросы" в правом сайдбаре
======================-->	
<div class="pravopage-vertmenu-item">
       <a href="#"><div class="pravopage-vertmenu-title">Как ухаживать за котом?</div></a>
	   <div class="pravopage-vertmenu-text">This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.</div>
</div>
<div class="pravopage-vertmenu-item">
       <a href="#"><div class="pravopage-vertmenu-title">Как ухаживать за котом?</div></a>
	   <div class="pravopage-vertmenu-text">This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.</div>
</div>
<div class="pravopage-vertmenu-item">
       <a href="#"><div class="pravopage-vertmenu-title">Как ухаживать за котом?</div></a>
	   <div class="pravopage-vertmenu-text">This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.</div>
</div>
<div class="pravopage-vertmenu-arrow"></div>
</div>
</aside>
[/category]

[static=positiv]

<aside>


   <div class="vertical_menu10" style="background: url(http://wikipet.by/templates/pet/img/positiv-menu-bg.jpg) top center no-repeat;">
    <div class="vertical_menu10_header">
     <span>в свободное время</span>
    </div>
	<div class="liniya"></div>
	
<ul>
<li><a href="#">ФИЛЬМЫ </a></li>
<li><a href="#">МУЛЬТФИЛЬМЫ</a></li>
<li><a href="#">КНИГИ</a></li>
<li><a href="#">ИГРЫ</a></li>

</ul>

 </div>
   <div class="vertical_menu11" >
      <div class="vertical_menu11_header">
	  <span>
       Читайте
	   </span>
      </div>
        <div class="liniya"></div>
	<a href="http://wikipet.by/eto-vse-oni.html"><img src="http://wikipet.by/templates/pet/img/banner-zabavnie-video.jpg"></a>
  
	
	  </div>

  
   <div class="vertical_menu11">
      <div class="vertical_menu11_header">
	  <span>
       Юмор 
	   </span>
      </div>
        <div class="liniya"></div>
  {custom category="27"  limit="4" template="rightsidebar-positiv-anekdoti"}
	
	  </div>
     
     

[banner_right-sidebar-1]{banner_right-sidebar-1}[/banner_right-sidebar-1]
[banner_right-sidebar-2]{banner_right-sidebar-2}[/banner_right-sidebar-2]
     
  
</aside>
 [/static]

[category=37]

<!--===========================
саитбар c поиском по городам 
=============================-->
<aside>
  <div class="shop-menu">
    <div class="shop-menu-header">
     <span>фильтры</span>
    </div>
	 <div class="liniya"></div>
	 <div class="shop-menu-subtitle">местоположение</div>
	 
		 <ul>
             <a href="http://wikipet.by/xfsearch/Минск"><li><input type="checkbox" name="a" value="Минск">Минск </li></a>
             <a href="http://wikipet.by/xfsearch/Гомель"><li><input type="checkbox" name="a" value="Гомель">Гомель</li></a>
             <a href="http://wikipet.by/xfsearch/Гродно"><li><input type="checkbox" name="a" value="Гродно">Гродно</li></a>
             <a href="http://wikipet.by/xfsearch/Могилев"><li><input type="checkbox" name="a" value="Могилев">Могилев</li></a>
			
		 </ul>
<form action="">     
<select class="shop-select" size="1"onchange="document.location=this.options[this.selectedIndex].value">
  <option value="#" selected>Все города</option>
  <option value="/xfsearch/Бобруйск">Бобруйск</option> 
  <option value="/xfsearch/Березино">Березино</option> 
</select>
</form>
		 <div class="shop-menu-subtitle">станция метро</div>
		  <ul>
              <a href="http://wikipet.by/xfsearch/Октябрьская"><li><input type="checkbox" name="a" value="Минск">Октябрьская</li></a>
                 <a href="http://wikipet.by/xfsearch/Академия Наук"><li><input type="checkbox" name="a" value="Гомель">Академия Наук </li></a>
                 <a href="http://wikipet.by/xfsearch/Площадь Ленина"><li><input type="checkbox" name="a" value="Гродно">Площадь Ленина </li></a>
			
			
		 </ul>
<form action="">		 
<select class="shop-select" size="1" onchange="document.location=this.options[this.selectedIndex].value">
  <option value="#" selected>Все станции</option>
  <option value="/xfsearch/Могилевская">Могилевская</option> 
  <option value="/xfsearch/Пролетарская">Пролетарская</option> 
</select>
</form>	 
     </div>
   

<div class="innerpage_add_block_2">Реклама</div>
<div class="innerpage_add_block_3">Реклама</div>
</aside>
 <!--===========================
 конец сайтбар
=============================--> 
 [/category]

[category=23]
<aside>


   <div class="vertical_menu10">
    <div class="vertical_menu10_header">
     <span>в свободное время</span>
    </div>
	<div class="liniya"></div>
	
<ul>
<li><a href="#">ФИЛЬМЫ </a></li>
<li><a href="#">МУЛЬТФИЛЬМЫ</a></li>
<li><a href="#">КНИГИ</a></li>
<li><a href="#">ИГРЫ</a></li>
</ul>

   </div>
   <div class="vertical_menu11" >
      <div class="vertical_menu11_header">
	  <span>
       Читайте
	   </span>
      </div>
        <div class="liniya"></div>
	<a href="http://wikipet.by/eto-vse-oni.html"><img src="http://wikipet.by/templates/pet/img/banner-zabavnie-video.jpg"></a>
  
	
	  </div>
   <div class="vertical_menu11">
      <div class="vertical_menu11_header">
	  <span>
       Юмор 
	   </span>
      </div>
        <div class="liniya"></div>
  {custom category="27"  limit="4" template="rightsidebar-positiv-anekdoti"}
	
	  </div>
     
     

[banner_right-sidebar-1]{banner_right-sidebar-1}[/banner_right-sidebar-1]
[banner_right-sidebar-2]{banner_right-sidebar-2}[/banner_right-sidebar-2]
     
  
</aside>
[/category] 
[not-category=41]
[category=40]
<aside>
     <div class="vertical_menu10">
    <div id="master-cl-aside-menu-header">
		 <span>мастер-классы</span>
    </div>
	<div class="liniya"></div>
	
<ul>
    {custom category="40" limit="7" template="masterclassi"}


</ul>
</div>  


<div class="innerpage_add_block_2">Реклама</div>
<div class="innerpage_add_block_3">Реклама</div>
</aside>
[/category] [/not-category]