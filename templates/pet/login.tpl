[not-group=5]

	<li class="dropdown">
		<a data-toggle="dropdown" class="btn-border" href="{profile-link}" >
			<b class="over">Выйти</b><span title="Новые сообщения - {new-pm}" class="pm_num" style="display:none;">{new-pm}</span>
		</a>
		<div class="dropdown-form dot logged">
			<div class="login_pane__info">
				<div class="avatar">
					<a href="{profile-link}"><span class="cover2" style="background: url({foto}) no-repeat;background-position: center center;">{login}</span></a>
				</div>
			<div class="name-avatar">
			{login} <br />
			{group}
			</div>
				
			</div>
			<div class="clear"></div>
			<ul class="login_pane__menu">
			[admin-link]<li><div class="login_pane__admin"><a href="{admin-link}" target="_blank">Админпанель</a></div></li>[/admin-link]
				<li style="background: url({THEME}/img/icons.png) 15px 16px no-repeat;"><a href="{pm-link}">Сообщения <span class="right grey"><b>{new-pm}</b> из {all-pm}</span></a></li>
				<li style="background: url({THEME}/img/icons.png) 15px -32px no-repeat;"><a href="{favorites-link}">Закладки <span class="right grey"><b>{favorite-count}</b></span></a></li>
				<li style="background: url({THEME}/img/icons.png) 15px -82px no-repeat;"><a href="{newposts-link}">Непрочитанные новости</a></li>
				<li style="background: url({THEME}/img/icons.png) 15px -129px no-repeat;"><a href="{addnews-link}">Добавить новость</a></li>
				<li style="background: url({THEME}/img/icons.png) 15px -176px no-repeat;"><a href="{logout-link}">Выход</a></li>
				
			</ul>
		
		</div>
	</li>

[/not-group]
[group=5]



	<li class="login-li">
	<a href="#" class="popup__toggle" ><b class="login-b">Войти</b></a>

</li>
[/group]

[group=5]

<div class="popup__overlay">
    <div class="popup">
        <a href="#" class="popup__close"></a>
       <div class="logo" style="margin:0 auto;float: none;"></div>
	   <div class="clear"></div>
<form  method="post">
        <div class="popup-form__row">
        
            <input placeholder="{login-method}" type="text" name="login_name" id="login_name" autocomplete="false" />
        </div>
        <div class="popup-form__row">
           
            <input placeholder="Пароль" type="password" name="login_password" id="login_password" />
        </div>
        <input type="button" onclick="submit();" value="ВОЙТИ" />
		<input name="login" type="hidden" id="login" value="submit">
		 <span class="noakk">Нет аккаунта?<a class="right" href="{registration-link}">Зарегистрироваться</a></span>
		 		<div class="soc_links">
					[facebook]<a href="{facebook_url}" target="_blank" class="soc_fb">
					<img src="{THEME}/img/Fb.svg" alt="" style="height: 50px;margin-top: 7px;">
				</a>[/facebook]
				[vk]<a href="{vk_url}" target="_blank" class="soc_vk">
					<img src="{THEME}/img/Vk.svg" alt="" style="width: 50px;margin-top: 7px;">
				</a>[/vk]
				[yandex]<a href="{yandex_url}" target="_blank" class="soc_ya">
					<svg class="icon icon-ya"><use xlink:href="#icon-ya"/></svg>
				</a>[/yandex]
			
				[google]<a href="{google_url}" target="_blank" class="soc_gp">
					<svg class="icon icon-gp"><use xlink:href="#icon-gp"/></svg>
				</a>[/google]
				[odnoklassniki]<a href="{odnoklassniki_url}" target="_blank" class="soc_od">
					<img src="{THEME}/img/Ok.svg" alt="" style="width: 50px;margin-top: 7px;">
				</a>[/odnoklassniki]
				[mailru]<a href="{mailru_url}" target="_blank" class="soc_mail">
					<svg class="icon icon-mail"><use xlink:href="#icon-mail"/></svg>
				</a>[/mailru]
			</div>
			</form>
    </div>
</div>

[/group]