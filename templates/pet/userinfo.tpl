    <div id="content">
 
           <div id="main_content">
<div class="stat">
<div class="tab-content">
<style>
li.active{
color:#1f1e1e;
}
     /* .xfields td:first-child{
                
                display:none;*/
            }
    input[type="text"], input[type="password"], input[type="text"], .form-group input[type="password"], input[type="email"]
    {

    padding-left: 10px;
}
    
    td.xprofile{
            padding-bottom: 5px;
    }

</style>
<div class="tab-pane active" id="user1">
	<div class="userinfo-menu">
		<ul class="userinfo-li">
			<li><a href="#user1" data-toggle="tab" style="color:red">[group=5]Пользователь [/group]{usertitle}</a></li>
			[not-logged]<li><a href="#user2" data-toggle="tab">Редактировать</a></li>[/not-logged]
			[not-group=5]<li>{pm}</li>[/not-group]
		</ul>
	</div>
	<div class="liniya-userinfo"></div>
	<div class="clear"></div>
	
		<div class="userinfo-avatar">
		<ul class="userinfo-li">
			<li><a href="#"><span class="cover" style="background-image: url({foto});"></span></a></li>
			<li>
			 <ul class="userinfo-li2">
			  <li>{fullname}[not-fullname]Неизвестно[/not-fullname]&nbsp;[online]<span style="color: #70bb39;">Онлайн</span>[/online][offline]Офлайн[/offline]</li>
			  <li>{land}[not-land]Неизвестно[/not-land]</li>
			 </ul>
			</li>
		
		</ul>
	</div>
	<div class="liniya-userinfo"></div>

	<div class="clear"></div>
	
		<div class="userinfo-namber">
		<ul class="userinfo-li">
			<li>{news-num}</li>
			<li>{comm-num}</li>
			<li>{rate}</li>
		</ul>
	</div>
		<div class="userinfo-namber2">
		<ul class="userinfo-li">
			<li>Кол-во публикаций</li>
			<li>Кол-во комментариев</li>
			<li>Рейтинг на сайте</li>
		</ul>
	</div>
	<div class="liniya-userinfo"></div>
	<div class="clear"></div>
	
	<div class="userinfo-info">
		<div class="reg">
			<span>ЗАРЕГЕСТРИРОВАН</span><br />
			<span>{registration}</span>
			</div>
			<div class="liniya-userinfo"></div>
			<div class="akt">
			<span>ПОСЛЕДНЯЯ АКТИВНОСТЬ</span><br />
			<span>{lastdate}</span>
			</div>
			<div class="liniya-userinfo"></div>
			<div class="grupp">
			<span>ГРУППА</span><br />
			<span>{status}</span>
		</div>
		<div class="liniya-userinfo"></div>
	<div class="grupp">
		<span>ВИД ИЛИ ПОРОДА ПИТОМЦА</span><br />
			<span>[xfgiven_moi-zivotnie][xfvalue_moi-zivotnie][/xfgiven_moi-zivotnie]</span>
		</div>
        <div class="grupp">
		<span>ИМЯ ПИТОМЦА</span><br />
			<span>[xfgiven_name-pitomec][xfvalue_name-pitomec][/xfgiven_name-pitomec]</span>
		</div>
	
	
	</div>

	<div class="clear"></div>
	</div>
		[not-logged] <!---------- редактирование ------------------------------------------------------------------------------->

