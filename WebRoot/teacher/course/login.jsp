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
    <title>登陆界面</title>
    </head>
  
  <body>
  <struts:property value="getMessage()"/>
  	<fieldset>
  		<legend>登陆</legend>
  		<struts:form validate="true" method="post" action="/teacher/teacher_login">
  			<struts:textfield label="工号" name="user.usernum" />
  			<struts:textfield label="密码" name="user.password" />
  			<struts:submit value="登陆" />
  			<a href="teacher/register.jsp">注册</a>
  		</struts:form>
  	</fieldset>
  </body>
</html>
