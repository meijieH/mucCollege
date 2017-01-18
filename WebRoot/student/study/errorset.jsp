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
	<title>错题集</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/errorset.css">
</head>
<body class="container">
	<header >
		<h1>minda的错题集（收录了它在这个系统里）</h1>
		<div>
			<span>
				<label for="subject">错题夹：</label>
				<select name="subject" id="subject">
					<option value="#">-所有项目-</option>
					<option value="">高等数学</option>
					<option value="">线性代数</option>
				</select>
			</span>
			<span>
				<label >起始时间
				<input type="date" >
				<input type="time">
				</label>
			</span>
			<span>
				<label >截止时间
				<input type="date" >
				<input type="time">
				</label>
			</span>
		</div>
		<div>
			<span>
				<label for="testname">试卷名称：</label>
				<select name="testname" id="testname">
					<option value="#">【正式考试】泰勒公式测试-</option>
					<option value="">【作业练习】切比雪夫不等式</option>
					<option value="">【作业练习】齐次方程</option>
				</select>
			</span>
			<span>
				<label for="testname">试题类型：</label>
				<select name="testname" id="testname">
					<option value="#">-选择题-</option>
					<option value="">判断题</option>
					<option value="">问答题</option>
				</select>
			</span>
			<span>
				<label for="keyword">关键词：</label>
				<input type="text">
				<button>搜索</button>
			</span>
		</div>
	</header>
	<hr>
	<main>
		<div>
			<button>删除</button>
			<button>开始做题</button>
		</div>
		<table>
			<th><input type="checkbox">全选</th>
			<th>题干</th>
			<th>做题次数</th>
			<th>查看</th>
			<tr>
				<td><input type="checkbox"></td>
				<td>XXXXXXXXXXXXXXX</td>
				<td>3</td>
				<td><a href="student/study/errorlist.html">做题记录</a></td>
			</tr>
		</table>
	</main>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>
</html>