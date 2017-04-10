<style>

#q_search, aside {display:none;}

#dle-content {
	float: none;
	padding-top: 0;
	height: 100%;
	font-size: 19px;
	line-height: 25px;
	font-family: OpenSans;
	color: #7d7d7d;
	margin: 0 auto;
	width: 1200px;
}

#content {
background: url([xfvalue_image_url_akcii-fon])top center no-repeat;
background-size:100% auto;
width:100%;

background-color:#f6f6f6;
margin-bottom:30px;
}
#main_content {
	width: 1110px;
	margin: 175px auto 30px auto;
	background: #fff;
	
	
	padding:45px;
}

.otziv_btn {
float:right;
width:214px;
}


.shop-info-box1 {
border-bottom:1px solid #e0e0e0;
height:150px;
}
.shop-info-box1 h2 {
font-size:40px;
}

.shop-info-box1 span{
font-size:24px;
font-family: 'Open Sans', sans-serif;
color:#a2a2a2;
}

.shop-info-box2 {
border-bottom:1px solid #e0e0e0;
height:210px;
padding: 40px 0;
}

#shop-adress-box {
padding-bottom:40px;
font-size:20px;
font-family: 'Open Sans', sans-serif;
color:#4c4c4c;
}
#shop-tel-box {
padding-bottom:40px;
font-size:20px;
font-family: 'Open Sans', sans-serif;
color:#4c4c4c;
}
#shop-www-box {
padding-bottom:40px;
font-size:20px;
font-family: 'Open Sans', sans-serif;
color:#4c4c4c;
}

#shop-open-box {

font-size:20px;
font-family: 'Open Sans', sans-serif;
color:#4c4c4c;
padding-bottom:20px;
}

#shop-show-box {
float:right;
width:404px;
height:207px;
overflow:hidden;
}

#shop-text-box p{
font-size:20px;
font-family: 'Open Sans', sans-serif;
color:#4c4c4c;
padding-bottom:20px;
line-height:32px;
text-align:justify;
}

.shop-header {
margin:20px 0;
}

#shop-map-box {
width:1090px;
height:368px;
overflow:hidden;
margin:0 auto;
}

#shop-slider-box {
background: #f0f0f0;
width:1090px;
height:222px;
overflow:hidden;
margin:20px auto 40px auto;
}

#breadcrumbs-one {
width:1165px;
margin:0 auto;
padding-top:20px;
color:#fff;}

#dle-speedbar a {
color:#fff;}
    
  /* слайдер */  
 #carouselh3
{
	width: 1610px;
	height: 343px;
background: #f0f0f0;

	margin: 0;
	padding: 0;
	padding: 20px 8px 22px 8px;
	position: relative; /*overflow: hidden;*/
    
    margin-left: -323px;
}
    
  #carouselh3 .jscarousal-contents-horizontal
{
	width: 1610px;
	height: 343px;
	float: left;
	position: absolute;
	overflow: hidden;
        left: 55px;
}
    
   #carouselh3 .jscarousal-contents-horizontal img {
    width: 297px;
    height: 181px;
}
    
   #carouselh3 .jscarousal-contents-horizontal > div > div {
    float: left;
    margin-left: 24px;
    margin-right: 0px;
}
    
    #carouselh3 .jscarousal-horizontal-forward
{
	background-image: url({THEME}/img/right-magaz.png);
	background-repeat: no-repeat;
	background-position: right;

    position: absolute;
    z-index: 999999;
    right: 212px;
    
        width: 130px;
    height: 222px;

    top: 0px;
    cursor: pointer;
}
    
 #carouselh3 .jscarousal-horizontal-back
{
	background-image: url({THEME}/img/left-magaz.png);
	background-repeat: no-repeat;
	background-position: left;
  left: 315px;
    z-index: 9999;
    width: 130px;
    height: 222px;
    top: -20px;
    cursor: pointer;
}   
</style>



<div id="main_content">

<div class="shop-info-box-akcii">

<h2>{title}</h2>
<div id="shop-full-price">[xfgiven_akcii-full-price] [xfvalue_akcii-full-price] [/xfgiven_akcii-full-price]</div> 
<div id="shop-sale-price">[xfgiven_akcii-sale-price] [xfvalue_akcii-sale-price] [/xfgiven_akcii-sale-price]</div>  
<div id="shop-start-finish-box">[xfgiven_akcii-start-finish] [xfvalue_akcii-start-finish] [/xfgiven_akcii-start-finish]</div>  
</div>

<div class="shop-info-box2">
	 <div id="shop-show-box"><img src="[xfvalue_image_url_akcii-kartinka]" width="404"></div>
	 <div id="shop-adress-box">[xfnotgiven_akcii-adress] Адреса нет[/xfnotgiven_akcii-adress][xfgiven_akcii-adress] [xfvalue_akcii-adress] [/xfgiven_akcii-adress]</div>
	 <div id="shop-tel-box">[xfgiven_akcii-telefon] [xfvalue_akcii-telefon] [/xfgiven_akcii-telefon]</div>  
	 <div id="shop-www-box">[xfnotgiven_akcii-sait] Сайта нет[/xfnotgiven_akcii-sait][xfgiven_akcii-sait][xfvalue_akcii-sait] [/xfgiven_akcii-sait]</div>
	 <div id="shop-open-box">[xfgiven_akcii-time] [xfvalue_akcii-time] [/xfgiven_akcii-time]</div>

</div>
<h1 class="shop-header">О СТУДИИ</h1>
<div id="shop-text-box">{full-story}</div>

<h1 class="shop-header">На карте</h1>
<div id="shop-map-box"><img src="[xfvalue_image_url_akcii-karta]"></div>

   







      
</div><!--main_content-->