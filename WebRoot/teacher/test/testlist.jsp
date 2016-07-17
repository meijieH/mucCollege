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
	<title>考卷管理——老师</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
	<header>
	<h1>考卷管理</h1>
	<hr>
	</header>
<main class="container-fluid">
		<div class="rpw">
			<div class="col-md-6">
				<div class="panel panel-info">
			    	<div class="panel-heading">
		    			<h3 class="panel-title">考卷管理</h3>	
		    		</div>
		    		<div class="panel-body panel-body-table">
		    			<div class="table-responsive" style="overflow-x:hidden">
		    				<table class="table table-striped table-hover" id="dataTables-example">
								<span><a href="#">新建试卷</a></span>
									<div class="form-inline search-box">
			            				<input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="请输入考卷名进行查询">
			                			<button class="btn btn-info btn-sm" type="submit">搜  索</button> 
			        				</div>
		    					<thread>
		    						<tr>
		    							<th>考卷名</th>
		    							<th>创建时间</th>
		    							<th>应用</th>
		    							<th>修改</th>
		    							<th>删除</th>
		    						</tr>
		    					</thread>
		    					<tbody>
		    						<tr>
		    							<td><a href="#">第一章测验</a></td>
		    							<td>2016/05/22</td>
		    							<td><a href="#">应用</a></td>
		    							<td><a href="#">修改</a></td>
		    							<td><a href="#">删除</a></td>
									</tr>
		    					</tbody>
		    				</table>
		    			</div>
		    		</div>
		    	</div>
    		</div>
    	</div>
    </main>
</body>
</html>