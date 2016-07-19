<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>我的课程</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<header>
		<h1>我的课程</h1>
		<div class="row">
		<form class="col-md-3">
			<label for="lesson">选择课程：</label>
		    <select name="lesson" id="lesson">
		    	<option value="#">高等数学</option>
		    	<option value="#">大学英语</option>
		    	<option value="#">线性代数</option>
		    </select>
		</form>
		<form class="col-md-4">
				<input type="text" class="form-control col-md-2" title="关键词" name="keyWords" placeholder="请输入学号/姓名/班级进行查找">
			    <button class="btn btn-default" type="submit">搜  索</button> 
		</form>
		<form class="col-md-2">
			<a href="teacher/mylesson/addlesson.jsp" class="btn btn-primary" role="button">  添加课程</a>
		</form>
		</div>
	</header>
	<main>
	<div>
		<ul class="class-list">
			<struts:iterator value="teacourseList">
			<li>
				<a href="teacher/mylesson/mylesdetail.jsp">
						<img src="images/jisuanjijichu.jpg" alt="<struts:property value="course.coursename" />" width="160px" height="160px;">
						<p><struts:property value="course.coursename" /></p>
						<p>授课班级：null</p>
						<p>开课时间：数据库尚未设计该字段</p>
				</a>
				<a href="teacher/mylesson/mylesdetail.jsp" role="button" class="btn btn-success">进入课程</a>
				<button type="button" class="btn btn-danger">删除课程</button>
			</li>
			</struts:iterator>
		</ul>
	</div>
	</main>
</body>
</html>