<div class="tab-pane" id="user2">
			
				<div class="userinfo-menu">
		<ul class="userinfo-li">
			<li><a href="#user1" data-toggle="tab" >[group=5]Пользователь [/group]{usertitle}</a></li>
			[not-logged]<li><a href="#user2" data-toggle="tab" style="color:red">Редактировать</a></li>[/not-logged]
			[not-group=5]<li>{pm}</li>[/not-group]
		</ul>
	</div>
	<div class="liniya-userinfo"></div>
	<div class="clear"></div>
			<div class="userinfo-avatar">
		<ul class="userinfo-li">
			<li><a href="#"><span class="cover" style="background-image: url({foto});"><div style="background: url(http://wikipet.by/templates/pet/img/newimage.png) no-repeat;    height: 160px;
    width: 160px;"><input type="file" name="image" id="image" style="opacity: 0;
    height: 160px;
    width: 160px;
    border-radius: 50%;


    "></div></span></a>
			
			<div class="checkbox"><input type="checkbox" name="del_foto" id="del_foto" value="yes" /> <label for="del_foto">Удалить изображение</label></div>
			</li>
			
			<li>
			 <ul class="userinfo-li2">
			  <li>{fullname}[not-fullname]Неизвестно[/not-fullname]&nbsp;[online]<span style="color: #70bb39;">Онлайн</span>[/online][offline]Офлайн[/offline]</li>
			  <li>{land}[not-land]Неизвестно[/not-land]</li>
			 </ul>
			</li>
		
		</ul>
	</div>		
			
			
			
			
				<!-- Настройки пользователя -->
				<div id="options">
					<div class="addform">
						<ul class="ui-form">
							<li class="form-group">
								<label for="fullname">Имя</label>
								<input type="text" name="fullname" id="fullname" value="{fullname}" class="wide">
							</li>
							<div class="liniya-userinfo"></div>
							<li class="form-group">
								<label for="email">Ваш e-mail</label>
								<input type="email" name="email" id="email" value="{editmail}" class="wide" required>
						
							</li>
							<div class="liniya-userinfo"></div>
							<li class="form-group">
								<label for="land">Место проживания</label>
					
			<input type="text" name="land" id="land" value="{land}" class="wide">
	
							</li>
							<div class="liniya-userinfo"></div>
							<li class="form-group">
								<label>Часовой пояс</label>
								{timezones}
							</li>
							<div class="liniya-userinfo"></div>
							<li class="form-group form-sep"></li>
							<li class="form-group">
								<label for="altpass">Старый пароль</label>
								<input type="password" name="altpass" id="altpass" class="wide">
							</li>
							<div class="liniya-userinfo"></div>
							<li class="form-group">
								<label for="password1">Новый пароль</label>
								<input type="password" name="password1" id="password1" class="wide">
							</li>
							<div class="liniya-userinfo"></div>
							<li class="form-group">
								<label for="password2">Повторите новый пароль</label>
								<input type="password" name="password2" id="password2" class="wide">
							</li>
							<div class="liniya-userinfo"></div>
							<li class="form-group">
								<label for="info">О себе</label>
								<textarea name="info" id="info" rows="5" class="wide">{editinfo}</textarea>
								</li>
							<div class="liniya-userinfo"></div>
							
							<li class="form-group">
								<label for="signature">Подпись</label>
								<textarea name="signature" id="signature" rows="3" class="wide">{editsignature}</textarea>
							</li>
							<li class="form-group form-sep"></li>
							<li class="form-group">
								<label for="signature">Список игнорируемых пользователей:</label>
								{ignore-list}
							</li>
							<li class="form-group form-sep"></li>
							[group=1,2,3]
							<li class="form-group">
								<label for="allowed_ip">Блокировка по IP</label>
								<textarea placeholder="Примеры: 192.48.25.71 or 129.42.*.*" name="allowed_ip" id="allowed_ip" rows="5" class="field wide">{allowed-ip}</textarea>
							</li>
							[/group]
							<li class="form-group">
                                <label for="signature">Мои животные:</label>
								<table class="xfields">
								{xfields}
								</table>
							</li>
							<li class="form-group">
								<div class="checkbox">{twofactor-auth}</div>
							</li>
							<li class="form-group">
								<div class="checkbox">{news-subscribe}</div>
							</li>
							<li class="form-group">
								<div class="checkbox">{comments-reply-subscribe}</div>
							</li>
							<li class="form-group">
								<div class="checkbox">{unsubscribe}</div>
							</li>
						
					
						</ul>
						<div class="form_submit">
							<button class="btn btn-big" name="submit" type="submit"><b>Сохранить</b></button>
							<input name="submit" type="hidden" id="submit" value="submit">
						</div>
					</div>
				</div>
				<!-- / Настройки пользователя -->
			</div>
			[/not-logged]
	</div>
</div></div></div>