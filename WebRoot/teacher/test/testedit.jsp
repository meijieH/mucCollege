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
    <title>民大学院 自行组卷</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/tea_testedit.css">
</head>
<body>
	 <%@include file="/common/topbar.jsp"%>
	 这个页面先别加东西 有大的修改！
	 <!-- 左侧操作区 -->
	 <div class="fl">
	 	<!-- 标题设置 --> 
		 <div class="content-describe paper-title-set">
		 	<label class="box-label">请设置试卷标题</label>
		 	<span><input type="text" placeholder="简单的单元测试"/></span>
		 </div>
		 
		 <!-- 题目导航 -->
		 <div class="content-describe question-nav">
		  	<h2 class="box-title"><i class="fa fa-map-marker"></i>试题导航</h2>
		  	<h2 class="qes-big-num">一、简答题</h2>
		  	<div class="qes-num-list">
		  		<a href="qes-1" class="qes-num">1</a>
		  		<a href="qes-2" class="qes-num">2</a>
		  		<a href="qes-3" class="qes-num">3</a>
		  		<a href="qes-4" class="qes-num">4</a>
		  		<a href="qes-5" class="qes-num">5</a>
		  	</div>
		  	<h2 class="qes-big-num">二、选择题</h2>
		  	<div class="qes-num-list">
		  		<a href="qes-1" class="qes-num">1</a>
		  		<a href="qes-2" class="qes-num">2</a>
		  		<a href="qes-3" class="qes-num">3</a>
		  		<a href="qes-4" class="qes-num">4</a>
		  		<a href="qes-5" class="qes-num">5</a>
		  	</div>
		 </div>
	 
		 <!-- 时长设置 --> 
		 <div class="content-describe paper-time-set">
		 	<label class="box-label">完成这份试卷的参考用时：</label>
		 	<span>0:08:38</span>
		 </div>
		 
		 <!-- 操作区 -->
		<div>
			<button class="btn btn-default">预览</button>
			<button class="btn btn-agree">保存</button>
			<button class="btn">应用到计算机基础</button>
		</div>
	 </div>
	 
	 
	<!-- 题目编辑区 -->
	<div class="edit-zone">
	    <!-- 默认大板块 -->
		<div id="big-plate-1">
			<!-- 大板块名 -->
			<span class="big-plate-number">一</span><input type="text" placeholder="大题名" class="big-plate-title">
			<!-- 大板块描述 -->
	        <!--<div class="big-plate-describe">
	             <input type="text" placeholder="键入题目描述" >  
	        </div>-->
	        <!-- 子版块区 -->
	        <div class="small-plates">
	            <!-- 默认子版块 -->
	        	<div class="small-plate-1">
	        	  	<!-- 子版块名 -->
	        		<!--<input type="text" placeholder="键入您的题组名" class="small-plate-title">-->
	        		<!-- 子版块描述 -->
	               	<!--<div class="small-plate-describe">
			             <input type="text" placeholder="键入题组描述">  
			        </div>-->
			        <!-- 问题区 -->
			        <div class="questions">
			        	
			        	<!-- 子问题：简答题类型 -->
				        <div class="question">
				        	<!-- 问题设置 -->
				        	<div class="question-set">
				        		<h4 class="question-number">第 <span>1</span>题</h4>
				        		<div class="isAnswer">未设置标准答案</div>
				        		<label class="base-mark">分值<span>2</span></label>
				        	</div>
				        	<div class="short-answer">
					             <textarea placeholder="键入您的问题"></textarea>
					        </div>
				        </div>
				        <!-- 子问题：判断题类型 -->
				        <div class="question">
				        	<!-- 问题设置 -->
				        	<div class="question-set">
				        		<h4 class="question-number">第 <span>2</span>题</h4>
				        		<div class="isAnswer">未设置标准答案</div>
				        		<label class="base-mark">分值<span>2</span></label>
				        	</div>
				        	<div class="flag-qes">
					             <textarea placeholder="键入需要判断的结论"></textarea>
					        </div>
				        </div>
				        <!-- 子问题：选择题类型 -->
				        <div class="question">
				        	<!-- 问题设置 -->
				        	<div class="question-set">
				        		<h4 class="question-number">第 <span>3</span>题</h4>
				        		<div class="isAnswer">未设置标准答案</div>
				        		<label class="base-mark">分值<span>2</span></label>
				        	</div>
				        	<div class="select-qes">
					             <textarea placeholder="键入您的问题描述"></textarea>
					             <div>
					             	<span class="text-option-num">A</span><textarea class="text-option" placeholder="输入选项一"></textarea>
					             </div>
					             <span class="text-option-num">B</span><textarea class="text-option" placeholder="输入选项二"></textarea>
					        </div>
				        </div>
				       <!-- 操作区 -->
				        <div class="operate-box">
				        	<button class="btn btn-addqes" onClick="addQuestion(this);">+导入题库中的题目(未完善)</button>
					        <button class="btn btn-addqes" onClick="addQuestion('1',this);">+添加选择题</button>
					        <button class="btn btn-addqes" onClick="addQuestion('2',this);">+添加判断题</button>
					        <button class="btn btn-addqes" onClick="addQuestion('3',this);">+添加简答题</button>
				        </div>
				        
			        </div>
	        	</div>
	        	
	        	<button onClick="addSmallPlate();" class="btn btn-addqes">+添加题组</button>
	        </div>
		</div>
		<!-- 新增大板块 -->
		<button class="btn btn-addqes" onclick="addBigPlate();">+添加大题</button>
	</div>
	
	<script src="js/jquery.min.js"></script>
	<script src="js/tea_testedit.js"></script>
</body>
</html>
