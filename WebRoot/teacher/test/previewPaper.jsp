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
	<title>民大学院 预览试卷</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/previewPaper.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<form action="">
			<div class="paper-title">
				<div>
					<span>整体难度：难</span>
					<span>考试时间：2017/1/5  23：00~2017/1/5 24：00</span>
					<span>考试时长：2h</span>
				</div>
				<label>试卷名：</label><input type="text" value="自动组卷页面填的试卷名（js）"/>
			</div>
			<div id="blockSingleSelect">
				<div class="block-title">
					<span>一、（需要根据js动态改变）</span>
					<span>单选题</span>
					<span>( 共2分，共3题 )（分数需要js改变）</span>
				</div>
				<div class="question singleSelect">
					<div>
							<span>1、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？
							</span>
					</div>
					<ul class="option">
						<li>A、武当山</li>
						<li>B、香山</li>
						<li>C、泰山</li>
						<li>D、华山</li>
					</ul>
				</div>
				<div class="question singleSelect">
					<div>
							<span>2、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？
							</span>
					</div>
					<ul class="option">
						<li>A、武当山</li>
						<li>B、香山</li>
						<li>C、泰山</li>
						<li>D、华山</li>
					</ul>
				</div>
			</div>
			<div id="blockMultipleSelect">
				<div class="block-title">
					<span>二、（需要根据js动态改变）</span>
					<span>多选题</span>
					<span>( 共2分，共3题 )（分数需要js改变）</span>
				</div>
				<div class="question multipleSelect">
					<div>
							<span>1、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？
							</span>
					</div>
					<ul class="option">
						<li>A、武当山</li>
						<li>B、香山</li>
						<li>C、泰山</li>
						<li>D、华山</li>
					</ul>
				</div>
				<div class="question multipleSelect">
					<div>
							<span>2、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？
							</span>
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
					<span>三、（需要根据js动态改变）</span>
					<span>判断题</span>
					<span>( 共2分，共3题 )（分数需要js改变）</span>
				</div>
				<div class="question judgeSelect">
					<div>
							<span>1、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？（     ）
							</span>
					</div>
				</div>
				<div class="question judgeSelect">
					<div>
							<span>2、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫什么名字？（    ）
							</span>
					</div>
				</div>
			</div>
			<div id="blockBlankFill">
				<div class="block-title">
					<span>四、（需要根据js动态改变）</span>
					<span>填空题</span>
					<span>( 共2分，共3题 )（分数需要js改变）</span>
				</div>
				<div class="question blankFill">
					<div>
							<span>1、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫_____？
							</span>
					</div>
				</div>
				<div class="question blankFill">
					<div>
							<span>2、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫_____？
							</span>
					</div>
				</div>
			</div>
			<div id="blockShortAnswer">
				<div class="block-title">
					<span>五、（需要根据js动态改变）</span>
					<span>简答题</span>
					<span>( 共2分，共3题 )（分数需要js改变）</span>
				</div>
				<div class="question shortAnswer">
					<div>
							<span>1、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫？
							</span>
					</div>
				</div>
				<div class="question shortAnswer">
					<div>
							<span>2、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫？
							</span>
					</div>
				</div>
			</div>
			<div id="blockSynthesis">
				<div class="block-title">
					<span>六、（需要根据js动态改变）</span>
					<span>应用题</span>
					<span>( 共2分，共3题 )（分数需要js改变）</span>
				</div>
				<div class="question synthesis">
					<div>
							<span>1、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫？
							</span>
					</div>
				</div>
				<div class="question synthesis">
					<div>
							<span>2、（这里是题目在大题中的编号）</span>
							<span class="score">（2分）（这里是题目的分数）</span>
							<span class="stem">
								从前有座山，山里有座庙，庙里有个小和尚。那座山叫？
							</span>
					</div>
				</div>
			</div>
			<div class="control">
				<button class="btn btn-agree">保存</button>
			</div>
		</form>
	</div>	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>