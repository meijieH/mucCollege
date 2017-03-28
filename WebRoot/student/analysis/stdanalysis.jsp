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
	<title>民大学院 学习分析</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/std_analysis.css">
    <link rel="shortcut icon" href="images/logo.png">
</head>
<body>	
	<%@include file="/common/topbar.jsp" %>
	<div class="page-center">
		<div class="content-describe lesson-select">
			<div class="htitle">课程状态</div>
			<select>
				<option>正在开课</option>
				<option>等</option>
			</select>
			<div class="htitle">课程名</div>
			<select>
				<option>学生课程一</option>
				<option>学生课程二</option>
				<option>学生课程三</option>
				<option>学生课程四</option>
			</select>
			<button class="btn btn-agree">选择</button>
		</div>
		<div class="content-describe">
			<div class="char-title">重点考查VS自身能力</div>
			<div id="emphasisRadar" style="width:1012px;height:400px;">radar 图</div>
			<div>图例</div>
			<div>建议数据库ALPHA语言加强练习</div>
		</div>
		<div class="content-describe">
			<div class="char-title">学习轨迹</div>
			<div id="learntrail" style="width:1012px;height:400px;">横坐标按周 （第一周）纵坐标按做题量</div>
			<div>
				<p>本周有勤劳的小伙伴做了33题呢</p>
				<p>你做了<span>3</span>题，要继续努力!</p>
			</div>
		</div>
		<div class="page-center-right content-describe">
			<div class="char-title">测验分析</div>
			<div>在本课程的3次测验中，</div>
		</div>
		<div class="page-center-left content-describe">iii</div>
		
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
     
     require(
         [
             'echarts',
			 'echarts/chart/radar',
			 'echarts/chart/line'
         ],DrawCharts
     );
     
     function DrawCharts(ec) {
     	drawline(ec);
		drawRadar(ec);
	 }
     
     
       function drawline(ec) {
				//第二个图
				console.log(22);
			   var learntrail = ec.init(document.getElementById('learntrail')); 
	           var option = {
				    title : {
				        text: '最近一周学习记录',
				    },
				    tooltip : {
				        trigger: 'axis'
				    },
				    legend: {
				        data:['最高气温','最低气温']
				    },
				    toolbox: {
				        show : true,
				        feature : {
				            mark : {show: true},
				            dataView : {show: true, readOnly: false},
				            magicType : {show: true, type: ['line', 'bar']},
				        }
				    },
				    calculable : true,
				    xAxis : [
				        {
				            type : 'category',
				            boundaryGap : false,
				            data : ['周一','周二','周三','周四','周五','周六','周日']
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value',
				            axisLabel : {
				                formatter: '{value} °C'
				            }
				        }
				    ],
				    series : [
				        {
				            name:'最高气温',
				            type:'line',
				            data:[11, 11, 15, 13, 12, 13, 10],
				            markPoint : {
				                data : [
				                    {type : 'max', name: '最大值'},
				                    {type : 'min', name: '最小值'}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name: '平均值'}
				                ]
				            }
				        },
				        {
				            name:'最低气温',
				            type:'line',
				            data:[1, -2, 2, 5, 3, 2, 0],
				            markPoint : {
				                data : [
				                    {name : '周最低', value : -2, xAxis: 1, yAxis: -1.5}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name : '平均值'}
				                ]
				            }
				        }
				    ]
				};
	           learntrail.setOption(option,true); 
	           //第二个图结束
	}

	function drawRadar(ec) {
			console.log(11);
         //第一个图
         var emphasisRadar = ec.init(document.getElementById('emphasisRadar')); 
     	           var option = {
					    title : {
					        text: ''
					    },
					    color: [ 
							    '#2ec7c9','#b6a2de','#5ab1ef','#ffb980','#d87a80',
						        '#8d98b3','#e5cf0d','#97b552','#95706d','#dc69aa',
						        '#07a2a4','#9a7fd1','#588dd5','#f5994e','#c05050',
						        '#59678c','#c9ab00','#7eb00a','#6f5553','#c14089'
				        ],
				         tooltip : {
					        trigger: 'axis'
					    },
					    legend: {
					        orient : 'vertical',
					        x : 'right',
					        y : 'bottom',
					        data:['考查题目','正确数']
					    },
					    polar : [
					       {
					           indicator : [
					               { text: 'QBE语言', max: 100},
					               { text: 'SQL查询', max: 100},
					               { text: '数据模式', max: 100},
					               { text: '视图', max: 100},
					               { text: '唯一索引', max: 100},
					               { text: '数据完整性', max: 100}
					            ]
					        }
					    ],
					    series : [
					        {
					            name: '重点考查VS 自身能力',
					            type: 'radar',
					            data : [
					                {
					                    value : [77, 46, 73, 72, 57, 86],
					                    name : '正确数'
					                },
					                 {
					                    value : [87, 56, 83, 82, 77, 66],
					                    name : '考查题数'
					                }
					            ]
					        }
					    ]
				};
				console.log(111);
				emphasisRadar.setOption(option,true); 
		}
</script>
<script src="js/stdanalysis.js"></script>
</body>
</html>
