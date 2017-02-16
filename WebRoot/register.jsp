<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
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
    <title>民大学院 海量资源</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/register.css" rel="stylesheet">
</head>
<body>
	<header>
		
	</header>
	 <main>
	 	<div class="reg-form">
	 		<form action="">
	 			<ul>
	 				<li>
	 					<span class="left-span">*选择角色</span>
	 					<span class="right-span select-identity">
	 						<span><input type="radio" name="identity">学生</span>
	 					    <span><input type="radio" name="identity">教师</span>
	 					</span>
	 				</li>
	 				<li>
	 					<span class="left-span">*学工号</span>
	 					<span class="right-span"><input type="text"></span>
	 				</li>
	 				<li>
	 					<span class="left-span">*邮箱</span>
	 					<span class="right-span"><input type="email"></span>
	 				</li>

	 				<li>
	 					<span class="left-span">*密码</span>
	 					<span class="right-span"><input type="password"></span>
	 				</li>
	 				<li>
	 					<span class="left-span">*确认密码</span>
	 					<span class="right-span"><input type="password"></span>
	 				</li>
	 				<li>
	 					<span class="left-span">&nbsp;</span>
	 					<span class="right-span"><input type="submit" value="确认注册" class="btn btn-default"></span>
	 				</li>
	 			</ul>
	 		</form>
	 	</div>
	</main>
	<!-- <footer>
		民大学院团队
	</footer> -->
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>