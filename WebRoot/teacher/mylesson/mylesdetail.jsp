<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
	<title>计算机基础 任课详情</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/com_lessondetail.css">
	<link rel="stylesheet" type="text/css" href="css/tea_mylesdetail.css">
	<link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<%@include file="/common/topbar.jsp"%>
	<div class="lesson-detail">
		<div class="lesson-detail-left">
			<div class="lesson-info">课程信息</div>
			<h1 class="lesson-name"><s:property value="teacourse.course.coursename"/></h1>
			<div class="ld-box">
				<h2 class="ld-title">课件（待完善）</h2>
				<ul class="ld-lists">
					<li>
						<a href="student/study/waredetail.jsp" target="_blank">
							<p>指令的机器级表示 .ppt&nbsp;<time>2016/1/2</time></p>   
						</a>
					</li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div class="ld-box">
				<h2 class="ld-title">作业（待完善）</h2>
				<ul class="ld-lists">
					<li>
						<a href="student/study/waredetail.jsp" target="_blank">
							<p>JMS大作业&nbsp;<time>2016/1/2</time></p>   
						</a>
					</li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div class="ld-box">
				<h2 class="ld-title">考试</h2>
				<ul class="ld-lists">
					<s:iterator value="testList" status="status">
					<li>
						<a href="test/test_getPaperByTest?test.testid=<s:property value='testid'/>" target="_blank">
							<p><s:property value="testname"/>&nbsp;<time><s:property value="starttime"/></time></p>   
						</a>
					</li>
					</s:iterator>
					<!-- 添加试卷 -->
					<li>
						<a data-toggle="modal" data-target="#addTest" class="add-paper">+ 添加考试</a>
					</li>
					<li><br></li>
				</ul>
			</div>
		</div>
    </div>
    <div class="modal" id="addTest" tabindex="-1" role="dialog" >
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
		          <div class="modal-top">
		        	<button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="visible('addtestWays');displayNone('settest');displayNone('messageTitle');"><span aria-hidden="true">&times;</span></button>
		        	<h4 class="modal-title message-title display-none" id="messageTitle">从我的试卷中选择</h4>
		          </div>
			      <div class="addtestWays" id="addtestWays">
				      <div onclick="displayNone('addtestWays');visible('settest');visible('messageTitle');">
				      	<div>从我的试卷中选择</div>
				      	<i class="fa fa-pencil" aria-hidden="true"></i>
				      	<p>从教师“我的试卷”中抽选题目</p>
				      </div>
				      <div onclick="window.open('test/test_toPartAutoPapers')">
				      	<div>半自动组卷</div>
				      	<i class="fa fa-print" aria-hidden="true"></i>
				      	<p>由手工添加题目的方式和选择导入题库题目的方式共同组成</p>
				      </div>
				      <div  onclick="window.open('test/test_toAutoPapers','_blank')">
				      	<div>自动组卷</div>
				      	<i class="fa fa-cog" aria-hidden="true"></i>
				      	<p>机器随机组卷，可以设置试卷难度比、题型、考察知识范围等属性</p>
				      </div>
			      </div>
			      <div class="settest display-none" id="settest">
			       		<form action="">
			       			<div>
				       			<p>
				       				课程：
					       			<select>
					       				<option>高等数学</option>
					       				<option>大学物理</option>
					       				<option>13</option>
					       				<option>6</option>
					       			</select>
				       			</p>
				       			<p>
				       				试卷：
					       			<select>
					       				<option>简单小测试</option>
					       				<option>143</option>
					       				<option>期中测试</option>
					       				<option>6</option>
					       			</select>
				       			</p>
				       		</div>
				       		<table>
				       			<tr>
				       				<th></th>
				       				<th>年</th>
				       				<th>月</th>
				       				<th>日</th>
				       				<th>时/分</th>
				       			</tr>
				       			<tr>
				       				<td>开始于：</td>
				       				<td>
				       					<select class="date-option">
				       						<option>2017</option>
				       						<option>2018</option>
				       					</select>
				       				</td>
				       				<td>
				       					<select class="date-option">
				       						<option>1</option>
				       						<option>2</option>
				       						<option>12</option>
				       					</select>
				       				</td>
				       				<td>
				       					<select class="date-option">
				       						<option>1</option>
				       						<option>2</option>
				       						<option>31</option>
				       					</select>
				       				</td>
				       				<td>
				       					<input type="time" class="date-option"/>
				       				</td>
				       			</tr>
				       			<tr>
				       				<td>结束于：</td>
				       				<td>
				       					<select class="date-option">
				       						<option>2017</option>
				       						<option>2018</option>
				       					</select>
				       				</td>
				       				<td>
				       					<select class="date-option">
				       						<option>1</option>
				       						<option>2</option>
				       						<option>12</option>
				       					</select>
				       				</td>
				       				<td>
				       					<select class="date-option">
				       						<option>1</option>
				       						<option>2</option>
				       						<option>31</option>
				       					</select>
				       				</td>
				       				<td>
				       					<input type="time" class="date-option"/>
				       				</td>
				       			</tr>
				       			<tr>
				       				<td>历时：</td>
				       				<td>
				       					2小时20分
				       				</td>
				       			</tr>
				       		</table>
				       		<div class="visible-set">
				       			<p>考试结束后是否向学生公开答案:</p>
				       			<p><label><input type="radio" name="visAnswer"/>是</label><label><input type="radio" checked="true" name="visAnswer"/>否</label></p>
				       			<!--<p>考试结束后是否向学生公开解析:</p>
				       			<p><label><input type="radio" name=""/>是</label><label><input type="radio" checked="true" name=""/>否</label></p>-->
				       		</div>
				       		<div>
				       			<a href="" class="btn btn-agree">已完成设置,即刻生效</a>
				       		</div>
			       		</form>
			      </div>
		     </div>
		 </div>
	   </div>
	 </div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>