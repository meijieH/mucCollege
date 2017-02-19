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
	<title>民大学院 手工添题</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/addqes.css">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="page-center-right">
			  <div class="tab-content">
			    <div class="tab-pane active" id="singleSelect">
			    	<form class="default-form">
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value ="">操作系统</option>
									  <option value ="">数据结构</option>
									  <option value="">计算机网络</option>
									  <option value="">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="sgStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="sgStem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="singleOption1">A、</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="singleOption" id="singleOption1">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="singleOption2">B、</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="singleOption" id="singleOption2">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="button" class="btn btn-default singleAppend" onclick="appendOption('.singleAppend','singleOption','singleDisable')">
									 添加选项
									</button>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="answer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<div class="answerSelect">
		 	 							<label><input type="radio" name="singleAnswer" class="singleAnswer"/>A</label>
		 	 							<label><input type="radio" name="singleAnswer" class="singleAnswer"/>B</label>
		 	 							<label class="singleDisable"><input type="radio" name="singleAnswer" class="singleAnswer" disabled="disabled"/>C</label>
		 	 							<label class="singleDisable"><input type="radio" name="singleAnswer" class="singleAnswer" disabled="disabled"/>D</label>
		 	 							<label class="singleDisable"><input type="radio" name="singleAnswer" class="singleAnswer" disabled="disabled"/>E</label>
		 	 							<label class="singleDisable"><input type="radio" name="singleAnswer" class="singleAnswer" disabled="disabled"/>F</label>
		 	 							<label class="singleDisable"><input type="radio" name="singleAnswer" class="singleAnswer" disabled="disabled"/>G</label>
		 	 						</div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="analysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="analysis" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox">同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="button" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</form>
			    </div>
			    <div class="tab-pane" id="trueFalse">
			    	<form class="default-form">
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value ="">操作系统</option>
									  <option value ="">数据结构</option>
									  <option value="">计算机网络</option>
									  <option value="">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="tfStem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfOption1">选项一</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="" id="tfOption1">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfOption2">选项二</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="" id="tfOption2">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfAnswer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<div class="answerSelect">
		 	 							<label><input type="radio" name=tfAnswer/>选项一</label>
		 	 							<label><input type="radio" name=tfAnswer/>选项二</label>
		 	 						</div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfAnalysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="tfAnalysis" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox">同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="button" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</form>
			    </div>
			    <div class="tab-pane" id="blankFill">
			    	<form class="default-form">
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value ="">操作系统</option>
									  <option value ="">数据结构</option>
									  <option value="">计算机网络</option>
									  <option value="">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="bfStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="bfStem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="bfAnswer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="" id="bfAanswer" placeholder="请输入标准答案">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="bfAnalysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="bfAnalysis" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox">同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="button" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</form>
			    </div>
			    <div class="tab-pane" id="multipleSelect">
			    	<form class="default-form">
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value ="">操作系统</option>
									  <option value ="">数据结构</option>
									  <option value="">计算机网络</option>
									  <option value="">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="msStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="msStem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="multipleOption1">A、</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="multipleOption" id="multipleOption1">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="multipleOption2">B、</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="multipleOption" id="multipleOption2">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="button" class="btn btn-default multipleAppend" onclick="appendOption('.multipleAppend','multipleOption','multipleDisable')">
									 添加选项
									</button>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="answer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<div class="answerSelect">
		 	 							<label><input type="checkbox" name="multipleAnswer" class="multipleAnswer"/>A</label>
		 	 							<label><input type="checkbox" name="multipleAnswer" class="multipleAnswer"/>B</label>
		 	 							<label class="multipleDisable"><input type="checkbox" name=multipleAnswer class="multipleAnswer" disabled="disabled"/>C</label>
		 	 							<label class="multipleDisable"><input type="checkbox" name=multipleAnswer class="multipleAnswer" disabled="disabled"/>D</label>
		 	 							<label class="multipleDisable"><input type="checkbox" name=multipleAnswer class="multipleAnswer" disabled="disabled"/>E</label>
		 	 							<label class="multipleDisable"><input type="checkbox" name=multipleAnswer class="multipleAnswer" disabled="disabled"/>F</label>
		 	 							<label class="multipleDisable"><input type="checkbox" name=multipleAnswer class="multipleAnswer" disabled="disabled"/>G</label>
		 	 						</div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="analysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="analysis" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox">同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="button" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</form>
			    </div>
			    <div class="tab-pane" id="shortAnswer">
			    	<form class="default-form">
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value ="">操作系统</option>
									  <option value ="">数据结构</option>
									  <option value="">计算机网络</option>
									  <option value="">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="saStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="saStem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="saAnswer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="saAnswer" placeholder="请输入标准答案"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="saAnalysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="saAnalysis" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox">同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="button" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</form>
			    </div>
			  </div>
		</div>
		<div class="page-center-left">
			 <ul class="nav nav-pills qes-types">
			    <li class="active"><a href="#singleSelect" data-toggle="pill">单选题</a></li>
			    <li><a href="#trueFalse" data-toggle="pill">判断题</a></li>
			    <li><a href="#blankFill" data-toggle="pill">填空题</a></li>
			    <li><a href="#multipleSelect" data-toggle="pill">多选题</a></li>
			    <li><a href="#shortAnswer" data-toggle="pill">简答题</a></li>
			  </ul>
		</div>
	</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/addqes.js"></script>
</body>
</html>