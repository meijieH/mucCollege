<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>民大学院 后台管理 登录</title>
  </head>
  
  <body>
  	<h1>民大学院 后台管理员 登录界面</h1>
    <form action="admin/admin_login" method="post">
    	用户名：<input type="text" name="admin.username">
    	密码：<input type="text" name="admin.password">
    	<button type="submit">登陆</button>
   	</form>
</body>
</html>