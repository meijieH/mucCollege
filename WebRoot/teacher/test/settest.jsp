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
	<title>民大学院 添加考试</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/tea_settest.css">
</head>

<body>
	<header>
		
	</header>
	<main>
	
	   <!--标题 -->
		<div>
			<div class="content-title settest-lesson-t"><i class="fa fa-thumb-tack" aria-hidden="true"></i>计算机基础 </div>
			<a href="teacher/test/testedit.jsp" target="_blank" role="button" class="btn btn-default manual-settest-btn">自行组卷</a>
		</div>
		
		
		
		<!--设置考试-->
		<div class=" settest-time">
		   <form>
		       <div class="start">
		          <span> 开始时间</span><input type="date"/><input type="time"/>
		       </div>
		       <div class="end">
		          <span> 结束时间</span><input type="date"/><input type="time"/>
		       </div>
		       <!--<div class="paper">
		          <div>+拖动试卷到此处</div>
		       </div>
		       <div class="apply">
		          <button type="submit" class="apply-btn">应用</button>
		       </div>-->
		   </form>
		</div>
	    
	    <!-- 搜索 -->
		<div class="search-box paper-search">
	    	<form action="" class="">
			    <input type="text" class="search-input" placeholder="请输入考卷名进行查询">
			    <button type="submit" class="btn btn-default">搜索</button>
			</form>
	    </div>
	    
		<!-- 试卷列表 -->
		<div class="paper-list">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>试卷名</th>
						<th>创建时间</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a>第一章测验</a></td>
						<td>2016/05/22 22:00</td>
					</tr>
				</tbody>
				<tfood>
					<tr>
						<td>总计28份</td>
					</tr>
				</tfood>
			</table>
		</div>
	</main>
</body>