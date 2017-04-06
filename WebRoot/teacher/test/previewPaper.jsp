<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="struts" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>民大学院 预览试卷</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/previewPaper.css">
<link rel="shortcut icon" href="images/logo.png">
</head>
<body onload="setPreAttr();">
	<%@include file="/common/topbar.jsp"%>
	<div class="page-center">
		<form action="">
			<div class="paper-title">
				<div>
					<span>整体难度：难</span> <span>总分：<b id="totalScore">0</b>分</span>
				</div>
				<label>试卷名：</label><input type="text" id="paperTitle"
					value="自动组卷页面填的试卷名（js）" />
			</div>
			<div id="paperBlocks">
				<div id="blockSingleSelect">
					<div class="block-title">
						<span>一、</span> <span>单选题</span> <span>( 共<b
							class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题
							)</span>
					</div>
					<ul>
						<s:iterator value="danxuanList" status="status" >
						<li>
							<div class="question singleSelect">
								<div>
									<span><s:property value="status.index+1" /></span> <span class="score">（<b
										class="score-num">3</b>分）</span> <span class="stem">
										<s:property value="stem"/></span>
								</div>
								<ul class="option">
									<li><s:property value="option1"/></li>
									<li><s:property value="option2"/></li>
									<li><s:property value="option3"/></li>
									<li><s:property value="option4"/></li>
								</ul>
							</div>
						</li>
						</s:iterator>
					</ul>
				</div>
				<div id="blockMultipleSelect">
					<div class="block-title">
						<span>二、（需要根据js动态改变）</span> <span>多选题</span> <span>( 共<b
							class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题
							)</span>
					</div>
					<div class="question multipleSelect">
						<div>
							<span>1、（这里是题目在大题中的编号）</span> <span class="score">（<b
								class="score-num">0</b>分）</span> <span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？ </span>
						</div>
						<ul class="option">
							<li>A、武当山</li>
							<li>B、香山</li>
							<li>C、泰山</li>
							<li>D、华山</li>
						</ul>
					</div>
				</div>
				<div id="blockJudgeSelect">
					<div class="block-title">
						<span>三、（需要根据js动态改变）</span> <span>判断题</span> <span>( 共<b
							class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题
							)</span>
					</div>
					<div class="question judgeSelect">
						<div>
							<span>1、（这里是题目在大题中的编号）</span> <span class="score">（<b
								class="score-num">0</b>分）</span> <span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？（ ） </span>
						</div>
					</div>
				</div>
				<div id="blockBlankFill">
					<div class="block-title">
						<span>四、（需要根据js动态改变）</span> <span>填空题</span> <span>( 共<b
							class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题
							)</span>
					</div>
					<div class="question blankFill">
						<div>
							<span>1、（这里是题目在大题中的编号）</span> <span class="score">（<b
								class="score-num">0</b>分）</span> <span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫_____？ </span>
						</div>
					</div>
				</div>
				<div id="blockShortAnswer">
					<div class="block-title">
						<span>五、（需要根据js动态改变）</span> <span>简答题</span> <span>( 共<b
							class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题
							)</span>
					</div>
					<div class="question shortAnswer">
						<div>
							<span>1、（这里是题目在大题中的编号）</span> <span class="score">（<b
								class="score-num">0</b>分）</span> <span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫？ </span>
						</div>
					</div>
				</div>
				<div id="blockSynthesis">
					<div class="block-title">
						<span>六、（需要根据js动态改变）</span> <span>应用题</span> <span>( 共<b
							class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题
							)</span>
					</div>
					<div class="question synthesis">
						<div>
							<span>1、（这里是题目在大题中的编号）</span> <span class="score">（<b
								class="score-num">0</b>分）</span> <span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫？ </span>
						</div>
					</div>
				</div>
			</div>
			<div class="control">
				<button class="btn btn-agree">保存</button>
				<button class="btn btn-agree">保存并应用</button>
			</div>
		</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/autoassem.js"></script>
</body>
</html>