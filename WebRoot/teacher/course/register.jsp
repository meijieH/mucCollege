<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 为了测试自己写的，需要重写一个类似的页面做替换	 杨赟 -->
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>注册页面</title>
  </head>
  
  <body>
  <struts:property value="getMessage()"/>
    <fieldset>
  		<legend>注册</legend>
  		<struts:form validate="true" action="/teacher/teacher_register">
  			<struts:textfield label="工号" name="user.usernum" />
  			<struts:textfield label="密码" name="user.password" />
  			<struts:textfield label="姓名" name="user.username" />
  			<struts:textfield label="职称" name="user.position" />
  			<struts:textfield label="简介" name="user.intro" />
  			<struts:textfield label="邮箱" name="user.email" />
  			<struts:textfield label="手机号" name="user.phonenum" />
  			<struts:submit value="注册" />
  		</struts:form>
  	</fieldset>
  </body>
</html>
