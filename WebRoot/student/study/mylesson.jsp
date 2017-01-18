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
	<title>我的课程</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/mylesson.css">
</head>
<body class="container">
	<header>
		<h1>minda的课程（包含已经学过的和正在学的）</h1>

		<div class="row">
			<div class="btn-group col-md-2">
			  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    全部 <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu">
			    <li><a href="#">已结束</a></li>
			    <li><a href="#">正在进行</a></li>
			  </ul>
			</div>

			<form class="col-md-5">
			  <div class="form-group">
			    <input type="text" class="form-control col-md-8" id="keyword" placeholder="课程关键字">
			    <button type="submit" class="btn btn-default">搜索</button>
			  </div>  
			</form>
		</div>

	</header>
	<main>
		<div class="col-sm-6 col-md-2 ml-ls-b">
		    <a href="student/study/lessondetail.jsp">
		      <div class="thumbnail">
			      <img src="images/jisuanjijichu.jpg" alt="计算机基础"  width="180px;" height="125px;"/>
			      <div class="caption ml-ls-b-info">
			        <h5>计算机基础(课程名)</h5>
			        	<p>授课教师：</p>
			        	<p>马老师</p>
			        <p><a href="student/study/lessondetail.jsp" class="btn btn-primary" role="button">进入</a></p>
			      </div>
		      </div>
		    </a>
	   </div>
	  
		
	</main>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>
</html>