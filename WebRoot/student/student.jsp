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
	<title>个人中心-学生</title>
	<link rel="stylesheet" href="../css/main.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<header>
		
		<aside>
			<ul>
				<fieldset class="col-md-2">
                 	<legend><s:property value="user.username"/></legend>
                 	<li><a href="user/user_showInfo">查看信息</a></li>
                 	<li><a href="user/user_showEdit">修改资料</a></li>
				    <li><a href="user/user_showMessage">查看消息</a></li>
				    <li><a href="user/user_exit">注销</a></li>
                </fieldset>
				<fieldset class="col-md-2">
                 	<legend>学习中心</legend>
                 	<li><a href="student/study/mylesson.jsp">我的课程</a></li>
				    <li><a href="student/study/errorset.jsp">错题本</a></li>
				    <li><a href="student/study/workbook.jsp">模拟练习</a></li>
				    <li><a href="student/study/mycollection.jsp">我的收藏</a></li>
                </fieldset>
                <fieldset class="col-md-2">
                	<legend>考试中心</legend>
                	<li><a href="student/test/mytest.jsp">我的考试</a></li>
				    <li><a href="student/test/testrecord.jsp">考试记录</a></li>
                </fieldset>
			</ul>
			
	    </aside>
	</header>

<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>	
</body>
</html>