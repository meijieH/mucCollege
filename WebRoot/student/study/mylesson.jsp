<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/mylesson.css">
</head>
<body class="container">

	<main>
		<div class="col-sm-6 col-md-2 ml-ls-b">
		    <a href="student/study/lessondetail.jsp">
		      <s:iterator value="couList" status="status">
					<s:if test="couList==null">
						无可显示的记录。
					</s:if>
					<s:else>
						<div class="thumbnail">
					      <img src="images/jisuanjijichu.jpg" alt="软件工程与计算一"  width="180px;" height="125px;"/>
					      <div class="caption ml-ls-b-info">
					        <h5><c:out value="${teacourse.course.coursename}"></c:out></h5>
					        	<p>授课教师：<c:out value="${teacourse.user.username}"></c:out></p>
					        <p><a href="student/study/lessondetail.jsp" class="btn btn-primary" role="button">进入</a></p>
					      </div>
		      			</div>
					</s:else>
			  </s:iterator>
		    </a>
	   </div>
	  
		
	</main>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>
</html>