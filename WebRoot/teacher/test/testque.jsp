<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>考题</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
题型:<s:property value="block.blockname"/><br>
	<s:iterator value="testqueList" status="status">
		<h4><s:property value="quesnum"/>.<s:property value="question.stem"/></h4>
		<s:if test="question.quetype.quetypeid==1">
			<s:property value="question.option1" />
			<br>
			<s:property value="question.option2" />
			<br>
			<s:property value="question.option3" />
			<br>
			<s:property value="question.option4" />

		</s:if>
		<br>
	</s:iterator>
	
</body>
</html>