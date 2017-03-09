<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>民大学院 海量资源</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
</head>
<body>
	<%@include file="/common/topbar.jsp"%>
	<main>
	<div class="main-img">
		<div class="login-reg-box">
			<div>
					<form id="login-form" action="user/user_login" method="post" class="default-form">
					<br>
					<ul>
						<li><span class="left-span"><label for="usernum">学工号</label>
						</span> <span class="right-span"> <input type="text" class=""
								id="usernum" name="user.usernum" placeholder="请输入学工号" autofocus>
						</span>
						</li>
						<li><span class="left-span"><label for="password">密码</label>
						</span> <span class="right-span"> <input type="password" class=""
								id="password" name="user.password" placeholder="请输入登录密码">
						</span>
						</li>
						<li><span class="left-span">&nbsp;</span> <span
							class="right-span select-identity"> <span><input
									type="radio" id="type" name="user.usertype.usertypeid"
									value="3" checked>学生</span> <span><input type="radio"
									id="type" name="user.usertype.usertypeid" value="2">教师</span>
								<span><input type="radio" id="type"
									name="user.usertype.usertypeid" value="1">管理员</span> </span>
						</li>
						<li><span class="left-span"></span> <span class="right-span">
								<div class="checkbox">
									<label><input type="checkbox">记住密码</label> <a href="#"
										class="forget-pwd">忘记密码？</a>
								</div> </span>
						</li>
						<li>
							<div class="login-reg-option">
								<button type="submit" class="btn-login" onclick="checkLogin();">
									登录</button>
								<button type="button" class=""
									onclick="window.open('register.jsp','_blank');">注册</button>
							</div>
						</li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	<div class="recommend-lesson">
		<h2 class="recommend-lesson-t">推荐课程</h2>
		<div class="lessons">
			<ul>
				<!-- 请在这里显示10个      dyf -->
				<li class="lesson-hover-box">
				<a href="#" title="C++语言程序设计基础" target="_blank">
						<div class="lesson-img">
							<img src="/mucCollege/images/lesson.jpg" title="C++语言程序设计基础"
								alt="C++语言程序设计基础" />
						</div>
						<div class="lesson-info">
							<h3 class="lesson-name">C++语言程序设计基础</h3>
							<span class="lesson-time fl">一个月前开课</span>
							<span class="lesson-people fr">45人参与</span>
						</div> </a>
				</li>
				<li class="lesson-hover-box"><a href="#"
					title="面向对象软件开发实践之基本技能训练发实践之基本技能训练" target="_blank">
						<div class="lesson-img">
							<img src="/mucCollege/images/lesson.jpg"
								alt="面向对象软件开发实践之基本技能训练发实践之基本技能训练" />
						</div>
						<div class="lesson-info">
							<h3 class="lesson-name">面向对象软件开发实践之基本技能训练发实践之基本技能训练</h3>
							<span class="lesson-time fl">一个月前开课</span> <span
								class="lesson-people fr">45人参与</span>
						</div> </a>
				</li>
			</ul>
		</div>
	</div>

	<br />
	<a href="student/student.jsp" class="btn btn-default">去学生页面（临时按钮）</a> <a
		href="teacher/teacher.jsp" class="btn btn-default">去教师页面（临时按钮）</a> </main>

	<footer class="index-footer"> 民大学院团队 </footer>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function checkLogin() {
			var lg_form = document.getElementById("login-form");
			//..做一些数据校验..
			lg_form.submit();
		}
	</script>
</body>
</html>