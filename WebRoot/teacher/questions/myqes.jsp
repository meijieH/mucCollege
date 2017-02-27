<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 我的题库 教师</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/teacher.css">
</head>
<body>
	<header>
		<div class="user-info">
			<span class="user-study">我的收藏</span>
			<span class="user-message">私信</span>
			<span class="user-name"><s:property /></span>
			<span class="user-face" onmouseover="visible('user-setting')" onclick="displayNone('user-setting')">
				<img src="/mucCollege/images/face.jpg"/>
			</span>
			<div id="user-setting" class="display-none user-setting">
				<ul>
					<li><a href="#">修改密码</a></li>
					<li><a href="#">退出</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!-- 左侧栏 -->
	<div class="tea-main-left">
		<div class="tea-img">
			<img src="/mucCollege/images/face.jpg" alt="" width="80" height="80">
		</div>
		<div class="tea-name">
			<i><c:out value="${user.username}"></c:out></i>
		</div>
		<div class="tea-option-nav">
			<ul>
				<li><i class="fa fa-server"></i>我的题库</li>
				<li><i class="fa fa-plus-square-o"></i>原创试题</li>
				<li><i class="fa fa-cloud"></i>海量题源</li>
				<li><i class="fa fa-location-arrow"></i>导出题目<li>
			</ul>
		</div>
	</div>
	<!-- 右侧 -->
	<div class="set-zone">
	    	<table class="default-table">
	    		<thead>
	    			<tr>
	    				<th class="select-all"><input type="checkbox">全选</th>
	    				<th>难度</th>
	    				<th>题干</th>
	    				<th>使用次数</th>
	    				<th>正确率</th>
	    				<th>题型</th>
	    				<th>来源</th>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<s:iterator value="queList" status="status">
	    			<tr>
	    				<td><input type="checkbox"></td>
	    				<td><s:property value="depth"/></td>
	    				<td><a href="teacher/teacher_showQuestion?question.questionid=<s:property value='questionid'/>"><s:property value="questionid"/>.<s:property value="stem" /></a></td>
	    				<td>3</td>
	    				<td>23%</td>
	    				<td><s:property value="quetype.typename"/></td>
	    				<td><s:property value="user.username"/></td>
	    			</tr>
	    			</s:iterator>
	    		</tbody>
	    		<tfoot>
	    			<tr>
	    				<td></td>
	    				<td></td>
	    				<td></td>
	    				<td></td>
	    				<td>e</td>
	    				<td>第3题</td>
	    				<td>共23题</td>
	    			</tr>
	    		</tfoot>
	    	</table>
	    </div>
	<div class="tea-main-right">
	    <iframe id="tea-main-right-frame"src="teacher/questions/frame_myqes.jsp" frameborder="0" width="100%" height="100%"></iframe>
	</div>
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript">
	function changeRight(src){
	   var rightFrame=document.getElementById('tea-main-right-frame');
	   console.log(src);
	   rightFrame.src=src;
	}
	/*隐藏和显示*/
	function visible(id){
		$('#'+id).removeClass('display-none').addClass('visible');
		console.log($('.user-name')[0].style.baseline);
	}
	function displayNone(id){
		$('#'+id).removeClass('visible').addClass('display-none');
	}
	function hidden(id){
		$('#'+id).removeClass('visible').addClass('hidden');
	}
	
	</script>
</body>
</html>