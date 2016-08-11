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
	<title>设置考试——老师</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
	<header>
		<h1>计算机基础</h1>
		<hr>
	</header>
	<main>
		<div class="row">
			<form class="col-md-2">
				<label for="lesson">选择课程：</label>
	  			<select name="lesson" id="lesson">
	   	 			<option value="#">高等数学</option>
	    			<option value="#">大学英语</option>
	    			<option value="#">线性代数</option>
	    		</select>
			
			</form>
			<form class="col-md-3">
				<label>
				开始时间：
					<select name="time" id="time">
			    	<option value="#">2016/07/16 09:00</option>
			    	<option value="#">2016/05/06 19:00</option>
			    	<option value="#">2016/07/16 21:00</option>
			   		</select>
				</label>
			</span>
			<span>
				<label>
				结束时间：
					<select name="time" id="time">
			    	<option value="#">2016/07/16 11:00</option>
			    	<option value="#">2016/05/06 21:00</option>
			    	<option value="#">2016/07/16 23:00</option>
			   		</select>
				</label>
			</span>
			</form>
			<form class="col-md-1">
			<span><a href="#" role="button" class="btn btn-primary">自行组卷</a></span>
			</form>
			</div>
			<div class="col-md-6">
			<div class="table-responsive" style="overflow-x:hidden">
				<table class="table table-striped table-hover  col-md-6" id="dataTables-example">
					<div class="form-inline search-box  col-md-6">
       					<input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="请输入考卷名进行查询">
           				<button class="btn btn-info btn-sm" type="submit">搜  索</button> 
    				</div>
					<thread>
						<tr>
							<th>考卷名</th>
							<th>创建时间</th>
							<th>应用</th>
						</tr>
					</thread>
					<tbody>
						<tr>
							<td><a href="#">第一章测验</a></td>
							<td>2016/05/22</td>
							<td><a href="#">应用</a></td>
						</tr>
						<tr>
							<td><a href="#">第二章测验</a></td>
							<td>2016/07/16</td>
							<td><a href="#">应用</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</main>
</body>