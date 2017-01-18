<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>民大学院 后台管理 添加学院选项</title>
    
  </head>
  
  <body>
    <title>民大学院 后台管理 添加学院选项</title>
  	<form action="admin/admin_addDept" method="post">
  		 <input type="text" name="dept.deptname" placeholder="请输入学院名称">
  		 <button type="submit">提交</button>
  	</form>
  </body>
</html>
