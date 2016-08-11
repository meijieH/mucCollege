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
	<title>课程信息-计算机基础</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/lessondetail.css">
</head>
<body class="container">
	<h1>计算机基础</h1>
	
	<div class="row lsdt-main">
	    <div class="col-md-9">
			<div>
				<h2>学习记录</h2>
				<p>主人：minda</p>
				<p>在线学习时长：10h</p>
			</div>
			 <div class="lsdt-main-new">
			    <div class="col-md-6">
					<h2>最新课件(10条：上传时间)</h2>
					<ul>
						<li>
						   <a href="student/study/waredetail.jsp">
								<p>指令的机器级表示 .ppt&nbsp;<time>2016/1/2</time></p>   
							</a>
						</li>
						<li>
						   <a href="student/study/waredetail.jsp">
								<p>指令的机器级表示 .ppt&nbsp;<time>2016/1/2</time></p>   
							</a>
						</li>
						<li>
						   <a href="student/study/waredetail.jsp">
								<p>指令的机器级表示 .ppt&nbsp;<time>2016/1/2</time></p>   
							</a>
						</li>
						<li>
						   <a href="#">
								>>>查看更多
							</a>
						</li>
					</ul>
				</div>
				<div class="col-md-6">
					<h2>最新作业(10条：截至时间)</h2>
					<ul>
						<li>
						   <a href="student/study/waredetail.jsp">
								<p>JMS大作业 &nbsp;<time>2016/1/2</time></p>   
							</a>
						</li>
						<li>
						   <a href="#">
								>>>查看更多
							</a>
						</li>
					</ul>
				</div>
			 </div>  	
		</div>
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
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>
</html>