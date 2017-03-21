<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="page-center-right">
			  <div class="tab-content">
			    <div class="tab-pane active" id="singleSelect">
			    	<s:form cssClass="default-form" action="teacher/teacher_addQuestion" method="post">
			    	<s:hidden name="question.quetype.quetypeid" value="1"></s:hidden>
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select name="collection.collectionname">
									  <option value ="操作系统">操作系统</option>
									  <option value ="数据结构">数据结构</option>
									  <option value="计算机网络">计算机网络</option>
									  <option value="组成原理">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label>学科</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value="">计算机</option>
									  <option value="">哲学</option>
									  <option value="">民族学</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="sgStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="sgStem" name="question.stem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="singleOption1">A、</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="singleOption" id="singleOption1" name="question.option1">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="singleOption2">B、</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="singleOption" id="singleOption2" name="question.option2">
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
		 	 							<label><input type="radio" name="question.answer" value="A" class="singleAnswer"/>A</label>
		 	 							<label><input type="radio" name="singleAnswer" value="B" class="singleAnswer"/>B</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="C" class="singleAnswer" disabled="disabled"/>C</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="D" class="singleAnswer" disabled="disabled"/>D</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="E" class="singleAnswer" disabled="disabled"/>E</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="F" class="singleAnswer" disabled="disabled"/>F</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="G" class="singleAnswer" disabled="disabled"/>G</label>
		 	 						</div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="analysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="analysis" name="question.annotation" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox"  value="true" name="question.isvisiable" >同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="submit" class="btn btn-agree">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</s:form>
			    </div>
			    <div class="tab-pane" id="trueFalse">
			    	<s:form cssClass="default-form" action="teacher/teacher_addQuestion" method="post">
			    	<s:hidden name="question.quetype.quetypeid" value="3"></s:hidden>
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select name="collection.collectionname">
									  <option value ="操作系统">操作系统</option>
									  <option value ="数据结构">数据结构</option>
									  <option value="计算机网络">计算机网络</option>
									  <option value="组成原理">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label>学科</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value="">计算机</option>
									  <option value="">哲学</option>
									  <option value="">民族学</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="tfStem" name="question.stem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfOption1">选项一</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="" name="question.option1" id="tfOption1">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfOption2">选项二</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="" name="question.option2" id="tfOption2">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfAnswer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<div class="answerSelect">
		 	 							<label><input type="radio" name="question.answer" value="对"/>选项一</label>
		 	 							<label><input type="radio" name="question.answer"  value="错"/>选项二</label>
		 	 						</div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="tfAnalysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="tfAnalysis" name="question.annotation" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox"  value="true" name="question.isvisiable" >同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="submit" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</s:form>
			    </div>
			    <div class="tab-pane" id="blankFill">
			    	<s:form cssClass="default-form" action="teacher/teacher_addQuestion" method="post">
			    	<s:hidden name="question.quetype.quetypeid" value="2"></s:hidden>
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select name="collection.collectionname">
									  <option value ="操作系统">操作系统</option>
									  <option value ="数据结构">数据结构</option>
									  <option value="计算机网络">计算机网络</option>
									  <option value="组成原理">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label>学科</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value="">计算机</option>
									  <option value="">哲学</option>
									  <option value="">民族学</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="bfStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="bfStem" name="question.stem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="bfAnswer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="" id="bfAanswer" name="question.answer" placeholder="请输入标准答案">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="bfAnalysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="bfAnalysis" name="question.annotation" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox"  value="true" name="question.isvisiable" >同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="submit" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</s:form>
			    </div>
			    <div class="tab-pane" id="multipleSelect">
			    	<s:form cssClass="default-form" action="teacher/teacher_addQuestion" method="post">
			    	<s:hidden name="question.quetype.quetypeid" value="6"></s:hidden>
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select name="collection.collectionname">
									  <option value ="操作系统">操作系统</option>
									  <option value ="数据结构">数据结构</option>
									  <option value="计算机网络">计算机网络</option>
									  <option value="组成原理">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label>学科</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value="">计算机</option>
									  <option value="">哲学</option>
									  <option value="">民族学</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="msStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="msStem" name="question.stem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="multipleOption1">A、</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="multipleOption" name="question.option1" id="multipleOption1">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="multipleOption2">B、</label></span>
		 	 					<span class="right-span">
		 	 						<input type="text" class="multipleOption" name="question.option2" id="multipleOption2">
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button  type="button"  class="btn btn-default multipleAppend" onclick="appendOption('.multipleAppend','multipleOption','multipleDisable');">
									 添加选项
									</button>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="answer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<div class="answerSelect">
		 	 							<label><input type="radio" name="question.answer" value="A" class="singleAnswer"/>A</label>
		 	 							<label><input type="radio" name="singleAnswer" value="B" class="singleAnswer"/>B</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="C" class="singleAnswer" disabled="disabled"/>C</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="D" class="singleAnswer" disabled="disabled"/>D</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="E" class="singleAnswer" disabled="disabled"/>E</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="F" class="singleAnswer" disabled="disabled"/>F</label>
		 	 							<label class="singleDisable"><input type="radio" name="question.answer" value="G" class="singleAnswer" disabled="disabled"/>G</label>
		 	 						</div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="analysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="analysis" name="question.annotation" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox"  value="true" name="question.isvisiable" >同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="submit" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</s:form>
			    </div>
			    <div class="tab-pane" id="shortAnswer">
			    	<s:form cssClass="default-form" action="teacher/teacher_addQuestion" method="post">
			    	<s:hidden name="question.quetype.quetypeid" value="4"></s:hidden>
			    		<ul>
						    <li>
		 	 					<span class="left-span"><label>当前题夹</label></span>
		 	 					<span class="right-span">
		 	 						<select name="collection.collectionname">
									  <option value ="操作系统">操作系统</option>
									  <option value ="数据结构">数据结构</option>
									  <option value="计算机网络">计算机网络</option>
									  <option value="组成原理">组成原理</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label>学科</label></span>
		 	 					<span class="right-span">
		 	 						<select>
									  <option value="">计算机</option>
									  <option value="">哲学</option>
									  <option value="">民族学</option>
									</select>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="saStem">请输入题干</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="saStem" name="question.stem" placeholder="在这里输入题目"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="saAnswer">标准答案</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="saAnswer" name="question.answer" placeholder="请输入标准答案"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for="saAnalysis">答案解析</label></span>
		 	 					<span class="right-span">
		 	 						<textarea class="" id="saAnalysis" name="question.annotation" placeholder="请输入答案解析"></textarea>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<div class="checkbox">
							           <label><input type="checkbox"  value="true" name="question.isvisiable" >同时分享到民大题库（公开）</label>
							        </div>
						        </span>
						    </li>
						    <li>
		 	 					<span class="left-span"><label for=""></label></span>
		 	 					<span class="right-span">
		 	 						<button type="submit" class="btn btn-agree" onclick="">
									 保存
									</button>
						        </span>
						    </li>
			    		</ul>
			    	</s:form>
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