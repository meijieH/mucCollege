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
	<title>修改资料-教师</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<style>
	.edit-person-info{
	   margin-top:20px;
	}
	</style>
</head>
<body>
	<h1 class="content-title edit-person-info">个人资料</h1>
	<div class="default-form">
		<form action="">
			<ul>
				<li>
					<span class="left-span">*工号</span>
					<span class="right-span"><input type="text"></span>
				</li>
				<li>
					<span class="left-span">*邮箱</span>
					<span class="right-span"><input type="email"></span>
				</li>
                <li>
					<span class="left-span">*姓名</span>
					<span class="right-span"><input type="text"></span>
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
					<span class="left-span">院系</span>
					<span class="right-span"><input type="text"></span>
				</li>
				<li>
					<span class="left-span">职称</span>
					<span class="right-span"><input type="text"></span>
				</li>
				<li>
					<span class="left-span">性别</span>
					<span class="right-span"><input type="text"></span>
				</li>
				<li>
					<span class="left-span">个人电话</span>
					<span class="right-span"><input type="text"></span>
				</li>
				<li>
					<span class="left-span">简介</span>
					<span class="right-span"><input type="text"></span>
				</li>
				<li>
					<span class="left-span">&nbsp;</span>
					<span class="right-span"><input type="submit" value="确认修改" class="btn btn-default"><a href="" class="btn btn-link">已有账户？</a></span>
				</li>
			</ul>
		</form>
	</div>
	
</body>
</html>