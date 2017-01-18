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
	<title>考试记录</title>
</head>
<body class="container">
	<h1>考试记录</h1>
	<header>
		<span>
			<label for="subject">科目</label>
			<select name="subject" id="subject">
				<option value="#">高等数学</option>
				<option value="#">线性代数</option>
				<option value="#">大学英语</option>
			</select>
		</span>
		<span>
			<label >起始时间
			<input type="date" >
			<input type="time">
			</label>
		</span>
		<span>
			<label >结束时间
			<input type="date" >
			<input type="time">
			</label>
		</span>
		<input type="checkbox">只显示最近一次考试的成绩
		<button>查询</button>
	</header>
	<main>
		<table>
			<th>科目</th>
			<th>试卷名</th>
			<th>类型</th>
			<th>开考时间</th>
			<th>结束时间</th>
			<th>分数（实际分/满分）</th>
			<th>分数段</th>
			<th>完成率</th>
			<th>详细</th>
			<tr>
				<td>高等数学</td>
				<td>泰勒公式</td>
				<td>正式考试</td>
				<td>2016-04-20 10:32:24</td>
				<td>2016-04-20 10:45:34</td>
				<td>54/100</td>
				<td><img src="../../images/rate.jpg" alt="#"></td>
				<td>43%</td>
				<td><a href="student/test/recorddetail.jsp">查看详细</a></td>
			</tr>
			<tr>
				<td>高等数学</td>
				<td>泰勒公式</td>
				<td>正式考试</td>
				<td>2016-04-20 10:32:24</td>
				<td>2016-04-20 10:45:34</td>
				<td>54/100</td>
				<td><img src="../../images/rate.jpg" alt="#"></td>
				<td>43%</td>
				<td><a href="../test/recorddetail.html">查看详细</a></td>
			</tr>
			<tr>
				<td>线性代数</td>
				<td>切比雪夫不等式</td>
				<td>正式考试</td>
				<td>2016-04-20 10:32:24</td>
				<td>2016-04-20 10:45:34</td>
				<td>89/150</td>
				<td><img src="../../images/rate.jpg" alt="#"></td>
				<td>60%</td>
				<td><a href="../test/recordlist.html">查看详细</a></td>
			</tr>
		</table>
		<div>
		<span>第1页/共1页  总记录数：3</span>
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
	</main>
</body>
</html>