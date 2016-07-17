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
	<title>学员历史成绩</title>
</head>
<body>
	<h1>学员历史成绩</h1>
	<table>
		<th>试卷名</th>
		<th>开考时间</th>
		<th>结束时间</th>
		<th>分数（实际分/满分）</th>
		<th>分数段</th>
		<th>完成率</th>
		<th>查看</th>
		<tr>
			<td>泰勒公式</td>
			<td>2016-4-7 23:00</td>
			<td>2016-4-7 23:00</td>
			<td>75/100</td>
			<td><img src="../../images/rate.jpg" alt="#"></td>
			<td>56%</td>
			<td><a href="../test/recorddetail.html">判分记录</a></td>
		</tr>
		<tr>
			<td>泰勒公式</td>
			<td>2016-4-7 23:00</td>
			<td>2016-4-7 23:00</td>
			<td>85/100</td>
			<td><img src="../../images/rate.jpg" alt="#"></td>
			<td>80%</td>
			<td><a href="../test/recorddetail.html">判分记录</a></td>
		</tr>
		<tr>
			<td>泰勒公式</td>
			<td>2016-4-7 23:00</td>
			<td>2016-4-7 23:00</td>
			<td>90/100</td>
			<td><img src="../../images/rate.jpg" alt="#"></td>
			<td>90%</td>
			<td><a href="../test/recorddetail.html">判分记录</a></td>
		</tr>
	</table>
	<div>
		<span>第1页/共3页  总记录数：18</span>
		<a href="#">首页</a>
		<a href="#">上一页</a>
		<span>1 2 3</span>
		<a href="#">下一页</a>
		<a href="#">尾页</a>
		<span>转到
            <input type="text" value="1">页
		</span>
		<button>Go</button>
	</div>
</body>
</html>