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
	<link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<%@include file="/common/topbar.jsp"%>
	<div class="lesson-detail">
		<div class="lesson-detail-left">
			<div class="lesson-info">课程信息</div>
			<h1 class="lesson-name">计算机基础</h1>
			<div class="ld-box">
				<h2 class="ld-title">课件</h2>
				<ul class="ld-lists">
					<li>
						<a href="student/study/waredetail.jsp" target="_blank">
							<p>指令的机器级表示 .ppt&nbsp;<time>2016/1/2</time></p>   
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
							<p>JMS大作业&nbsp;<time>2016/1/2</time></p>   
						</a>
					</li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div class="ld-box">
				<h2 class="ld-title">考试</h2>
				<ul class="ld-lists">
					<li>
						<a href="" target="_blank">
							<p>简单的课堂小练习&nbsp;<time>2016/1/2 23:00</time></p>   
						</a>
					</li>
					<!-- 添加试卷 -->
					<li>
						<a data-toggle="modal" data-target="#addTest" class="add-paper">+ 添加考试</a>
					</li>
					<li></li>
				</ul>
			</div>
		</div>
    </div>
    <div class="modal" id="addTest" tabindex="-1" role="dialog" >
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	          <div class="modal-top">
	        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          </div>
		      <div class="addtest-ways">
			      <div onclick="">
			      	<div>从我的试卷中选择</div>
			      	<i class="fa fa-pencil" aria-hidden="true"></i>
			      	<p>从教师“我的试卷”中抽选题目</p>
			      </div>
			      <div>
			      	<div>半自动组卷</div>
			      	<i class="fa fa-print" aria-hidden="true"></i>
			      	<p>由手工添加题目的方式和选择导入题库题目的方式共同组成</p>
			      </div>
			      <div onclick="window.open('','_blank');">
			      	<div>自动组卷</div>
			      	<i class="fa fa-cog" aria-hidden="true"></i>
			      	<p>机器随机组卷，可以设置试卷难度比、题型、考察知识范围等属性</p>
			      </div>
		      </div>
		      <div>
		      </div class="settest-time">
		      234
		     </div>
	    </div>
	  </div>
	</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>