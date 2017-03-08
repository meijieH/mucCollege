<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>主页</title>
  </head>
  <body>
  彩奕写的。
  您已登陆，欢迎您<struts:property value="#session.user.username"/><br>
  <a href="teacher/teacher_logout">登出</a>
  <a href="teacher/teacourse_list">我的课程</a>
  </body>
</html>