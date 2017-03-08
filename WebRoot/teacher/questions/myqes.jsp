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
	<title>民大学院 我的题库 </title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/myqes.css">
	<link rel="stylesheet" type="text/css" href="css/frame_myqes.css">
</head>
<body>
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="page-center-right">
			<div class="screen-conditions">
				<ul>
					<li>
						<label class="qes-label">题型：</label>
						<ul class="qes-types">
							<li class="active" onclick="active(this)">单选题</li>
							<li onclick="active(this)">判断题</li>
							<li onclick="active(this)">填空题</li>
							<li onclick="active(this)">多选题</li>
							<li onclick="active(this)">简答题</li>
						</ul>
					</li>
					<li>
						<label class="difficult-label">难易程度：</label>
						<ul class="difficult-types">
							<li class="active" onclick="active(this)">易</li>
							<li onclick="active(this)">中</li>
							<li onclick="active(this)">难</li>
						</ul>
					</li>
				</ul>
				<!--<input type="text" palceholder="" class="search-input"/>
				<button class="btn btn-default btn-search">搜索</button>-->
				<div class="oparate">
					<a class="btn btn-default btn-agree" href="/mucCollege/teacher/questions/addqes.jsp" target="_blank">手工添题</a>
					<a class="btn btn-default btn-agree" data-toggle="modal" data-target="#deleteCollect">删除此题库</a>
				</div>
				<div class="qes-sort"><label>排序:</label><a class="active"  onclick="active(this)">按时间</a><a  onclick="active(this)">按难度</a></div>
				<div class="right-grey">共计：34225题</div>
			</div>
			<div id="" class="results">
			  <ul class="questions">
			  	<s:iterator value="queList" status="status">
			  	<li>
			  		<div class="qes-info"><span class="fr">创建者：<s:property value="user.username"/></span><span>题型：<span class="clr-blue"><s:property value="quetype.typename"/></span></span><span>难易度：<span class="clr-red"><s:property value="depth"/></span></span></div>
			  		<div class="qes-stem">
			  		    <a href="teacher/teacher_showQuestion?question.questionid=<s:property value='questionid'/>"><s:property value="questionid"/>.<s:property value="stem" /></a>
			  			<div class="dotdotdot">...</div>
			  		</div>
			  		<div class="qes-operate">
			  			<a><i class="fa fa-file-text-o"></i>查看解析</a>
			  			<a><i class="fa fa-question-circle"></i>纠错</a>
			  			<a><i class="fa fa-trash-o"></i>删除</a>
			  		</div>
			  	</li>
			  	</s:iterator>
			  </ul>
			</div>
		</div>
		<div class="page-center-left">
			<div class="my-collects">
				<ul>
					<li class="collect collect-title">我的题库</li>
					<li class="collect active" onclick="active(this)">教师题库一</li>
					<li class="collect" onclick="active(this)">教师题库二</li>
					<li class="collect" onclick="active(this)">教师题库三</li>
					<li class="collect" data-toggle="modal" data-target="#newCollect">+ 新建题库</li>
				</ul>
			</div>
		</div>
	</div>	
	<div class="modal" id="newCollect" tabindex="-1" role="dialog" >
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	          <div class="modal-top">
	        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	       		<h4 class="modal-title message-title" id="myModalLabel">请输入新题库名称</h4>
	          </div>
		      <div>
		      	<form action="">
		      		<input type="text" />
		      	</form>
		      </div>
		      <div class="modal-option">
		      	<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		        <button type="button" class="btn btn-agree">保存</button>
		      </div>
		     </div>
	    </div>
	  </div>
	</div>
	<div class="modal" id="deleteCollect" tabindex="-1" role="dialog" >
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	          <div class="modal-top">
	        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	       		<h4 class="modal-title message-title" id="myModalLabel">系统提示您</h4>
	          </div>
		      <div>
		      	<form action="">
		      		题库一经删除，无法恢复。您确认要删除该题库吗？
		      	</form>
		      </div>
		      <div class="modal-option">
		      	<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		        <button type="button" class="btn btn-agree">确定</button>
		      </div>
		     </div>
	    </div>
	  </div>
	</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/myqes.js"></script>
</body>
</html>