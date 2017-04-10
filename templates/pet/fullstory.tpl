<style>
    .share42init{
        margin-top: 12px;
    }
    .author{
        height: 70px;
        margin-top: 25px;
    }
    .author img{
        float: left;
        display: block;
    }
    .author span{
        margin-left: 31px;
    display: block;
    float: left;
    margin-top: 23px;
    }
    
    img.fr-dii.fr-fil {
    float: left;
    margin: 5px 12px 5px 0;
    max-width: calc(100% - 5px);
}
 
</style>
<div id="main_content">
  

<script type="text/javascript" src="http://wikipet.by/share/share42.js"></script>


<article class="box story[fixed] fixed_story[/fixed] fullstory">

			[not-group=5]
		<ul class="story_icons ignore-select">
			<li class="fav_btn">
				[add-favorites]<span title="Добавить в закладки"><svg class="icon icon-fav"><use xlink:href="#icon-fav"></use></svg></span>[/add-favorites]
				[del-favorites]<span title="Убрать из закладок"><svg class="icon icon-star"><use xlink:href="#icon-star"></use></svg></span>[/del-favorites]
			</li>
			<li class="edit_btn">
				[edit]<i title="Редактировать">Редактировать</i>[/edit]
			</li>
		</ul>
		[/not-group]
		<div class="header_main"><h2>{title}</h2></div>
    <div class="share42init" data-zero-counter="0" data image="http://wikipet.by/share42/icons.png"></div>
		<!--<div class="time_posting">{date=d.m.Y}</div>-->
    
	[xfnotgiven_autor-name] <!--[/xfnotgiven_autor-name]
    
    
    <div class="author"><img src="[xfvalue_image_url_autor-foto]" alt="" style="border-radius:50%;"> <span>[xfgiven_autor-name] [xfvalue_autor-name] [/xfgiven_autor-name]</span></div>

    	[xfnotgiven_autor-name] -->[/xfnotgiven_autor-name]
    
		<div class="text">
			{full-story}
			[edit-date]<p class="editdate grey">Новость отредактировал: <b>{editor}</b> - {edit-date}<br>
			[edit-reason]Причина: {edit-reason}[/edit-reason]</p>[/edit-date]
		</div>
		{pages}
    <div class="clear"></div>
		<!--<div class="story_tools ignore-select">
			
			[rating]
				<div class="rate">
					[rating-type-1]<div class="rate_stars">{rating}</div>[/rating-type-1]
					[rating-type-2]
					<div class="rate_like">
					[rating-plus]
						<svg class="icon icon-love"><use xlink:href="#icon-love"></use></svg>
						{rating}
					[/rating-plus]
					</div>
					[/rating-type-2]
					[rating-type-3]
					<div class="rate_like-dislike">
						[rating-plus]<span title="Нравится"><svg class="icon icon-like"><use xlink:href="#icon-like"></use></svg></span>[/rating-plus]
						{rating}
						[rating-minus]<span title="Не нравится"><svg class="icon icon-dislike"><use xlink:href="#icon-dislike"></use></svg></span>[/rating-minus]
					</div>
					[/rating-type-3]
				</div>
			[/rating]
		</div>-->
		[fixed]<span class="fixed_label" title="Важная новость"></span>[/fixed]
	
	<!--<div class="meta ignore-select">
		<ul class="right">
			<li class="grey" title="Просмотров: {views}"><svg class="icon icon-views"><use xlink:href="#icon-views"></use></svg> {views}</li>
			<li title="Комментариев: {comments-num}">[com-link]<svg class="icon icon-coms"><use xlink:href="#icon-coms"></use></svg> {comments-num}[/com-link]</li>
		</ul>
		<ul class="left">
			<li class="story_date"><svg class="icon icon-info"><use xlink:href="#icon-info"></use></svg> {author}<span class="grey">  </span><time datetime="{date=Y-m-d}" class="grey">[day-news]{date=d.m.Y}[/day-news]</time></li>
		</ul>
	</div>-->

</article>

<div class="line" style="    margin-top: 50px;"></div>

   <h1 class="collage_header">ПОНРАВИЛОСЬ? ПОДЕЛИСЬ В СОЦ. СЕТЯХ</h1>
  <div class="share42init" data-zero-counter="0" data image="http://wikipet.by/share42/icons.png" style="margin: 0 auto;width: 300px;margin-bottom:30px;"></div>
<div class="line"></div>
    
    <div class="clear"></div>
    
  <style>
    div.main-page-box:nth-child(12),div.main-page-box:nth-child(18),div.main-page-box:nth-child(21){
        margin-right: 0px;
    }
 
         h1.red-full {
    text-transform: uppercase;
    font-family: BebasNeueRegular;
    font-size: 40px;
    color: #9d331b;
    margin-bottom: 16px;
margin-top: 35px;
    }
</style>


    <h1 class="red-full">ДРУГИЕ СТАТЬИ ПО ТЕМЕ</h1>
	{related-news}
  <!--{custom category="43" order="reads" limit="3" from="0" idexclude="56" template="fullstory-bottom1"}  -->
  
    <div class="clear"></div> 
	{pages}
    <div class="line"></div>
     <h1 class="red-full">новое на сайте</h1>
  {custom category="22,11,13,14,15,16,17,18,24,25,27,49,52,55" order="date" limit="6" from="0" idexclude="56,157,80,63" template="fullstory-bottom1"} 
       <div class="clear"></div> 
<div class="comments ignore-select">

	<div class="box">
		[comments]<h4 class="heading">Комментарии <span class="grey hnum">{comments-num}</span></h4>[/comments]
		<div class="comments">
		
			</div>
		<div class="com_list">
			{comments}
		</div>
	
	{navigation}
	<div class="box">
		{addcomments}
	</div>

	
	</div> 
</div>

 
      




</div>
