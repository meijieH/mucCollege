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
	<title>民大学院  学生测试</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/std_testing.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>		
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="page-center-left">右侧的</div>
		<div class="page-center-right">左侧的</div>
	</div>	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/std_testing.js"></script>
</body>
</html>