<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
		<span>
			<label for="lesson">选择课程：</label>
		    <select name="lesson" id="lesson">
		    	<option value="#">高等数学</option>
		    	<option value="#">大学英语</option>
		    	<option value="#">线性代数</option>
		    </select>
		    <button>选择</button>
		</span>
		<span>
			<label for="keyword">关键字：</label>
			<input type="text" id="keyword">
			<button>搜索</button>
		</span>
	</header>
	<main>
		<ul class="class-list">
			<s:iterator value="teacouList"  status="status">
			<li>
				<a href="teacher/mylesson/mylesdetail.jsp">
					<div>
						<img src="images/jisuanjijichu.jpg" alt="计算机基础" width="160px" height="160px;">
						<p><s:property value="course.coursename"/></p>
						<div>
							<p>授课班级<s:property value="stuClass.classname"/></p>
							<p>开课时间<s:property value="year"/>年第<s:property value="term"/>学期</p>
						</div>
				    </div>
				</a>
			</li>
			</s:iterator> 
		</ul>
			<a href="#">
					<h3>添加课程</h3>
			</a>
			<a href="#">
					<h3>删除课程</h3>
			</a>
			
	</main>
</body>
</html>