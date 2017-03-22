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
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 我的试卷库</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/testlist.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="page-center-right ">
				<div class="sortbox">排序 ：<span>考试时长 </span><span>试题总数 </span> <p class="fr itemcount clr-blue">显示第<span> 1 </span>至<span> 10 </span>项记录，共<span> 57 </span>项</p></div>
				<ul class="testlists">
					<s:iterator value="testpaperList" status="status">
					<a href="test/test_showTestpaper?testpaper.testpaperid=<s:property value='testpaperid'/>">
						<li>
							<div>
								<span>试卷名称：<s:property value="testpapername" /></span>
								<span>总分：<s:property value="totalscore" /></span>
							</div>
							<div>
								<span>题目总数：<s:property value="questionnum" /></span>
								<span>时长：<s:property value="totaltime" />分钟</span>
							</div>
						</li>
					</a>
					</s:iterator>
				</ul>
				<div class="list-bottom">
					
					<nav aria-label="Page navigation">
					  <ul class="pagination">
					    <li>
					      <a href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li>
					      <a href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
			   </div>
		</div>
		<div class="page-center-left">
			<div class="content-title"><i class="fa fa-thumb-tack" aria-hidden="true"></i>我的试卷库</div>
			<s:form action="test/test_getMyTestpaperByName" method="post">
				<input type="text" class="search-field" title="关键词" name="testpaper.testpapername" placeholder="输入关键词...">
				<button class="btn btn-agree search-btn" type="submit">搜 索</button>
			</s:form>
		</div>
	</div>	
</body>
</html>
