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
        <p class="thumbnail">Directions: For this part, you are allowed 30 minutes to write a short essay. You should start your essay with a brief description of the picture and then express your views on the importance of doing small things before undertaking something big. You should write at least 120 words but no more than 180 words.</p>
        <h4>You are allowed 30 minutes to write a short essay. You should start your essay with a brief description of the picture and then express your views on the importance of doing small things before undertaking something big. You should write at least 120 words but no more than 180 words.
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

    But there are a few pilot schools already making the transition（过渡）over to digital books. Universities like Cornell and Brown have jumped onboard. And one medical program at the University of California, Irvine, gave their entire class iPads with which to download textbooks just last year. 

    But not all were eager to jump aboard. 

   "People were tired of using the iPad textbook besides using it for reading," says Kalpit Shah, who will be going into his second year at Irvine's medical program this fall. "They weren't using it as a source of communication because they couldn't read or write in it. So a third of the people in my program were using the iPad in class to take notes, the other third were using laptops and the last third were using paper and pencil.

    The reason it hasn't caught on yet, he tells me, is that the functionality of e-edition textbooks is incredibly limited, and some students just aren't motivated to learn new study behavior. 

    But a new application called Inkling might change all that. The company just released an updated version last week, and it'll be utilized in over 50 undergraduate and graduate classrooms this coming school year. 

    "Digital textbooks are not going to catch on," says Inkling CEO Matt MacInnis as he's giving me a demo（演示）over coffee. "What I mean by that is the current perspective of the digital textbook is it's an exact copy of the print book. There's Course Smart, etc., these guys who take any image of the page and put it on a screen. If that's how we're defining digital textbooks, there's no hope of that becoming a mainstream product." 

    He calls Inkling a platform for publishers to build rich multimedia content from the ground up, with a heavy emphasis on real-world functionality. The traditional textbook merely serves as a skeleton. 

    At first glance Inkling is an impressive experience. After swiping (触击) into the iPad app (应用软件), which you can get for free here, he opens up a few different types of textbooks. 

    Up first is a chemistry book. The boot time is pretty fast, and he navigates through (浏览 ) a few chapters before swiping into a fully rendered 3D molecule that can be spun around to view its various building blocks. "Publishers give us all of the source media, artwork, videos," he says, "We help them think through how to actually build something for this platform." 

    Next he pulls up a music composition textbook, complete with playable demos. It's a learning experience that attacks you from multiple sensory directions. It's clear why this would be something a music major would love. 

    But the most exciting part about Inkling, to me, is its notation（批注）system. Here's how it works:

    When you purchase a used print book, it comes with its previous owner's highlights and notes in the margins. It uses the experience of someone who already went through the class to help improve your reading (how much you trust each notation is obviously up to you). 

    But with lnkling, you can highlight a piece of content and make notes. Here's where things get interesting, though: If a particularly important passage is highlighted by multiple lnkling users, that information is stored on the cloud and is available for anyone reading the same textbook to come across. That means users have access to notes from not only their classmates and Facebook friends, but anyone who purchased the book across the country. The best comments are then sorted democratically by a voting system, meaning that your social learning experience is shared with the best and brightest thinkers. 

    As a bonus, professors can even chime in (插话 ) on discussions. They'll be able to answer the questions of students who are in their class directly via the interactive book. 

    Of course, Inkling addresses several of the other shortcomings in traditional print as well. Textbook versions are constanly updated, motivating publishers by minimizing production costs (the big ones like McGraw-Hill are already onboard). Furthermore, students will be able to purchase sections of the text instead of buying the whole thing, with individual chapters costing as little as $2.99. 

    There are, however, challenges. 

    "It takes efforts to build each book," MacInnis tells me. And it's clear why. Each interactive textbook is a media-heavy experience built from the ground up, and you can tell that it takes a respectable amount of manpower to put together each one 

    For now the app is also iPad-exclusive, and though a few of these educational institutions are giving the hardware away for free, for other students who don't have such a luxury it's an added layer of cost— and an expensive one at that. 

    But this much is clear: The traditional textbook model is and has been broken for quite some time. Whether digitally interactive ones like Inkling actually take off or not remains to be seen, and we probably won't have a definite answer for the next few years.

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