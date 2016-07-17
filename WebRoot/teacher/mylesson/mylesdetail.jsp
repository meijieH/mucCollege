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
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<h1>计算机基础</h1>
	<hr>
<main>
	<div>
		<a href="teacher/test/testlist.jsp" role="button" class="btn btn-primary">考卷管理</a>
		<a href="teacher/test/settest.jsp" role="button" class="btn btn-primary">设置考试</a>
		<a href="teacher/mylesson/waremanage.jsp" role="button" class="btn btn-primary">课件管理</a>
		<!-- 课件管理需要：搜索框、课件名、上传栏、删除栏、 -->
		<a href="teacher/mylesson/stumanage.jsp" role="button" class="btn btn-primary">学生管理</a>
		<a href="teacher/mylesson/homework.jsp" role="button" class="btn btn-primary">作业</a>
		<!-- 作业应该有设置作业（选题咯）、作业评分、查看学生作业情况 -->
		<a href="teacher/test/analytest.jsp" role="button" class="btn btn-primary">考试分析</a>
		<a href="teacher/mylesson/quest.jsp" role="button" class="btn btn-primary">查看题库</a>
	</div>
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
		
	</div>	
	</main>		
</body>
</html>