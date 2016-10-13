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
    <title><struts:property value="teacourse.course.coursename"/></title>
  </head>
  <body>
     <fieldset>
  		<legend><struts:property value="teacourse.course.coursename"/></legend>
  			<p><struts:property value="teacourse.course.detail"/></p>
  			<p>任课班级：<struts:property value="teacourse.stuClass.classname"/></p>
  			<p>任课教师：<struts:property value="teacourse.user.username"/></p>
  			<p>课程学年:<struts:property value="teacourse.year"/></p>
  			<p>课程学期:<struts:property value="teacourse.term"/></p>
 			<p>课程学分:<struts:property value="teacourse.couscore"/></p>
 			<p>课程学时:<struts:property value="teacourse.coutime"/></p>
 			<a href="#">添加学生</a>
 			<a href="teacher/teatest_list?teacourse.teacourseid=<struts:property value="teacourse.teacourseid"/>">查看考试</a>
  	</fieldset>
  </body>
</html>