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
    <!-- 
    <s:iterator value="testpaper.blocks">
    	<h2><struts:property value="blockname"/></h2>
    	<p><struts:property value="blockdes"/></p>
	    <struts:iterator value="groups">
	    	<h3><struts:property value="groupname"/></h3>
	    	<p><struts:property value="groupdes"/></p>
	    	<struts:iterator value="testques">
		    	<h4><struts:property value="testquename"/></h4>
		    	<p><struts:property value="testquedes"/></p>
	   		</struts:iterator>
	    </struts:iterator>
    </s:iterator>
     -->
  </body>
</html>
