<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>查找课程</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<header>
		<s:form action="teacher/teacher_getCoursesByName" method="post">
		<input class="search-field form-control input-sm" title="关键词" name="coursename" placeholder="输入关键词...">
						<button class="btn btn-info btn-sm" type="submit">搜 索</button>
						</s:form>
	</header>
	<main>
		<ul class="class-list">
		<s:iterator value="couList" status="status">
			<li>
					<div>
						<img src="images/jisuanjijichu.jpg" alt="计算机基础" width="160px" height="160px;">
						<p><s:property value="coursename"/></p>
						<div>
							<p>课程描述：<s:property value="detail"/></p>
							<p>所属大类：<s:property value="subject.subjectname"/></p>
							<p>所属学院：<s:property value="dept.deptname"/></p>
							<p>课程状态:<s:property value="state"/></p>
						</div>
						<a href="teacher/teacher_toAddCourse?course.courseid=<s:property value='courseid'/>"><button>添加为我的课程</button></a>
				    </div>
			</li>
			</s:iterator>
		</ul>
			<a href="#">
					<h3>添加课程</h3>
			</a>
			<a href="#">
					<h3>删除课程</h3>
			</a>
			
	</main>
</body>
</html>