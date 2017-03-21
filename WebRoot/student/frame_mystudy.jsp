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
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 我的课程</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/std_frame_mystudy.css">
</head>
<body>
	<div class="courase-status">
		<div class="htitle">请选择课程状态:</div>
		<select>
			<option>正在进行</option>
			<option>已结束</option>
		</select>
	</div>
	<!-- 课程列表 -->
	<div class="box-lists myclass">
        <ul>
        	<s:iterator value="couList" status="status">
        		<!--<s:if test="couList==null">
					无可显示的记录。
				</s:if>
				<s:else>-->
		       		<li class="box">
		        		<a href="student/study/lessondetail.jsp" target="_blank">
					      <div class="box-content">
						      <div class="caption ml-ls-b-info">
						        <div class="lesson-name"><c:out value="${teacourse.course.coursename}"></c:out>（课程名字）</div>
						        <div class="lesson-info">
						        	<div class="start-time" title="开课时间"><i class="fa fa-clock-o"></i>20**学年，第n学期</div>
						        	<div class="stu-number" title="任课教师"><i class="fa fa-user "></i><c:out value="${teacourse.user.username}"></c:out>（李老师）</div>
						        </div>
						      </div>
					      </div>
					    </a>
		        	</li>
				<!--</s:else>-->
        	</s:iterator>
        </ul>
	</div>
	
</body>
</html>