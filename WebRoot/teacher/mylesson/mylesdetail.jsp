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
			<div>
				<h1 class="content-title lesson-name"><s:hidden name="label" value="teacourse.course.coursename"></s:hidden><s:property value="teacourse.course.coursename"/></h1>
				<a class="push-info" href="teacher/teacenter/pushnews.jsp" target="_blank"><i class="fa fa-bullhorn" aria-hidden="true"></i>发布通告</a>
			</div>
			<div class="clear">
				<div class="ld-box">
				<h2 class="ld-title">课件</h2>
				<ul class="ld-lists">
					<li>
						<a href="student/study/waredetail.jsp" target="_blank">
							<p>指令的机器级表示 .ppt&nbsp;<time>2016/1/2</time></p>   
						</a>
					</li>
				</ul>
				</div>
				<div class="ld-box">
					<h2 class="ld-title">作业</h2>
					<ul class="ld-lists">
						<li>
							<a href="student/study/waredetail.jsp" target="_blank">
								<p>JMS大作业&nbsp;<time>2016/1/2</time></p>   
							</a>
						</li>
					</ul>
				</div>
				<div class="ld-box">
					<h2 class="ld-title">考试</h2>
					<ul class="ld-lists">
						<s:iterator value="testList" status="status">
						<li onclick="window.open('test/test_getPaperByTest?test.testid=<s:property value='testid'/>','_blank');">
							<div class="test-name" title="<s:property value="testname"/>"><s:property value="testname"/></div>
							<div class="test-time"><s:property value="starttime"/></div>
							<div class="test-option wait">未开始</div>
						</li>
						</s:iterator>
						<li onclick="window.open('student/test/testing.jsp','_blank');">
							<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷A（考完的试卷一：没改完）</div>
							<div class="test-time">2016/1/2 23:00</div>
							<div class="test-option enter"">在进行</div>
						</li>
						<li onclick="window.open('student/test/testing.jsp','_blank');">
							<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷A（考完的试卷一：没改完）</div>
							<div class="test-time">2016/1/2 23:00</div>
							<div class="test-option done">待批阅</div>
						</li>
						<li onclick="window.open('student/test/testing.jsp','_blank');">
							<div class="test-name" title="简单的课堂小练习（考完的试卷一）">试卷B（考完的试卷二）</div>
							<div class="test-time">2016/1/2 23:00</div>
							<div class="test-option end">已完成</div>
						</li>
						<!-- 添加试卷 -->
						<li>
							<a data-toggle="modal" data-target="#addTest" class="add-paper">+ 添加考试</a>
						</li>
					</ul>
				</div>
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
					       			
					       				<s:iterator value="teacouList" status="status">
					       				<option><s:property value="course.coursename"/></option>
					       				</s:iterator>
					       			</select>
				       			</p>
				       			<p>
				       				试卷：
					       			<select>
					       				<s:iterator value="testpaperList" status="status">
					       				<option><s:property value="testpapername"/></option>
					       				</s:iterator>
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