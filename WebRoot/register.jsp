<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
  <s:property value="getMessage()"/>
    <fieldset>
  		<legend>注册</legend>
  		<s:form validate="true" action="user/user_register">
  			<s:textfield label="工号" name="user.usernum" />
  			<s:textfield label="密码" name="user.password" />
  			<s:textfield label="姓名" name="user.username" />
  			<s:textfield label="职称" name="user.position" />
  			<s:textfield label="简介" name="user.intro" />
  			<s:textfield label="邮箱" name="user.email" />
  			<s:textfield label="手机号" name="user.phonenum" />
  			<s:submit value="注册" />
  		</s:form>
  	</fieldset>
  </body>
</html>
