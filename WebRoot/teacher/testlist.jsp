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
    
    <title><struts:property value="teacourse.course.coursename"/>_<struts:property value="teacourse.year"/></title>
    <link >
    <style type="text/css">
    	.col{
    		width: 12em;
    		padding: 1em;
    		float: left;
    	}
    	.border{
    		border-style: solid;
    		border-width: thin;
    		padding:1.5em;
    	}
    </style>
  </head>
  <body>
    <struts:property value="message"/>
  	<struts:iterator value="testlist">
  		<div class="col">
  			<div class="border">
  				<h3><struts:property value="testname"/></h3>
  				<p>考试时间：<struts:property value="starttime"/></p>
  				<p>考试描述：<struts:property value="teststatement"/></p>
  				<a href="teacher/teatest_testpaper?testpaper.testpaperid=<struts:property value='testpaper.testpaperid' />">查看考试试卷</a>
  				<a href="teacher/testedit.html">编辑考试试卷</a>
  				<a href="#">修改考试信息</a>
  			</div>
  		</div>
  	</struts:iterator>
  </body>
</html>
