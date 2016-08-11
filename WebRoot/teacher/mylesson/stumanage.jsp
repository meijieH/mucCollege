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
		<title>学生管理——老师</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="css/main.css">
	</head>
	<body>
		<header>
			<h1>计算机基础</h1>
			<hr>
		</header>
	<main class="container-fluid">
		<div class="rpw">
			<div class="col-md-6">
				<div class="panel panel-info">
			    	<div class="panel-heading">
		    			<h3 class="panel-title">学生管理</h3>	
		    		</div>
		    		<div class="panel-body panel-body-table">
		    			<div class="table-responsive" style="overflow-x:hidden">
		    				<table class="table table-striped table-hover" id="dataTables-example">
		    					<span>共25人
		    					<a href="#">  添加学生</a>
		    					<a href="#">  批量删除</a>
		    					</span>
		    					<div class="form-inline search-box">
			            			<input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="请输入学号/姓名/班级进行查找">
			                		<button class="btn btn-info btn-sm" type="submit">搜  索</button> 
			        			</div>
		    					<thread>
		    						<tr>
		    						<!-- 全选还没弄好 -->
		    							<th><input type="checkbox" value="全选" onclick="allSelect();">全选</th></th>
		    							<th>学号</th>
		    							<th>姓名</th>
		    							<th>班级</th>
		    							<th>删除</th>
		    						</tr>
		    					</thread>
		    					<tbody>
		    						<tr>
		    							<td><input type="checkbox"/>1</td>
		    							<td>14047001</td>
		    							<td>XXX</td>
		    							<td>14软件工程</td>
		    							<td>删除</td>
		    						</tr>
		    						<tr>
		    							<td><input type="checkbox"/>2</td>
		    							<td>14047002</td>
		    							<td>XXX</td>
		    							<td>14软件工程</td>
		    							<td>删除</td>
		    						</tr>
		    					</tbody>
		    				</table>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		</div>
	</main>
</html>
