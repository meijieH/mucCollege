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
	<title>试卷库</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/tea_settest.css">
</head>

<body>
	<header>
		
	</header>
	<main>
	
	   <!--标题 -->
		<div>
			<div class="content-title settest-lesson-t"><i class="fa fa-thumb-tack" aria-hidden="true"></i>计算机基础 </div>
			<a href="teacher/test/testedit.jsp" target="_blank" role="button" class="btn btn-default manual-settest-btn">手工组卷</a>
			<a href="teacher/test/autoassem.jsp" target="_blank" role="button" class="btn btn-default manual-settest-btn">自动组卷</a>
		</div>
		
		
		
		<!--设置考试-->
		<div class=" settest-time">
		   <form>
		       <div class="start">
		          <span> 开始时间</span><input type="date"/><input type="time"/>
		       </div>
		       <div class="end">
		          <span> 结束时间</span><input type="date"/><input type="time"/>
		       </div>
		       <!--<div class="paper">
		          <div>+拖动试卷到此处</div>
		       </div>
		       <div class="apply">
		          <button type="submit" class="apply-btn">应用</button>
		       </div>-->
		   </form>
		</div>
	    
	    <!-- 搜索 -->
		<div class="search-box paper-search">
	    	<form action="" class="">
			    <input type="text" class="search-input" placeholder="请输入考卷名进行查询">
			    <button type="submit" class="btn btn-default">搜索</button>
			</form>
	    </div>
	    
		<!-- 试卷列表 -->
		<div class="paper-list">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>试卷编号</th>
						<th>试卷名称</th>
						<th>题目总数</th>
						<th>试卷总分</th>
						<th>总时间</th>
					</tr>
				</thead>
				<tbody>
				<s:iterator value="testpaperList" status="status">
				<tr>
					
					
						<td><a href="test/test_showTestpaper?testpaper.testpaperid=<s:property value='testpaperid'/>"><s:property value="testpaperid"/></a></td>
						<td><s:property value="testpapername"/></td>
						<td><s:property value="questionum"/></td>
						<td><s:property value="totalscore"/></td>
						<td><s:property value="totaltime"/></td>
				
					</tr>
					
					</s:iterator>
				</tbody>
				<tfood>
					<tr>
						<td>数量28份</td>
					</tr>
				</tfood>
			</table>
		</div>
	
	</main>
</body>