
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//ArrayList<Teacourse> teacourseList=(ArrayList<Teacourse>)request.getSession.getAttribute("teacourselist");
	//System.out.print((teacourseList==null)+"dkiwfje");
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>民大学院 教学空间 教学平台</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css"
	href="css/tea_frame_myteacenter.css">
</head>
<body>
	<!-- 教学平台导航 -->
	<nav class="frame-myteacenter-nav">
		<ul>
			<li><a href="#">批量管理(未设置)</a></li>
		</ul>
	</nav>

	<!-- 搜索 -->
	<div class="search-box">
		<form action="" class="">
			<input type="text" class="search-input" placeholder="搜索我的课程......">
			<button type="submit" class="btn btn-default">搜索</button>
		</form>
	</div>

	<!-- 课程列表 -->
	<div class="box-lists">
		<ul>
			<s:iterator value="teacouList" status="status">
			<li class="box">
			<a href="teacher/mylesson/mylesdetail.jsp" target="_blank">
					<div class="box-content">
						<img src="images/jisuanjijichu.jpg" alt="计算机基础" />
						<div class="caption ml-ls-b-info">
							<div class="lesson-name">
								<s:property value="course.coursename" />
								(课程名)
							</div>
							<div class="lesson-info">
								<div class="stu-origin" title="学生来源">
									<i class="fa fa-tags fa-wa"></i>
									<s:property value="stuClass.classname" />
								</div>
								<p>
									开课时间
									<s:property value="year" />
									年第
									<s:property value="term" />
									学期
								</p>
								<div class="stu-number" title="班级人数">
									<i class="fa fa-user "></i>23
								</div>
							</div>
						</div>
					</div>
				 </a>
			</li>
			</s:iterator>
			<li></li>
			<li class="box null-lesson-box">
				<a href="teacher/teacher_getAllCourses" target="_blank">
					<div class="box-content">+&nbsp;添加课程</div> 
				</a>
			</li>
		</ul>
	</div>
</body>
</html>