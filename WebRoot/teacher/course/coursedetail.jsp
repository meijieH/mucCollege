<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>课程详情</title>
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<h1>计算机基础</h1>
	<hr>

	<div class = "lesson-introduce">
		<h2>课程简介</h2>
		<p>blablabla</p>
		<h3>基本信息</h3>
		<div>
			<img src="images/jisuanjijichu.jpg" alt="计算机基础">
			<p>
				<span>院系：信息工程学院</span>
			</p>
			<p>
				<span>专业：电子信息（或无等）</span>
			</p>
			<p>
				<span>开课时间：2015-7-9</span>
			</p>
			<p>
				<span>课时：56课时</span>
			</p>
			<p>
				<span>学分：1</span>
			</p>
		</div>
		<h3>课程大纲</h3>
		<p>
        	1.第一章
        	  1.1XXXX
               1.1.2xxx
              1.2XXXXX
            2.第二章(依次类推)
        </p>
		<a href="#">课件管理</a>
		<a href="#">学生管理</a>
		<a href="#">作业</a>
		<a href="teacher/test/test.jsp">考试</a>
		<a href="#">题库</a>
	</div>			
</body>
</html>