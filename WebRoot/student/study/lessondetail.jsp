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
	<title>民大学院 我的课程 计算机基础</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/com_lessondetail.css">
    <link rel="stylesheet" href="css/std_lessondetail.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<%@include file="/common/topbar.jsp" %>
	<div class="lesson-detail">
		<div class="lesson-detail-left">
			<h1 class="lesson-name">计算机基础</h1>
			<div class="ld-box">
				<h2 class="ld-title">课件</h2>
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
				<h2 class="ld-title">作业</h2>
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
				<h2 class="ld-title">考试</h2>
				<ul class="ld-lists">
					<li onclick="window.open('student/test/testing.jsp','_blank');">
						<div class="test-name" title="简单的课堂小练习（要考的试卷一）">简单的课堂小练习（要考的试卷一）</div>
						<div class="test-time">2016/1/2 23:00</div>
						<div class="test-option enter">进入考试</div>
					</li>
					<li onclick="window.open('student/test/testing.jsp','_blank');">
						<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷A（考完的试卷一：没改完）</div>
						<div class="test-time">2016/1/2 23:00</div>
						<div class="test-option wait"">待批改</div>
					</li>
					<li onclick="window.open('student/test/testing.jsp','_blank');">
						<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷A（考完的试卷一：没改完）</div>
						<div class="test-time">2016/1/2 23:00</div>
						<div class="test-option wait"">待批改</div>
					</li>
					<li onclick="window.open('student/test/testresult.jsp','_blank');">
						<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷B（考完的试卷二）</div>
						<div class="test-time">2016/1/2 23:00</div>
						<div class="test-option done">查看试卷</div>
					</li>
					<li onclick="window.open('student/test/testresult.jsp','_blank');">
						<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷B（考完的试卷二）</div>
						<div class="test-time">2016/1/2 23:00</div>
						<div class="test-option done">查看试卷</div>
					</li>
					<li onclick="window.open('student/test/testing.jsp','_blank');">
						<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷C（没有考）</div>
						<div class="test-time">2016/1/2 23:00</div>
						<div class="test-option overtime">已过期</div>
					</li>
					<li onclick="window.open('student/test/testing.jsp','_blank');">
						<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷C（没有考）</div>
						<div class="test-time">2016/1/2 23:00</div>
						<div class="test-option overtime">已过期</div>
					</li>
					<li onclick="window.open('student/test/testing.jsp','_blank');">
						<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷C（没有考）</div>
						<div class="test-time">2016/1/2 23:00</div>
						<div class="test-option overtime">已过期</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
		
<!-- 		<div class="row lsdt-main">
			<div class="col-md-3">
					<div class="col-md-10">
						<h3 >课程简介</h3>
						<p>计算机科学是一门新兴学科</p>
						<h3>基本信息</h3>
						<div>
								<p>下属学院：信息工程学院</p>
								<p>专业分类：电子信息（或无）</p>
								<p>任课教师：马老师</p>
								<p>课程助教：XXX</p>
								<p>开课时间：2015-7-9</p>
						</div>
						<div>
						   <h3 >教师简介</h3>
					       <p>XXX教授XXX马老师任教XXXXXXXXXXXXXXXXXXXX</p>
					        <h3>课程目标</h3>
					        <p>暂无</p>
					        <h3>课程提纲</h3>
					        <div>
					        	<h4>1.第一章</h4>
					        	  <h5>&nbsp;1.1XXXX</h5>
					                <h6>&nbsp;&nbsp;1.1.2xxx</h6>
					              <h5>&nbsp;1.2XXXXX</h5>
					              <h5>&nbsp;1.3XXXX</h5>
					                <h6>&nbsp;&nbsp;1.3.1xxx</h6>
					              <h5>&nbsp;1.4XXXXX</h5>
					           <h4>2.第二章（以此类推）</h4>
					        </div>
						</div>
					</div>
				</div>
		</div>
	</div> -->
	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>
</html>