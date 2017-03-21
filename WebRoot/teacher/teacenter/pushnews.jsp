<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="struts" uri="/struts-tags"%> 
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 发布课程通告</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/news.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div  class="page-center-right">
			<div class="htitle"><i class="fa fa-calendar-o" aria-hidden="true"></i>往期课程通告</div>
			<div class="content-describe" >
				<ul class="oldnews">
					<li><span class="date">16-12-23</span><span  class="time">22:30</span>下周二以前把所有的作业都交齐。</li>
					<li><span class="date">16-03-08</span><span  class="time">02:30</span>第三周由于校园运动会，停课一周。</li>
				</ul>
				<div class="viewmore">
					<a class="clr-linkblue">>>>查看更多</a>
				</div>
			</div>
		</div>
		<div  class="page-center-left">
			<div class="htitle"><i class="fa fa-bullhorn" aria-hidden="true"></i>发布课程通告</div>
			<form action="user/user_register" method="post" class="default-form">
	 			<ul>
	 				<li>
	 					<span class="left-span"><div class="htitle">标题</div></span>
	 					<span class="right-span">
	 						<input type="text"/>
	 					</span>
	 				</li>
	 				<li>
	 					<span class="left-span"><div class="htitle">内容</div></span>
	 					<span class="right-span">
	 						<textarea class="news-content"></textarea>
	 					</span>
	 				</li>
	 				<li>
	 					<span class="left-span">&nbsp;</span>
	 					<span class="right-span"><input type="submit" value="确认发布" class="btn btn-agree"></span>
	 				</li>
	 			</ul>
	 		</form>
		</div>
	</div>	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
