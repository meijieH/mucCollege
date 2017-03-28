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
	<title>民大学院 手工添题</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/userimage.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="content-describe">
			<div class="userimage">
				<img src="images/userimage.png"/>
			</div>
			<div class="user-label">
				<div class="label label1">能力度<div class="arrow arrow1"></div></div>
				<div class="label label2">软件工程<div class="arrow arrow2"></div></div>
				<div class="label label3">偏好数据库<div class="arrow  arrow3"></div></div>
				<div class="label label7">刷题王<div class="arrow arrow-left arrow7"></div></div>
				<div class="label label4">爱练习<div class="arrow arrow-left arrow4"></div></div>
				<div class="label label5">大三<div class="arrow arrow-left arrow5"></div></div>
				<div class="label label6">女<div class="arrow  arrow-left arrow6"></div></div>
				<div class="label label8">拖延症<div class="arrow arrow8"></div></div>
				
				
			</div>
		</div>
	</div>	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>


