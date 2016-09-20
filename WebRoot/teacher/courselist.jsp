<%@page import="com.mucCollege.model.Course"%>
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
    <title>我的课程列表</title>
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
    <fieldset>
  		<legend>添加新课程</legend>
  		<struts:form action="/teacher/teacourse_register">
  			<struts:select name="teacourse.course.courseid" label="课程" list="courselist" listKey="courseid" listValue="courseid+'.'+coursename"/>找不到你想要的课程？试试下方的申请课程吧
  			<struts:select name="teacourse.stuClass.classid" label="班级" list="stuClasslist" listKey="classid" listValue="classname"/>
  			<struts:textfield label="学年" name="teacourse.year" />
  			<struts:textfield label="学期" name="teacourse.term" />
  			<struts:textfield label="课程学分" name="teacourse.couscore" />
  			<struts:textfield label="课程学时" name="teacourse.coutime" />
  			<struts:submit value="注册课程" />
  		</struts:form>
  	</fieldset>
  	<fieldset>
  		<legend>申请课程</legend>
  		<p>如果你无法找到需要添加的课程，可能是因为从未开设过此类课程，或者申请的课程暂未通过审核。您可以在此申请开设课程，新开设的课程会进入审核状态，暂时不能在课程列表中选择，请耐心等待审核通过。</p>
  		<struts:form action="/teacher/teacourse_apply">
  			<struts:textfield label="课程名" name="teacourse.course.coursename" />
  			<struts:textarea label="课程描述" name="teacourse.course.detail"/>
  			<struts:select name="teacourse.stuClass.classid" label="班级" list="stuClasslist" listKey="classid" listValue="classname"/>
  			<struts:textfield label="学年" name="teacourse.year" />
  			<struts:textfield label="学期" name="teacourse.term" />
  			<struts:textfield label="课程学分" name="teacourse.couscore" />
  			<struts:textfield label="课程学时" name="teacourse.coutime" />
  			<struts:submit value="申请开设课程" />
  		</struts:form>
  	</fieldset>
  	<struts:property value="message"/>
  	<struts:iterator value="teacourselist">
  		<div class="col">
  			<div class="border">
  				<h3><struts:property value="course.coursename"/></h3>
  				<p><struts:property value="course.detail"/></p>
  				<p>任课班级：<struts:property value="stuClass.classname"/></p>
  				<p>任课教师：<struts:property value="user.username"/></p>
  				<p>课程学年:<struts:property value="year"/></p>
  				<p>课程学期:<struts:property value="term"/></p>
  				<p>课程学分:<struts:property value="couscore"/></p>
  				<p>课程学时:<struts:property value="coutime"/></p>
  				<struts:if test="state=='正常'">
  				<a href="teacher/teacourse_course?teacourse.teacourseid=<struts:property value="teacourseid"/>">进入课程</a>
  				</struts:if>
  				<struts:elseif test="state=='待审批'">
  				<p>待审批</p>
  				<p>课程正在等待审批，该阶段无法进入课程编辑界面，学生也无法选择该课程</p>
  				</struts:elseif>
  			</div>
  		</div>
  	</struts:iterator>
  </body>
</html>