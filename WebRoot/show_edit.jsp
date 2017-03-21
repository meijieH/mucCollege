<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<title>民大学院 编辑个人信息</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/myinfo.css">
 </head> 
<body>
	<h1 class="htitle">修改用户信息</h1>
	<s:form action="user/user_updateUser" method="post">
		<s:hidden name="user.userid"></s:hidden>
		<s:hidden name="user.usertype.usertypeid"></s:hidden>
		<s:hidden name="user.user.password"></s:hidden>
		<table class="myinfo my-info-edit" style="rules:none;">
				<tr>
					<td class="label">真实姓名</td>
					<td><c:out value="${user.reaname}">（李明）</c:out></td>
				</tr>
				<tr>
					<td class="label">用户名</td>
					<td><s:textfield name="user.username"></s:textfield></td>
				</tr>
				<tr>
					<td class="label">学工号</td>
					<td><s:textfield name="user.usernum"></s:textfield></td>
				</tr>
				<tr>
					<td class="label">性别</td>
					<td><c:out value="${user.gender}">（女）</c:out></td>
				</tr>
				<tr>
					<td class="label">电话</td>
					<td><s:textfield name="user.phonenum"></s:textfield></td>
				</tr>
				<tr>
					<td class="label">邮箱</td>
					<td><s:textfield name="user.email"></s:textfield></td>
				</tr>
				<tr>
					<td class="label">学院</td>
					<td><s:textfield name="user.dept"></s:textfield></td>
				</tr>
			</table>
		<s:submit cssClass="btn btn-info" value="保存"></s:submit>
	</s:form>
</body>
</html>
