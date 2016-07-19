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
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
  		<legend>登陆</legend>
  		<struts:form action="teacher/teacher_register" validate="true">
  			<struts:textfield label="工号" name="teacher.teanum" />
  			<struts:textfield label="密码" name="teacher.password" />
  			<struts:textfield label="姓名" name="teacher.teaname" />
  			<struts:textfield label="职称" name="teacher.position" />
  			<struts:textfield label="简介" name="teacher.intro" />
  			<struts:textfield label="邮箱" name="teacher.email" />
  			<struts:textfield label="手机号" name="teacher.phonenum" />
  			<struts:submit value="注册" />
  		</struts:form>
  	</fieldset>
  </body>
</html>
