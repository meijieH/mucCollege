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
	<title>四六级模考</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/testing.css">
</head>

<body class="container" data-spy="scroll" data-target=".navbar">	
	<div class="panel panel-default">
	  <div class="panel-body">
	     <h1>四六级模考</h1>
	     <p>
	        <span>总分：100</span>&nbsp;&nbsp;&nbsp;
	        <span>倒计时：1:40:20</span>&nbsp;&nbsp;&nbsp;
	        <a href="#" class="btn btn-default">全屏浏览</a>
	     </p>
	     <p>卷面各题型分值说明</p>
	     <ul> 
	        <li>作文：15分</li>
	        <li>快速阅读：10分，每题1分</li>
	        <li>听力：35分，每题1分</li>
	        <li>阅读：25分，选词填空每题0.5分，篇章阅读每题2分</li>
	        <li>完形填空：15分，每题0.5分</li>
	        <li>翻译5分，每题1分</li>
	     </ul>
	  </div>
	</div>
	
	<nav class="navbar navbar-default nav-testing">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">四六级模考</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="#plate1">作文</a></li>
	      <li><a href="#plate2">快速阅读</a></li>
	      <li><a href="#plate3">听力</a></li>
	      <li><a href="#plate4">阅读理解</a></li>
	      <li><a href="#plate5">完形填空</a></li>
	      <li><a href="#plate6">翻译</a></li>
	    </ul>
	  </div>
	</nav>
	
	<div id="plate1">    
        <h2>一、作文</h2>
        <p class="thumbnail">
        	ections: For this part, you are allowed 30 minutes to write a short essay. You should start your essay with a brief description of the picture and then express your views on the importance of doing small things before undertaking something big. You should write at least 120 words but no more than 180 words.
        </p>
        <h4>
        	You are allowed 30 minutes to write a short essay. You should start your essay with a brief description of the picture and then express your views on the importance of doing small things before undertaking something big. You should write at least 120 words but no more than 180 words.
           <img src="images/dad-son.jpg" style="display:block;"/>
          子：Dad, I'm a bit worried about disposing of nuclear waste（处理核废料）
          父：If you can empty the dustbin（垃圾筒） here, you can do anything
        </h4>
         <div class="form-group">
			  <textarea class="form-control" rows="5" id="answer" placeholder="在这里写答案"></textarea>
		</div>
    </div> 
	
	<div id="plate2">    
        <h2>二、快速阅读</h2>
        <p class="thumbnail">Directions:In this part, you will have 15 minutes to go over the passage quickly . For questions 1-7, choose the best answer from the four choices marked [A], [B], [C] and [D]. For questions 8-10, complete the sentences with the information given in the passage.</p>
        <p>
            Can Digital Textbooks Truly Replace the Print Kind?

    The shortcomings of traditional print edition textbooks are obvious: For starters they're heavy, with the average physics textbook weighing 3.6 pounds. They're also expensive, especially when you factor in the average college student's limited budget, typically costing hundreds of dollars every semester. 

     But the worst part is that print version of textbooks are constantly undergoing revisions. Many professors require that their students use only the latest versions in the classroom, essentially rendering older texts unusable. For students, it means they're basically stuck with a four pound that they can't sell back.

    Which is why digital textbooks, if they live up to their promise, could help ease many of these shortcomings. But till now, they've been something like a mirage (幻影) in the distance, more like a hazy（模糊的）dream than an actual reality. Imagine the promise: Carrying all your textbooks in a 1.3 pound iPad? It sounds almost too good to be true.  
    However the solution to any problem begins with a step in a direction. And at least for now, that hazy mirage in the distance? A little more tangible (可触摸的), a little less of a dream.
        </p>
         <div class="form-group">
			  <label for="answer">答:</label>
			  <textarea class="form-control" rows="5" id="answer" placeholder="在这里写答案"></textarea>
		</div>
    </div> 
	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/testing.js"></script>
</body>
</html>