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
	<title>民大学院 账户信息 </title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/myinfo.css">
	<link rel="shortcut icon" href="images/logo.png">
</head>
<body>
   		<h1 class="htitle">账户信息</h1>
		<s:form action="user/user_showEdit" method="post">
			<table class="myinfo myinfo-show" style="rules:none;">
				<tr>
					<td class="label">真实姓名</td>
					<td><c:out value="${user.reaname}">（李明）</c:out></td>
				</tr>
				<tr>
					<td class="label">用户名</td>
					<td><c:out value="${user.username}"></c:out></td>
				</tr>
				<tr>
					<td class="label">密码</td>
					<td>***</td>
				</tr>
				<tr>
					<td class="label">性别</td>
					<td><c:out value="${user.gender}">（女）</c:out></td>
				</tr>
				<tr>
					<td class="label">电话</td>
					<td><c:out value="${user.phonenum}"></c:out></td>
				</tr>
				<tr>
					<td class="label">邮箱</td>
					<td><c:out value="${user.email}"></c:out></td>
				</tr>
				<tr>
					<td class="label">学院</td>
					<td>（信息工程学院）</td>
				</tr>
			</table>
			<button type="submit" class="btn btn-info btn-edit">修改信息</button>
		</s:form>
</body>
</html>
