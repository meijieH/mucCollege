<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 答案解析</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/annocation.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="tab-sheets">
			<form class="default-form">						
				<div class="que-box">
					<div class="que-top">
						<div class="que-top-left">
							<span>题型：<s:property value='question.quetype.typename'/></span>
							<span> | </span>
							<span>难易度：<s:property value='question.depth'/></span>
						</div>
					</div>
					<div class="que-mid">
						<div class="que-que">
							<p>
							题目<s:property value='question.stem'/>
							</p>
						</div>
						<div class="que-cho">
							<p>*题型为选择题就在这里显示选项，没有选项的不显示</p>
						</div>
					</div>
					<div class="que-btm">
						<div class="dropdown">
							<select>
								<option>添加到我的题库</option>
								<option value="">极限</option>
								<option value="">函数</option>
								<option value="">不定积分</option>
								<option value="">多重积分</option>
								</select>	
						</div>
					</div>	
				</div>
			
				<div class="que-box">
					<div class="annota">
						<span class="exam-point">【考点】</span>
						<div class="anno-body"><p><s:property value='question.label'/></p></div>
					</div>
					<div class="annota">
						<span class="exam-ans">【答案】</span>
						<div class="anno-body"><s:property value='question.answer'/></div>
					</div>
					<div class="annota">
						<span class="exam-anno">【解析】</span>
						<div class="anno-body"><s:property value='question.annotation'/></div>	
					</div>
				</div>
			</form>
		</div>
	</div>	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>