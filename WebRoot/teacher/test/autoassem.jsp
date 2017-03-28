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
  <title>民大学院 自动组卷</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/autoassem.css">
  <link rel="shortcut icon" href="images/logo.png">
</head>
<body>  
  <%@include file="/common/topbar.jsp" %>
  <div class="page-center">
  	<form action="" >
	    <div class="page-center-right">
	      <div class="tab-sheets">
	          <div class="ranges-box">
	          	<div class="htitle">已选范围(从我的题库)</div>
	           	<div class="ranges" id="ranges">
	           		<ul>
					<s:iterator value="collecStrings">
						<li class="display-none" onclick="window.open('teacher/teacher_getMyCollection?collection.collectionname=<s:property />')"><s:property />
							<i class="fa fa-close" aria-hidden="true" onclick="deleteRanges('range1',this);"></i>
						</li>
					</s:iterator>
	           		</ul>
	           	</div>  
	          </div>
	          <div class="setting-box default-form">
	          	<div class="htitle">试卷设置</div>
	          	<ul>
	          		<li>
	          			<span class="left-span">*试卷名称</span>
	 					<span class="right-span">
	 						<input type="text" id="prePaperTitle"/>
	 					</span>
	          		</li>
	          		<li>
	          			<span class="left-span">*整体难度</span>
	 					<span class="right-span diff">
	 						<label><input type="radio" name="diff"/>容易</label>
		 					<label><input type="radio" name="diff"/>普通</label>
		 					<label><input type="radio" name="diff"/>困难</label>
	 					</span>
	          		</li>
	          		<!--<li>
	          			<span class="left-span">*开始时间</span>
	 					<span class="right-span">
	 						<span><input type="datetime-local"/></span>
	 					</span>
	          		</li>
	          		<li>
	          			<span class="left-span">*结束时间</span>
	 					<span class="right-span">
	 						<span><input type="datetime-local"/></span>
	 					</span>
	          		</li>  -->
	          	</ul>
	          </div>
	          <div class="htitle">题型、题量、预设分值</div>
	          <div class="q-choose">
	            <div class="q-whole">
	              <div class="q-type default-form">
	                <ul>
	                  <li>
	                    <span class="left-span"><label>单选题</label></span>
	                    <span class="right-span">
	                    	<input type="number" min="0" max="23" value="0" class="amount" onkeyup="countScore();" onchange="countScore();"></input><label>道 （最多23道）</label>
	                    	<input type="number" min="1" max="20" value="1" class="perScore" onkeyup="countScore();" onchange="countScore();"></input><label>道 / 分 </label>
	                    </span>
	                  </li>
	                  <li>
	                    <span class="left-span"><label>多选题</label></span>
	                    <span class="right-span">
	                    	<input type="number" min="0" max="23" value="0" class="amount" onkeyup="countScore();" onchange="countScore();"></input><label>道 （最多23道）</label>
	                    	<input type="number" min="1" max="20" value="1" class="perScore" onkeyup="countScore();" onchange="countScore();"></input><label>道 / 分 </label>
	                    </span>
	                  </li>
	                  <li class="singleDisable">
	                  <span class="left-span"><label>判断题</label></span>
	                    <span class="right-span">
	                    	<input type="number" min="0" max="23" value="0" class="amount" onkeyup="countScore();" onchange="countScore();"></input><label>道 （最多23道）</label>
	                    	<input type="number" min="1" max="20" value="1" class="perScore" onkeyup="countScore();" onchange="countScore();"></input><label>道 / 分 </label>
	                    </span>
	                  </li>
	                  <li>
	                    <span class="left-span"><label>填空题</label></span>
	                    <span class="right-span">
	                    	<input type="number" min="0" max="23" value="0" class="amount" onkeyup="countScore();" onchange="countScore();"></input><label>道 （最多23道）</label>
	                    	<input type="number" min="1" max="20" value="1" class="perScore" onkeyup="countScore();" onchange="countScore();"></input><label>道 / 分 </label>
	                    </span>
	                  </li>
	                  <li>
	                    <span class="left-span"><label>简答题</label></span>
	                    <span class="right-span">
	                    	<input type="number" min="0" max="23" value="0" class="amount" onkeyup="countScore();" onchange="countScore();"></input><label>道 （最多23道）</label>
	                    	<input type="number" min="1" max="20" value="1" class="perScore" onkeyup="countScore();" onchange="countScore();"></input><label>道 / 分 </label>
	                    </span>
	                  </li>
	                  <li>
	                    <span class="left-span"><label>应用题</label></span>
	                    <span class="right-span">
	                    	<input type="number" min="0" max="23" value="0" class="amount" onkeyup="countScore();" onchange="countScore();"></input><label>道 （最多23道）</label>
	                    	<input type="number" min="1" max="20" value="1" class="perScore" onkeyup="countScore();" onchange="countScore();"></input><label>道 / 分 </label>
	                    </span>
	                  </li>
	                  
	                </ul>
	              </div>
	            </div>
	          </div>
          	  <div class="htitle">合计</div>
         	  <div class="count-detail">总计<span id="preTotalScore">0</span>分。</div>
	          <div class="preview-control">
	          	<button class="btn btn-agree" onclick="previewPaper();window.open('teacher/test/previewPaper.jsp','_blank');" >设置好了，预览试卷</button>
	          </div>
	      </div>
	    </div>
	    <div class="page-center-left">
	      <div class="htitle myqes-title">我的题库</div>
	      <!--<ul class="nav nav-tabs choose-ways">
	        <li><a href="#article" data-toggle="tab">按章节</a></li>
	        <li class="active"><a href="#que" data-toggle="tab">我的题库</a></li>
	      </ul>-->
	      <div class="tab-content">
	        <!--<div class="tab-pane choose-pane" id="home">
	          	 按章节选范围未实现
	        </div>-->
	        <div class="tab-pane choose-pane active" id="que">
	            <ul class="from-myqes">
	              <li>
	              	<input type="checkbox" onclick="controlRanges(this)" name="myqes" value="我的题库一"/>
	                <span id="range1" onclick="viewRanges(this);">我的题库一</span>
	              </li>
	              <li>
	              	<input type="checkbox" onclick="controlRanges(this)" name="myqes" value="我的题库二"/>
	                <span id="range2" onclick="viewRanges(this);">我的题库二</span>
	              </li>
	              <li>
	              	<input type="checkbox" onclick="controlRanges(this)" name="myqes" value="我的题库三"/>
	                <span id="range3" onclick="viewRanges(this);">我的题库三</span>
	              </li> 
	            </ul>
	        </div>
	      </div>
	    </div>
    </form>   
  </div>  
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="js/autoassem.js"></script>
</body>
</html>