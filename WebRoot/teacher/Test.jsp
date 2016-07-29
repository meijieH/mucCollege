<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.mucCollege.model.User" %>
<%@ taglib uri="/struts-tags" prefix="struts" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User teacher=(User)session.getAttribute("user");
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>teacher模块测试页面</title>
  </head>

  <body>
  	<struts:form action="teacher/teacher_register">
  		<fieldset>
  			<legend>注册</legend>
  			<label>工号</label><input name="teacher.teanum" type="text">
  			<label>教师姓名</label><input name="teacher.teaname" type="text">
  			<label>密码</label><input name="teacher.password" type="text">
  			<label>职称</label><input name="teacher.position" type="text">
  			<label>简介</label><input name="teacher.intro" type="text">
  			<label>邮箱</label><input name="teacher.email" type="email">
  			<label>手机号</label><input name="teacher.phonenum" type="text">
  			<input type="submit" value="注册">
  		</fieldset>
  	</struts:form>
  	<fieldset>
  		<legend>登陆</legend>
  		<struts:form action="teacher/teacher_login">
  			<struts:textfield label="工号" name="teacher.teanum" />
  			<struts:textfield label="密码" name="teacher.password" />
  			<struts:submit value="登陆" />
  		</struts:form>
  	</fieldset>
  	<div>
  		<fieldset>
  			<legend>目前登陆的用户</legend>
  			<%if(teacher==null){%>
  				<label>没有用户登陆</label>
  			<%}else{%>
	  			<label><%=teacher.getUsername()%></label>
	  			<label>数据库索引(id):<%=teacher.getUserid()%></label>
	  			<label>工号:<%=teacher.getUserid()%></label>
	  			<label>职称:<%=teacher.getPosition()%></label>
	  			<label>简介:<%=teacher.getIntro()%></label>
	  			<label>邮箱:<%=teacher.getEmail()%></label>
	  			<label>手机号:<%=teacher.getPhonenum()%></label>
	  			<button type="button" onclick="location='teacher/teacher_logout'">登出</button>	
	  		<%} %>
  		</fieldset>
	<form action="teacher/teacher_updata">
  		<fieldset>
  			<legend>修改信息</legend>
  			<label>密码</label><input name="teacher.password" type="text">
  			<label>职称</label><input name="teacher.position" type="text">
  			<label>简介</label><input name="teacher.intro" type="text">
  			<label>邮箱</label><input name="teacher.email" type="email">
  			<label>手机号</label><input name="teacher.phonenum" type="text">
  			<input type="submit" value="修改">
  		</fieldset>
  	</form>
  	</div>
  	<fieldset>
  		<legend>添加课程</legend>
  		<struts:form action="teacher/teacourse_add">
  			<struts:textfield label="课程名" name="course.coursename" />
  			<struts:textfield label="课程描述" name="course.detail" />
  			<struts:submit value="添加" />
  		</struts:form>
  	</fieldset>
  	<fieldset>
  		<struts:action name="teacher/teacourse_list"></struts:action>
  		<legend>该教师所开设的课程（该功能暂未调试成功）</legend>
  		<struts:iterator value="teacourseList">
			<p>课程名：</p><struts:property value="course.coursename" />
			<p>授课教师：</p><struts:property value="teacher.teaname" />
			<p>授课班级：null</p>
		</struts:iterator>
	</fieldset>
  </body>
</html>
