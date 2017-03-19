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
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 查找课程</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/querylesson.css">
	<link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="page-center-right box-lists all-lessons">
			<ul>
				<s:iterator value="couList" status="status">
					<li  class="box">
						<div>
							<p class="clr-deepred"><s:property value="coursename"/></p>
							<div>
								<p>描述：<s:property value="detail"/></p>
								<p>所属大类：<s:property value="subject.subjectname"/></p>
								<p>学院：<s:property value="dept.deptname"/></p>
								<p>状态：<s:property value="state"/></p>
							</div>
							<a href="teacher/teacher_toAddCourse?course.courseid=<s:property value='courseid'/>"><button class="btn btn-agree">添加</button></a>
					    </div>
					</li>
				</s:iterator>
			</ul>
		</div>
		<div class="page-center-left">
			<div class="content-title"><i class="fa fa-thumb-tack" aria-hidden="true"></i>查找课程</div>
			<div class="content-describe">如果你无法找到需要添加的课程，可能是因为从未开设过此类课程，您可以通过下方途径解决:<p><a>申请开设新的课程</a></p></div>
			<s:form action="teacher/teacher_getCoursesByName" method="post">
				<input type="text" class="search-field" title="关键词" name="coursename" placeholder="输入关键词...">
				<button class="btn btn-info search-btn" type="submit">搜 索</button>
			</s:form>
		</div>
	</div>	
	<!-- 
	<a href="#">
			<h3>添加课程</h3>
	</a>
	<a href="#">
			<h3>删除课程</h3>
	</a>
	 -->	
			
			
</body>
</html>