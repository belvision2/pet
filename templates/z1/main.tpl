<!DOCTYPE html>
<html lang="ru">
<head>
	{headers}
<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="{THEME}/css/styledefault.css"  type="text/css" media="all" />
	<link rel="stylesheet" href="{THEME}/css/style.css"  type="text/css" media="all" />
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script><![endif]-->
   <script src="{THEME}/js/script.js"></script>
</head>
<body>
<div class="wrapper">
<div class="wrapper-all">
[banner_header]{banner_header}[/banner_header]
{include file="modules/header.tpl"}
<div class="line"></div>
   <div id="content">
    {include file="modules/rightsidebar-geroi.tpl"}
		     {info}
		     {content}
      

	   </div><!-- content -->
	  </div><!-- wrapper-all -->
	  <div class="clear"></div>
{include file="modules/footer.tpl"}

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
</body>
</html>