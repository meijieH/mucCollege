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

	<s:form action="teacher/teacher_getCourseByState" method="post">
		<div class="courase-status">
			<div class="htitle">请选择课程状态:</div>
			<select name="teacourse.state">
				<option value="全部课程">全部课程</option>
				<option value="正在开课">正在开课</option>
				<option value="正在审核">正在审核</option>
				<option value="已经结束">已经结束</option>
			</select>
		
		<button type="submit" class="btn btn-agree search-btn">检索</button>
		</div>
	</s:form>

	<!-- 课程列表 -->
	<div class="box-lists myclass">
		<ul>
			<s:iterator value="teacouList" status="status">
				<li class="box"><a
					href="teacher/teacher_showCourse?teacourse.teacourseid=<s:property value='teacourseid'/>"
					target="_blank">
						<div class="box-content">
							<div class="caption ml-ls-b-info">
								<div class="lesson-name">
									<s:property value="course.coursename" />
								</div>
								<div class="lesson-info">
									<div class="start-time" title="开课时间">
										<i class="fa fa-clock-o"></i>
										<s:property value="year" />
										学年，第
										<s:property value="term" />
										学期
									</div>
									<div class="stu-origin" title="学生来源">
										<i class="fa fa-tags fa-wa"></i>
										<s:property value="stuClass.classname" />
									</div>
									<div class="stu-origin" title="课程状态">
										<i class="fa fa-university"></i>
										<s:property value="state" />
									</div>
									<div class="stu-number" title="班级人数">
										<i class="fa fa-user "></i>23
									</div>
								</div>
							</div>
						</div> </a></li>
			</s:iterator>
			<li class="box null-lesson-box"><a
				href="teacher/teacher_getAllCourses" target="_blank">
					<div class="box-content" style="font-size:26px;"><br>&nbsp;&nbsp;&nbsp;+&nbsp;添加课程<br><br></div> </a></li>
		</ul>
	</div>

	<!--<s:iterator value="teacouList">
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
	</s:iterator>-->
</body>
</html>