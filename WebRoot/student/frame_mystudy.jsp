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
	<title>民大学院 学习空间 学习中心</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/std_frame_mystudy.css" rel="stylesheet">
</head>
<body>
	<div>
		<div id="mylesson">

			<!-- 分类 -->
			<!-- <div class="btn-group">
			  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    全部 <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu">
			    <li><a href="#">已结束</a></li>
			    <li><a href="#">正在进行</a></li>
			  </ul>
			</div> -->

			
			<!-- 课程列表 -->
			<div class="lesson-lists">
                <ul>
                	<li class="lesson-box">
                		<a href="student/study/lessondetail.jsp" target="_blank">
					      <div class="lesson-content">
						      <img src="images/jisuanjijichu.jpg" alt="计算机基础"/>
						      <div class="caption ml-ls-b-info">
						        <div class="lesson-name">计算机基础(课程名)</div>
						      </div>
					      </div>
					    </a>
                	</li>
                </ul>
			</div>

		    
		</div>
	</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>
</html>