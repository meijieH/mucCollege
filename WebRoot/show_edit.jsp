<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>编辑个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="shortcut icon" href="<%=basePath%>images/icon.png">
 </head> 
<body> 
	<main class="container">
	<div class="row">
		<div class="col-md-9 right_row9">
           <div class="left200  white" >
		<h3>修改用户信息</h3>
		<s:form action="user/user_updateUser" method="post" cssStyle="margin-left:20px;">
			<s:hidden name="user.userid"></s:hidden>
			<s:hidden name="user.usertype.usertypeid"></s:hidden>
			<s:textfield name="user.username" label="用户名" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.usernum" label="学工号" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.password" label="密码" cssClass="str_input"  cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.phonenum" label="电话" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.email" label="邮箱" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.dept" label="地址" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:submit cssClass="btn btn-green" value="保存"></s:submit>
		</s:form>
	</div>

</body>
</html>
