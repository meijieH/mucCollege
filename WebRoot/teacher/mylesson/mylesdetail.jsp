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
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>计算机基础 任课详情</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/com_lessondetail.css">
	<link rel="stylesheet" type="text/css" href="css/tea_mylesdetail.css">
</head>
<body>
	<%@include file="/common/topbar.jsp"%>
	<div class="lesson-detail">
		<div class="lesson-detail-left">
			<div class="lesson-info">课程信息</div>
			<h1 class="lesson-name">计算机基础</h1>
			<div class="ld-box">
				<h2 class="ld-title">课件(别点击)</h2>
				<ul class="ld-lists">
					<li>
						<a href="student/study/waredetail.jsp" target="_blank">
							<p>指令的机器级表示 .ppt(不完善)&nbsp;<time>2016/1/2</time></p>   
						</a>
					</li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div class="ld-box">
				<h2 class="ld-title">作业(别点击)</h2>
				<ul class="ld-lists">
					<li>
						<a href="student/study/waredetail.jsp" target="_blank">
							<p>JMS大作业 (不完善)&nbsp;<time>2016/1/2</time></p>   
						</a>
					</li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div class="ld-box">
				<h2 class="ld-title">考试(点击！)</h2>
				<ul class="ld-lists">
					<li>
						<a href="" target="_blank">
							<p>简单的课堂小练习&nbsp;<time>2016/1/2 23:00</time></p>   
						</a>
					</li>
					<!-- 添加试卷 -->
					<li>
						<a href="teacher/test/settest.jsp" class="add-paper" target="_blank">+ 添加考试</a>
					</li>
					<li></li>
				</ul>
			</div>
		</div>
    </div>

	<!-- <div class = "lesson-introduce">
		<h2>课程简介</h2>
		<p>blablabla</p>
		<h3>基本信息</h3>
		<div>
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
		<a href="teacher/test/testlist.jsp">考卷管理（只有这个可以点击）</a>
		<a href="#">作业</a>
		<a href="#">考试分析</a>
		<a href="#">题库</a>
	</div>			 -->
</body>
</html>