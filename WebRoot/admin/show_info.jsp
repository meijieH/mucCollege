<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>民大学院 后台管理 当前管理员信息</title>
    
	

  </head>
  
  <body>
    <h1>管理员 我的信息</h1>
    <a href="admin/admin_showEdit">修改我的信息</a>
    <c:out value="${admin.username}"></c:out>
  </body>
</html>
