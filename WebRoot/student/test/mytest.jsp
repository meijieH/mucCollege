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
	<title>我的考试</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/mytest.css">
</head>
<body class="container">
	<h1>minda的考试</h1>
	
	 <div class="panel-group">
	    <h3>最近一周内的考试</h3>
	    <div class="panel panel-primary">
	      <div class="panel-body panel-table">
	         <table class="table table-hover">
					<th>试卷</th>
					<th>课程</th>
					<th>开始时间</th>
					<th>结束时间</th>
					<th>类型</th>
					<th>参与人数</th>
					<th>操作</th>
					<tr>
						<td>四六级模考</td>
						<td>大学英语</td>
						<td>2016-4-20 12:00</td>
						<td>2016-4-20 14:00</td>
						<td>指定参加</td>
						<td>12</td>
						<td><a href="student/test/testing.jsp" class="btn btn-success">去考试</a></td>
					</tr>
					<tr>
						<td>文档提交</td>
						<td>大学英语</td>
						<td>2016-4-20 12:00</td>
						<td>2016-4-20 14:00</td>
						<td>指定参加</td>
						<td>23</td>
						<td><a href="#">申请缓考</a></td>
					</tr>
				</table>
	      </div>
	    </div>
	    <h3>一周以后的考试</h3>
	    <div class="panel panel-default">
	      <div class="panel-body panel-table">
	          <table class="table table-hover">
					<th>试卷</th>
					<th>课程</th>
					<th>开始时间</th>
					<th>结束时间</th>
					<th>类型</th>
					<th>参与人数</th>
					<th>操作</th>
					<tr>
						<td>四六级模考</td>
						<td>大学英语</td>
						<td>2016-4-20 12:00</td>
						<td>2016-4-20 14:00</td>
						<td>指定参加</td>
						<td>34</td>
						<td><a href="#" class="btn btn-default">申请缓考</a></td>
					</tr>
					<tr>
						<td>文档提交</td>
						<td>大学英语</td>
						<td>2016-4-20 12:00</td>
						<td>2016-4-20 14:00</td>
						<td>指定参加</td>
						<td>24</td>
						<td><a href="#">申请缓考</a></td>
					</tr>
				</table>
	      </div>
	    </div>
	  </div>
	
	
	<div>
		<span>第1页/共1页  总记录数：6</span>
		<a href="#">首页</a>
		<a href="#">上一页</a>
		<span>1</span>
		<a href="#">下一页</a>
		<a href="#">尾页</a>
		<span>转到
            <input type="text" value="1">页
		</span>
		<button>Go</button>
	</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>