<%@ page contentType="text/html; charset=utf8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<header>
	<div class="nav-logo">
		<a href="user/user_backIndex"><i class="fa fa-magic"></i><span class="logo-text">民大学院</span></a>
	</div>
	<div class="nav-theme">
		<ul>
			<li onclick="window.open('user/user_backIndex')"><i class="fa fa-hand-o-right" aria-hidden="true"></i>首页</li>
			<li onclick="window.open('teacher/teacher_showAllQuestion','_blank')"><i class="fa fa-rocket" aria-hidden="true"></i>题库</li>
			<li onclick="window.open('test/test_getAllTestpapers','_blank')" ><i class="fa fa-cloud" aria-hidden="true"></i>试卷库</li>
		</ul>
	</div>
	<div class="user-info">
		<span class="user-study">我的收藏</span>
		<span class="user-message"><a href="user/user_showInfo">私信</a></span>
		<span class="user-name">${user.username}</span>
		<span class="user-face" onmouseover="visible('user-setting')" onmouseout="displayNone('user-setting')">
			<img src="/mucCollege/images/face.jpg"/>
		</span>
		<div id="user-setting" class="display-none user-setting">
			<ul>
				<li><a href="user/user_toUpdatePassword">修改密码</a></li>
				<li><a href="#">退出</a></li>
			</ul>
		</div>
	</div>
</header>
<script src="/mucCollege/js/main.js"></script>