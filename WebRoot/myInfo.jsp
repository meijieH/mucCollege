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
</head>
<body>
   <h1 class="content-title">账户信息</h1>
	<div class="col-md-9 right_row9">
		<s:form action="user/user_showEdit" method="post">
			<table class="table de-table" style="rules:none;">
				<tr>
					<td>用户名</td>
					<td><c:out value="${user.username}"></c:out>
					</td>
				</tr>
				<tr>
					<td>用户密码</td>
					<td><c:out value="${user.password}"></c:out>
					</td>
				</tr>
				<tr>
					<td>联系电话</td>
					<td><c:out value="${user.phonenum}"></c:out>
					</td>
				</tr>
				<tr>
					<td>真实姓名</td>
					<td><c:out value="${user.reaname}"></c:out>
					</td>
				</tr>
				<tr>
					<td>用户性别</td>
					<td><c:out value="${user.gender}"></c:out>
					</td>
				</tr>

				<tr>
					<td>用户邮箱</td>
					<td><c:out value="${user.email}"></c:out>
					</td>
				</tr>
				<tr>
					<td>用户学院</td>
					<td>
					<br></td>
				</tr>
			</table>
			<button style="margin-left:500px;" type="submit"
				class="btn btn-success btn-de">修改信息</button>
		</s:form>
	</div>
</body>
</html>
