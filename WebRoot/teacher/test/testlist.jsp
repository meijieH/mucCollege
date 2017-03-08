<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>我的试卷库</title>
</head>
<body>
	<!-- 这个页面可以作为 教师个人整个试卷库 -->
	<header></header>
	<ul>
		<s:iterator value="testpaperList" status="status">
		<a href="test/test_showTestpaper?testpaper.testpaperid=<s:property value='testpaperid'/>">
			<li>
				<p>
					试卷名称：
					<s:property value="testpapername" />
				</p>
				<p>
					试卷编号：
					<s:property value="testpaperid" />
				</p>
				<p>
					总分:
					<s:property value="totalscore" />
				</p>
				<p>
					题目总数：
					<s:property value="questionnum" />
				</p>
				<p>
					考试时间
					<s:property value="totaltime" />
				</p></li>
				</a>
				<hr>
		</s:iterator>


	</ul>
</body>
</html>
