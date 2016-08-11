<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 为了测试自己写的，需要重写一个类似的页面做替换	 杨赟 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addlession.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <fieldset>
  		<legend>添加课程</legend>
  		<struts:form action="teacher/teacourse_add" validate="true">
  			<struts:textfield label="课程名" name="course.coursename" />
  			<struts:textfield label="课程描述" name="course.detail" />
  			<struts:submit value="添加" />
  		</struts:form>
  	</fieldset>
  </body>
</html>
