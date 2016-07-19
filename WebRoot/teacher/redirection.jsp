<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 为了测试而写的，该页面有显示信息并重定向的功能	 杨赟 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'redirection.jsp' starting page</title>
    <meta http-equiv="refresh" content="3;url=teacher/index.jsp">

  </head>
  
  <body>
    <struts:property value="message" />,3秒后将跳转到主页
  </body>
</html>
