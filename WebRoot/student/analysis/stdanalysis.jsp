<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="struts" uri="/struts-tags"%> 
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 学习分析</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div>
			课程状态+课程名 下拉选择
		</div>
		<div class="content-describe">
			<div class="char-title">重点考查VS自身能力</div>
			<div id="emphasisRadar">radar 图</div>
			<div>图例</div>
		</div>
		<div class="content-describe">
			<div class="char-title">学习轨迹</div>
			<div>横坐标按周 （第一周）纵坐标按做题量</div>
			<div>
				<p>本周有勤劳的小伙伴做了33题呢</p>
				<p>你做了<span>3</span>题，要继续努力!</p>
			</div>
		</div>
		<div class="page-center-right content-describe">
			<div class="char-title">测验分析</div>
			<div>在本课程的3次测验中，</div>
		</div>
		<div class="page-center-left content-describe">iii</div>
		
	</div>	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/echarts.js"></script>
<script src="js/stdanalysis.js"></script>
</body>
</html>
