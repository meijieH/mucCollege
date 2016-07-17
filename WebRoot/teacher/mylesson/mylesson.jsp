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
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<header>
		<h1>我的课程</h1>
		<div class="row">
		<form class="col-md-3">
			<label for="lesson">选择课程：</label>
		    <select name="lesson" id="lesson">
		    	<option value="#">高等数学</option>
		    	<option value="#">大学英语</option>
		    	<option value="#">线性代数</option>
		    </select>
		</form>
		<form class="col-md-4">
				<input type="text" class="form-control col-md-2" title="关键词" name="keyWords" placeholder="请输入学号/姓名/班级进行查找">
			    <button class="btn btn-default" type="submit">搜  索</button> 
		</form>
		<form class="col-md-2">
			<a href="#" class="btn btn-primary" role="button">  添加课程</a>
		</form>
		</div>
	</header>
	<main>
	<div>
		<ul class="class-list">
			<li>
				<a href="teacher/mylesson/mylesdetail.jsp">
						<img src="images/jisuanjijichu.jpg" alt="计算机基础" width="160px" height="160px;">
						<p>计算机基础</p>
						<p>授课班级：14软件工程班</p>
						<p>开课时间：2015-05-07</p>
					
				   
				</a>
				<a href="teacher/mylesson/mylesdetail.jsp" role="button" class="btn btn-success">进入课程</a>
				<button type="button" class="btn btn-danger">删除课程</button>
			</li>
			
			</ul>
	</div>
	</main>
</body>
</html>