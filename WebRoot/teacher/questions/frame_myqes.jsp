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
	<title>民大学院 教学空间 教学平台</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<style>
		.box-lists .box:hover{
			border: 1px solid orange;
		}
		.box-lists .box:hover .box-content{
			color:orange;
		}
		.qes-set-name{
			font-size:14px;
			color:#orange;
		}
		.qes-set-num{
			font-size:14px;
			color:#999;
		}
		.qes-set-time{
			font-size:12px;
			color:#999;
		}
	</style>
</head>
<body>
	<!-- 导航 -->
	<nav class="frame-myteacenter-nav">
		<ul>
			<li><a href="#"></a></li>
		</ul>
	</nav>

	<!-- 搜索 -->
    <div class="search-box">
    	<form action="" class="">
		    <input type="text" class="search-input" placeholder="输入关键字，可以搜索题集里的题目......">
		    <button type="submit" class="btn btn-default">搜索</button>
		</form>
    </div>
	
	<!-- 列表 -->
	<div class="box-lists">
        <ul>
        	<li class="box">
        		<a href="teacher/questions/qesset.jsp" target="_blank">
			      <div class="box-content">
				     <div class="qes-set-name">操作系统</div>
				     <div class="qes-set-num">共23题</div>
				     <div class="qes-set-time">最后保存于2016年3月23日</div>
			      </div>
			    </a>
        	</li>
        	<li></li>
        	<li class="box">
        		<a href="#">
			      <div class="box-content">
				     +&nbsp;自定义题集
			      </div>
			    </a>
        	</li>
        </ul>
        <ul>
        <s:iterator value="queList" status="status">
			<s:if test="queList==null">
				无可显示的记录。
			</s:if>
			<s:else>
				<li>
				创建者：<s:property value="user.username" />
				题目<s:property value="stem"/>
				</li>
			</s:else>
		</s:iterator>
		</ul>
	</div>
</body>
</html>