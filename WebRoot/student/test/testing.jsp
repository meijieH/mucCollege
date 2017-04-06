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
	<title>民大学院  学生测试</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/previewPaper.css">
    <link rel="stylesheet" href="css/testpaper.css">
     <link rel="stylesheet" href="css/testing.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body onload="startTime();">	
	<%@include file="/common/topbar.jsp" %>
  	<div class="page-center">
			<div class="page-center-right">
				<!--右侧未设置功能-->
				<div class="vertical-bar">
					<div class="htitle allview-tle clr-red">倒计时 <span><span id="hour">00</span>:<span id="min">00</span>:<span id="sec">00</span></span></div>
					<ul class="block-nav">
						<li>
							<div class="block-title-nav">一、单选题</div>
							<ul class="block-que-nav">
								<li>1</li>
								<li>2</li>
								<li>13</li>
							</ul>
						</li>
						<li>
							<div class="block-title-nav">二、多选题</div>
							<ul class="block-que-nav">
								<li>1</li>
							</ul>
						</li>
						<li>
							<div class="block-title-nav">三、判断题</div>
							<ul class="block-que-nav">
								<li>1</li>
								<li>2</li>
								<li>13</li>
								<li>1</li>
						
							</ul>
						</li>
						<li>
							<div class="block-title-nav">四、填空题</div>
							<ul class="block-que-nav">
								<li>1</li>
							</ul>
						</li>
						<li>
							<div class="block-title-nav">五、简答题</div>
							<ul class="block-que-nav">
								<li>1</li>
								<li>2</li>
								<li>13</li>
							</ul>
						</li>
						<li>
							<div class="block-title-nav">六、应用题</div>
							<ul class="block-que-nav">
								<li>1</li>
								<li>2</li>
								<li>13</li>
								<li>1</li>
								<li>2</li>
								<li>13</li>
								<li>1</li>
								<li>2</li>
								<li>13</li>
								<li>24</li>
								<li>25</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="testing-option">
					<button class="btn btn-agree">编辑</button>
					<button class="btn btn-agree">返回</button>
				</div>
			</div>
			<div class="page-center-left">
				<div>
			  		<h1 class="htitle paper-title">计算机网络期中测试卷（软工）<s:property value="testpaper.testpapername"/></h1>
			  		<p>问题数量：<s:property value="testpaper.questionnum"/> 
			  	总分：<s:property value="testpaper.totalscore"/> 
			  	总时间：<span id="totaltime"><s:property value="testpaper.totaltime"/>120</span>分钟</p>
			  	</div>
			  	<div class="paper-bar">
			  		<s:iterator value="blockList" status="status">
						<a href="test/test_showTestQuestion?block.blockid=<s:property value='blockid'/>"><s:property value="blockname"/></a>
					</s:iterator>
			  	</div>
				<div id="paperBlocks">
					<div id="blockSingleSelect">
						<div class="block-title">
							<span>一、（需要根据js动态改变）</span>
							<span>单选题</span>
							<span>( 共<b class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题 )</span>
						</div>
						<div class="question singleSelect">
							<div>
									<span>1、</span>
									<span class="score">（<b class="score-num">0</b>分）</span>
									<span class="stem">
										从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？
									</span>
							</div>
							<ul class="option">
								<li><label><input type="radio" value="A" name="1">A、武当山</label></li>
								<li><label><input type="radio" value="B" name="1">B、香山</label></li>
								<li><label><input type="radio" value="C" name="1">C、华山</label></li>
								<li><label><input type="radio" value="D" name="1">D、泰山</label></li>
							</ul>
						</div>
					</div>
					<div id="blockMultipleSelect">
						<div class="block-title">
							<span>二、（需要根据js动态改变）</span>
							<span>多选题</span>
							<span>( 共<b class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题 )</span>
						</div>
						<div class="question multipleSelect">
							<div>
									<span>1、</span>
									<span class="score">（<b class="score-num">0</b>分）</span>
									<span class="stem">
										从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？
									</span>
							</div>
							<ul class="option">
								<li><label><input type="radio" value="A" name="1">A、武当山</label></li>
								<li><label><input type="radio" value="B" name="1">B、香山</label></li>
								<li><label><input type="radio" value="C" name="1">C、华山</label></li>
								<li><label><input type="radio" value="D" name="1">D、泰山</label></li>
							</ul>
						</div>
					</div>
					<div id="blockJudgeSelect">
						<div class="block-title">
							<span>三、（需要根据js动态改变）</span>
							<span>判断题</span>
							<span>( 共<b class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题 )</span>
						</div>
						<div class="question judgeSelect">
							<div>
									<span>1、</span>
									<span class="score">（<b class="score-num">0</b>分）</span>
									<span class="stem">
										从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？（     ）
									</span>
							</div>
							<ul class="option tf-option">
								<li><label><input type="radio" value="1" name="1">对</label></li>
								<li><label><input type="radio" value="0" name="1">错</label></li>
							</ul>
						</div>
					</div>
					<div id="blockBlankFill">
						<div class="block-title">
							<span>四、（需要根据js动态改变）</span>
							<span>填空题</span>
							<span>( 共<b class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题 )</span>
						</div>
						<div class="question blankFill">
							<div>
									<span>1、</span>
									<span class="score">（<b class="score-num">0</b>分）</span>
									<span class="stem">
										从前有座山，山里有座庙，庙里有个小和尚。那座山叫_____？
									</span>
							</div>
							<ul class="option">
								<li>
									<input type="text" class="text-answer"/>	
								</li>
							</ul>
						</div>
					</div>
					<div id="blockShortAnswer">
						<div class="block-title">
							<span>五、（需要根据js动态改变）</span>
							<span>简答题</span>
							<span>( 共<b class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题 )</span>
						</div>
						<div class="question shortAnswer">
							<div>
									<span>1、</span>
									<span class="score">（<b class="score-num">0</b>分）</span>
									<span class="stem">
										从前有座山，山里有座庙，庙里有个小和尚。那座山叫？
									</span>
							</div>
							<ul class="option">
								<li>
									<textarea rows="4" cols="" class="text-answer"></textarea>
								</li>
							</ul>
						</div>
					</div>
					<div id="blockSynthesis">
						<div class="block-title">
							<span>六、（需要根据js动态改变）</span>
							<span>应用题</span>
							<span>( 共<b class="blockTotalScore">0</b>分，共<b class="blockTotalAmount">0</b>题 )</span>
						</div>
						<div class="question synthesis">
							<div>
									<span>1、</span>
									<span class="score">（<b class="score-num">0</b>分）</span>
									<span class="stem">
										从前有座山，山里有座庙，庙里有个小和尚。那座山叫？
									</span>
							</div>
							<ul class="option">
								<li>
									<textarea rows="4" cols="" class="text-answer"></textarea>
								</li>
							</ul>
						</div>
					</div>
				</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/papernav.js"></script>
	<script src="js/testing.js"></script>
</body>
</html>