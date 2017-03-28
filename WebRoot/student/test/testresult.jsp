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
	<title>民大学院 我的考试 考试结果查询</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/testresult.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="content-describe paper-info">
			<div class="paper-title">简单的单元小测试</div>
			<div class="detail">
				<div class="paper-tea">任课教师:<span>李老师</span></div>
				<div class="paper-course">所属课程:<span>计算机基础</span></div>
				<div class="paper-range">排名:<span class="clr-green">1</span></div>
			</div>
			<div class="detail">
				<div class="paper-time">历时:<span class="clr-blue">1h 3min</span></div>
				<div class="paper-notnull">完成率:<span class="clr-blue">98%</span></div>
				<div class="paper-score">本次得分:<span class="clr-red">89</span></div>
			</div>
		</div>
		<div class="page-center-right">
			<div class="result-analysis">
				<div class="chart-name">失分靶向</div>
				<div id="lossScore" style="height:225px;">Echar 饼形图</div>
			</div>
		</div>
		<div class="page-center-left">
			<div id="paperBlocks">
				<div id="blockSingleSelect">
					<div class="block-title">
						<span>一、</span>
						<span>单选题</span>
						<span>( 共<b class="blockTotalScore">20</b>分，共<b class="blockTotalAmount">10</b>题 )</span>
					</div>
					<div class="question singleSelect">
						<div>
								<span>1、</span>
								<span class="score">（<b class="score-num">2</b>分）</span>
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
						<div class="answer-score">
							<div class="fr que-score">您的得分：<span class="clr-green">2</span></div>
							<div class="">您的答案：<span  class="clr-blue">A</span></div>
						</div>
						<div class="analysis">
							<div class="">知识点：<span class="clr-grey">华山文化</span></div>
							<div class="">正确答案：<span class="clr-green">A</span></div>
							<div class="">解析：<span  class="clr-linkblue">本题……故选A</span></div>
						</div>
					</div>
				</div>
				<div id="blockMultipleSelect">
					<div class="block-title">
						<span>二、</span>
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
							<li>A、武当山</li>
							<li>B、香山</li>
							<li>C、泰山</li>
							<li>D、华山</li>
						</ul>
						<div class="answer-score">
							<div class="fr que-score">您的得分：<span class="clr-green">2</span></div>
							<div class="">您的答案：<span  class="clr-blue">A</span></div>
						</div>
						<div class="analysis">
							<div class="">知识点：<span class="clr-grey">华山文化</span></div>
							<div class="">正确答案：<span class="clr-green">A</span></div>
							<div class="">解析：<span  class="clr-linkblue">本题……故选A</span></div>
						</div>
					</div>
				</div>
				<div id="blockJudgeSelect">
					<div class="block-title">
						<span>三、</span>
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
					</div>
				</div>
				<div id="blockBlankFill">
					<div class="block-title">
						<span>四、</span>
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
					</div>
				</div>
				<div id="blockShortAnswer">
					<div class="block-title">
						<span>五、</span>
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
					</div>
				</div>
				<div id="blockSynthesis">
					<div class="block-title">
						<span>六、</span>
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
					</div>
				</div>
			</div>
		</div>
	</div>	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/echarts.js"></script>
<script type="text/javascript">
     // 路径配置
     require.config({
         paths: {
             echarts: 'js'
         }
     });
     // 使用
       require(
           [
               'echarts',
               'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
           ],
           function (ec) {
               // 基于准备好的dom，初始化echarts图表
               var myChart = ec.init(document.getElementById('lossScore')); 
               var option = {
               		color: ['#e52c3c','#f7b1ab','#fa506c','#f59288','#f8c4d8',
            		'#e54f5c','#f06d5c','#e54f80','#f29c9f','#eeb5b7'],
				     tooltip : {
				        trigger: 'axis'
				    },
				    series : [
				        {
				            type:'pie',
				            radius : '50%',
				            center: ['50%', '50%'],
				            data:[
				                {value:335, name:'奈氏准则'},
				                {value:310, name:'码元'},
				                {value:234, name:'波特'},
				                {value:135, name:'带宽'},
				                {value:1548, name:'TCP/IP'}
				            ]
				        }
				    ]
				};
               // 为echarts对象加载数据 
               myChart.setOption(option); 
           }
       );
</script>
</body>
</html>