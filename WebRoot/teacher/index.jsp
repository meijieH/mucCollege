<%@page import="com.mucCollege.model.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User teacher=(User)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>个人中心-教师</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<header>
		<%if(teacher!=null){%>
		<p>登陆的用户，<%=teacher.getUsername() %></p><a href="teacher/teacher_logout">注销</a>
		<%} %>
		<aside>
			<ul>
				<fieldset>
                 	<legend>教师，MINDA</legend>
                 	<li><a href="teacher/teacenter/teacenter.jsp">修改资料</a></li>
				    <li><a href="teacher/teacenter/mymessage.jsp">查看消息</a></li>
				    <li><a href="teacher/teacenter/modpaswd.jsp">密码修改</a></li>
                </fieldset>
				<fieldset>
                 	<legend>教学平台</legend>
                 	<li><a href="teacher/teacourse_list">我的课程</a></li>
                 	<li><a href="teacher/mytest.jsp">我的题库</a></li>
                 	<li><a href="teacher/test/testrecord.jsp">我的收藏</a></li>
                </fieldset>
			</ul>
	    </aside>
	</header>
	
</body>
</html>