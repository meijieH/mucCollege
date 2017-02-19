<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>账户信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
<link rel="shortcut icon" href="<%=basePath%>images/icon.png">
</head>
<body>
	<header>
	</header>
	<main class="container">
	<div class="row">
		<div class="col-md-3 myinfo white">
		</div>
		<div class="col-md-9 right_row9" style="height:590px;">
			<br> <br>
			<h3>我的账户</h3>
			<br> <br>
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
						<td><c:out value="${user.dept}"></c:out>
						</td>
					</tr>
				</table>
				<button style="margin-left:500px;" type="submit"
					class="btn btn-success btn-de">修改信息</button>
			</s:form>
		</div>
	</div>
	</main>
    <footer>
	</footer>

</body>
</html>
