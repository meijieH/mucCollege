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
	<title>考卷管理</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
	<h1>考卷管理</h1>
	<hr>

	<ul>
		<h3> </h3>
		<li>
			<a href="#">新建试卷</a>
		</li>	
		<li>
			<a href="#">第一章测验</a> 创建时间：2016/05/22 <a href="#">应用</a> <a href="#">修改</a> <a href="#">删除</a>
		</li>
		<li>
			<a href="#">第二章测验</a> 创建时间：2016/05/22 <a href="#">应用</a> <a href="#">修改</a> <a href="#">删除</a>
		</li>
		<li>
			<a href="#">第三章测验</a> 创建时间：2016/05/22 <a href="#">应用</a> <a href="#">修改</a> <a href="#">删除</a>
		</li>
	</ul>
</body>
</html>
