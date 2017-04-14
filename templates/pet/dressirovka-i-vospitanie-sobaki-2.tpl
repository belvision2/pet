
<style>
/*<!--второе меню -->*/
        .menu-dress2{
        height: 100px;
            margin-top: 15px;
    }
    .item-dress2{
      width: 403px;
        border: 1px solid #9d331b;
        float: left;
        height: 98px;
        font-size: 24px;
        font-family: BebasNeueRegular;
        padding-left: 32px;
      padding-right: 32px;
        color: #9d331b;  
    }
    
.item-dress2:last-child{
    margin-left: 12px;
    background: url({theme}/img/dog.png) 382px 18px no-repeat;
    }
    .item-dress2:first-child{
    background: url({theme}/img/dog.png) 25px 18px no-repeat;
    }
    
     .item-dress2:first-child span{
    margin-top: 26px;
    display: block;
    margin-left: 77px;
    }
    
  .item-dress2:last-child span{
      margin-top: 26px;
    display: block;
    margin-right: 77px;
    }
   /* <!-контент-->*/
            .content-dress{
            margin-top: 45px;
                width: 952px;
    }
    .col-dress{
      width: 466px;
        float: left;
            margin-right: 15px;
    }
    
       .col-dress-right{
      width: 466px;
        float: left;  
    }
       .col2-dress{
      width: 466px;
        float: left;
    }
    .content-big{
    width: 470px;
    background: #9d331b;
    height: 263px;
    margin-bottom: 14px;
        float: left;
    }
    
    .big_title {
    background: url({theme}/img/two_column_article_header_bg.png) no-repeat;
    width: 466px;
    padding-top: 166px;
    height: 87px;
    background-position: bottom;
    margin-bottom: 8px;
    z-index: 99999;
    position: relative;
}
    .big_title_row1 {
    font-family: BebasNeueRegular;
    font-size: 36px;
    letter-spacing: 0;
    display: block;
    padding-top: 8px;
    padding-left: 16px;
    overflow: hidden;
    height: 36px;
    line-height: 36px;
    word-wrap: normal;
        color: #fff;
}
    
    .big_title_row2 {
    opacity: 0.8;
    color: #fff;
    font-family: BebasNeueRegular;
    font-size: 24px;
    letter-spacing: 0;
    display: block;
    padding-top: 4px;
    padding-left: 16px;
    line-height: 36px;
    word-wrap: normal;
        text-transform: uppercase;
}
    
    .dress_title_container {
    border: 1px solid #e1e1e1;
    width: 468px;
    height: 123px;
    margin-bottom: 14px;
 
}
    
    .dress_title_container h2 {
    font-family: BebasNeueRegular;
    font-size: 24.07px;
    display: block;
    padding: 21px 10px 10px 19px;
    color: #4c4c4c;
    /* border: 1px solid red; */
    height: 41px;
    overflow: hidden;
    word-wrap: normal;
}
    
    .dress_title_container_date {
    padding: 0 19px;
    opacity: 0.46;
    font-size: 0.874117em;
    font-family: OpenSans;
}
</style>
<!- слайдер меню ------------------------------------------------------------------->
<style>
  .top-slider-menu div{
        
        display:inline-block
    }
    
    #carouselh5 .jscarousal-horizontal-forward
{
	background-image: url({THEME}/img/arr-index.png);
	background-repeat: no-repeat;
	background-position: right;
 width: 72px;
    height: 39px;
    top: -3px;
    cursor: pointer;
    position: absolute;
    right: 7px;
}
    
     #carouselh5 .jscarousal-horizontal-back
{
display:none;
}
    
     #carouselh5
{
	width: 952px;
	height: 27px;
	float: left;
    padding-top: 0px;
    padding-left: 0px;
    padding-bottom: 41px;
}
    
  #carouselh5  .jscarousal-contents-horizontal {
    width: 952px;
    height: 95px;
    float: left;
    position: relative;
    overflow: hidden;
}
    
 #carouselh5 div >div {
    display: inline-block;
    margin-right: 59px;
     height: 53px;
      padding-left: 66px;
}

    
    #carouselh5 a {
    color: #4d4d4d;
    text-decoration: none;
    font-family: BebasNeueRegular;
    font-size: 24px;
        text-transform: uppercase;
        padding-top: 10px;
    display: block;
}
    

    #sob{
    background: url({THEME}/img/menu-z.png) left 0px no-repeat;
        margin-left: -64px;
    }
    #cat{
       background: url({THEME}/img/menu-z.png) -184px 0px no-repeat;  
    }
    #ptic{
       background: url({THEME}/img/menu-z.png) -362px 0px no-repeat;  
    }
    #aqua{
        background: url({THEME}/img/menu-z.png) -545px 0px no-repeat; 
    }
    #terrar{
       background: url({THEME}/img/menu-z.png) -779px 0px no-repeat;  
         margin-right: 15px;
    }
    
    .visible{
      
        background: url({THEME}/img/active-menu.png) 0px 44px no-repeat;
      
    }
    .content-dress > a:nth-child(3) > div:nth-child(1) {margin-right:0;}
    .content-dress > a:nth-child(6) > div:nth-child(1) {margin-right:0;}
    .content-dress > a:nth-child(9) > div:nth-child(1) {margin-right:0;}
    
   .content-dress .main-page-box {
	width: 305px;
	float: left;
	margin-right: 17px;
	margin-bottom: 17px;
}
</style>
  <style>.navigation, .hide-cotegory {
   display: none;
}
</style>
    <div style="margin:0 auto;width:952px;">
        
        <div id="carouselh5">

 <div id="sob" ><a href="#">Собаки</a></div>
 <div id="cat"><a href="#">Коты</a></div>
 <div id="ptic"><a href="#">Птицы</a></div>
 <div id="aqua"><a href="#">Аквариумные</a></div>
 <div id="terrar"><a href="#">Террариумные</a></div>
 <div id="sob" ><a href="#">Собаки</a></div>
 <div id="cat"><a href="#">Коты</a></div>
 <div id="ptic"><a href="#">Птицы</a></div>
 <div id="aqua"><a href="#">Аквариумные</a></div>
 <div id="terrar"><a href="#">Террариумные</a></div>

                  
</div>
        
        </div>


<div class="clear"></div>
<div class="content-dress">
  {custom category="42" order="reads" limit="3" from="0"  template="main/index-collag-art"}
    {custom category="42" order="reads" limit="3" from="3"  template="main/index-collag-art"}
    {custom category="42" order="reads" limit="3" from="4"  template="main/index-collag-art"}

   
</div>
	

			
