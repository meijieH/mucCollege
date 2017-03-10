<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testpaper.jsp' starting page</title>
  </head>
  
  <body>
  	<h1><s:property value="testpaper.testpapername"/></h1>
  	
  	<p>问题数量：<s:property value="testpaper.questionnum"/> 总分：<s:property value="testpaper.totalscore"/> 总时间：<s:property value="testpaper.totaltime"/></p>
   <s:iterator value="blockList" status="status">
   <s:property value="blockid"/>
		<a href="test/test_showTestQuestion?block.blockid=<s:property value='blockid'/>"><s:property value="blockname"/></a>
	</s:iterator>
  </body>
</html>
		