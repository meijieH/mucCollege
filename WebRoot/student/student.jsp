<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<title>民大学院 学习空间</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/home.css" rel="stylesheet">
</head>
<body>
	<%@include file="/common/topbar.jsp" %>
	<!-- 左侧栏 -->
	<div class="main-left">
		<div class="img">
			<img src="/mucCollege/images/face.jpg" alt="" width="80" height="80">
		</div>
		<div class="name">
			<i></i>张三
		</div>
		<div class="option-nav">
			<ul>
				<li>个人信息</li>
				<li>学习中心</li>
				<li>考试中心</li>
				<li>试卷分析</li>
			</ul>
		</div>
	</div>
	<div class="main-right">
		<iframe src="student/frame_mystudy.jsp" frameborder="0" width="100%" height="100%"></iframe>
		<!-- <ul>
				<fieldset class="col-md-2">
                 	<legend>minda</legend>
                 	<li><a href="#">修改资料</a></li>
				    <li><a href="#">查看消息</a></li>
				    <li><a href="#">密码修改</a></li>
				    <li><a href="#">注销</a></li>
                </fieldset>
				<fieldset class="col-md-2">
                 	<legend>学习中心</legend>
                 	<li><a href="student/study/mylesson.jsp">我的课程</a></li>
				    <li><a href="student/study/errorset.jsp">错题本</a></li>
				    <li><a href="student/study/workbook.jsp">模拟练习</a></li>
				    <li><a href="student/study/mycollection.jsp">我的收藏</a></li>
                </fieldset>
                <fieldset class="col-md-2">
                	<legend>考试中心</legend>
                	<li><a href="student/test/mytest.jsp">我的考试</a></li>
				    <li><a href="student/test/testrecord.jsp">考试记录</a></li>
                </fieldset>
			</ul> -->
	</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>
</html>