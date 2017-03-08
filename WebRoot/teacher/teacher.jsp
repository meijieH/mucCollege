<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 教学空间</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<%@include file="/common/topbar.jsp" %>
	<!-- 左侧栏 -->
	<div class="main-left">
		<div class="img">
			<img src="/mucCollege/images/face.jpg" alt="" width="80" height="80">
		</div>
		<div class="name">
			<c:out value="${user.username}"></c:out>
		</div>
		<div class="option-nav">
			<ul>
				<li onclick="changeRight('teacher/frame_myteacenter.jsp')" class="active"><i class="fa fa-university"></i>教学平台</li>
				<li onclick="changeRight('user/user_showInfo')"><i class="fa fa-user"></i>个人信息</li>
				<li onclick="changeRight('user/user_showMessage')"><i class="fa fa-comments-o" aria-hidden="true"></i>我的消息</li>
				<li onclick="window.open('teacher/teacher_toAddQuestion','_blank')" class="link"><i class="fa fa-pencil" aria-hidden="true"></i>手工添题</li>
				<li onclick="window.open('teacher/teacher_showMyQuestions','_blank')" class="link"><i class="fa fa-folder-open" aria-hidden="true"></i>我的题库</li>
				<li class="link"><i class="fa fa-file-text-o"></i>我的试卷<li>
			</ul>
		</div>
	</div>
	<!-- 右侧 -->

	<div class="main-right">
	    <iframe id="tea-main-right-frame"src="teacher/frame_myteacenter.jsp" frameborder="0" width="100%" height="100%"></iframe>
	</div>
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript">
	function changeRight(src){
	   var rightFrame=document.getElementById('tea-main-right-frame');
	   console.log(src);
	   rightFrame.src=src;
	}
	
	/*左侧导航栏*/
	$('.tea-option-nav ul li').click(function(){
		if((!$(this).hasClass('active'))&&(!$(this).hasClass('link'))){
			$(this).addClass('active');
			$(this).siblings().removeClass('active');
		}
	});
	
	</script>
</body>
</html>