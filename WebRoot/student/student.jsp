<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
	<title>民大学院 学习空间</title>
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
				<li class="active"><i class="fa fa-university"></i>我的课程</li>
				<li onclick="window.open('student/student_showMyError','_blank')" class="link"><i class="fa fa-list-alt"></i>我的错题</li>
				<li onclick="window.open('student/student_showMyError','_blank')" class="link"><i class="fa fa-folder-open" aria-hidden="true"></i>我的收藏</li>
				<li onclick="window.open('student/analysis/stdanalysis.jsp','_blank')" class="link"><i class="fa fa-area-chart" aria-hidden="true"></i>学习分析</li>
				<li onclick="changeRight('user/user_showMessage')"><i class="fa fa-comments-o" aria-hidden="true"></i>我的消息</li>
				<li onclick="changeRight('user/user_showInfo')"><i class="fa fa-user"></i>个人信息</li>
			</ul>
		</div>
		<div>
				<!-- merge时请保留下方的后台链接，可以放在其他页面里,方法名称和链接对应即可 -->
				<li><a href="user/user_showInfo">查看信息</a></li>
                <li><a href="user/user_showEdit">修改资料</a></li>
			    <li><a href="user/user_showMessage">查看消息</a></li>
			    <li><a href="student/student_showMyCourse">我的课程</a></li>
			    <li><a href="student/student_showMyError">我的错题集，暂时未分类，之后再说</a></li>
			    <!-- merge保留结束by候梅洁 -->
		</div>
	</div>
	<div class="main-right">
		<iframe src="student/frame_mystudy.jsp" frameborder="0" width="100%" height="100%"></iframe>
		
	</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
<script src="js/main.js"></script>
</body>
</html>
<!-- <ul>
	<fieldset class="col-md-2">
              	<legend><s:property value="user.username"/></legend>
              	<li><a href="user/user_showInfo">查看信息</a></li>
              	<li><a href="user/user_showEdit">修改资料</a></li>
	    <li><a href="user/user_showMessage">查看消息</a></li>
	    <li><a href="user/user_exit">注销</a></li>
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