<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="struts" uri="/struts-tags"%> 
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>计算机基础 简单的课堂小练习</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/std_testing.css">
</head>

<body>	
	<header></header>

	<!-- 试卷信息-->
	<div class="testing-info">
	  <div class="testing-info-content">
	     <h1><struts:property value="testpaper.testpapername"/></h1>
	     <div class="testing-info-describe">
	        <span>总分：<struts:property value="testpaper.totalscore"/></span>
	        <span>问题总数：<struts:property value="testpaper.questionnum"/></span>
	        <span>总时长：<struts:property value="testpaper.totaltime"/></span>
	        <span>倒计时：00：22:33</span>
	        <!-- <a href="#" class="btn btn-default">全屏浏览</a> -->
	     </div> 
	  </div>
	</div>

	<!-- 试卷导航 -->
	<nav class="nav nav-testing">
	  <!--<div class="">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">简单的课堂小练习</a>
	    </div>
	    <ul class="navbar-nav">
	      <li class="active"><a href="#plate1">作文</a></li>
	      <li><a href="#plate2">快速阅读</a></li>
	      <li><a href="#plate3">听力</a></li>
	    </ul>
	  </div>
	    -->
	</nav>

	<!-- 版块区 -->
	<struts:iterator value="testpaper.blocks">
	<div class="plates">
		<!-- 大板块区 -->
		<div class="big-plates">
			<!-- 大板块示例 1 -->
			<div id="big-plate-1" class="big-plate"> 
			     <!-- 大板块标题    -->
		        <h2 class="big-plate-title">1、<struts:property value="blockname"/></h2>
		        <!-- 大板块描述 -->
		        <div class="big-plate-describe">
		        	<struts:property value="blockdes"/>
		        </div>
		        <!-- 小版块区 -->
		        <div class="small-plates">
		        	<struts:iterator value="groups">
		        	<!-- 小版块示例 -->
		        	<div id="small-plate-1" class="small-plate">
		        		<!-- 小版块标题 -->
		        		<h3 class="small-plate-title">(1)<struts:property value="groupname"/></h3>
		        		<!-- 小版块描述 -->
		        		<div class="small-plate-describe">
		        			<struts:property value="groupdes"/>
		        		</div>
		        		<!-- 题目区 -->
		        		<div class="question">
		        			<struts:iterator value="testques">
		        			<!-- 题目：问答题 -->
		        			<div class="question">
		        				<!-- 题目编号 -->
		        				<span class="question-number">1、<struts:property value="testquename"/></span>
		        				<!-- 题干内容 -->
		        				<div class="question-title">
		        					<struts:property value="testquedes"/>
		        				</div>
		        			    <!-- 答案区 -->
		        				<div class="answers">
		        					<textarea class="answer-textare" rows="5"  placeholder="在这里写答案"></textarea>
		        				</div>
		        			</div>
		        			</struts:iterator>
		        		</div>
		        	</div>
		        	</struts:iterator>
		        </div>
		    </div> 
		</div>
	</div>
	</struts:iterator>
	<!-- 尾端控制区 -->
	<div class="tail-control">
		<input type="button" class="btn btn-agree" value="提交"/>
	</div>
	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/std_testing.js"></script>
</body>
</html>