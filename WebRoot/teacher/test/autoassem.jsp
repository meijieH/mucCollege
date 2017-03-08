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
    <link rel="stylesheet" href="css/font-aswome.min.css">
</head>
<body>  
  <%@include file="/common/topbar.jsp" %>
  <div class="page-center">
    <div class="page-center-right">
      <div class="tab-sheets">
        <form>
          <div class="htitle"><span>已选范围</span></div>
          <div><p>* 这边是已选上的知识点 *</p></div>  
          <div class="htitle"><span>试卷设置</span></div>
          <div class="setting">
            <div class="diff">
              <span>整体难度：</span>
              <span><input type="radio">容易</span>
              <span><input type="radio">普通</span>
              <span><input type="radio">困难</span>
            </div>
            <div class="settest-time">
              <span> 开始时间:</span><input type="date"/><input type="time"/>  
              <span> 结束时间:</span><input type="date"/><input type="time"/> 
            </div>
            <div class="settest-length">
              <span> 考试时长:</span><input type="text"/>
            </div>
          </div>
          <div class="htitle"><span>题型、题量设置</span></div>
          <div class="q-choose">
            <div class="q-whole">
              <div class="q-type">
                <ul>
                  <li>
                    <span class="left-span"><label>单选题</label></span>
                    <span class="right-span">
                    	<input type="text"></input><label>道 </label>
                    		<i class="fa fa-trash-o" aria-hidden="true"> </i>
                    </span>
                  </li>
                  <li>
                    <span class="left-span"><label>填空题</label></span>
                    <span class="right-span">
                      <input type="text"></input><label>道 </label>
                        <i class="fa fa-trash-o" aria-hidden="true"> </i>
                    </span>
                    </li>
                  <li>
                  <span class="left-span"><label>作图题</label></span>
                    <span class="right-span">
                      <input type="text"></input><label>道 </label>
                        <i class="fa fa-trash-o" aria-hidden="true"> </i>
                    </span>
                  </li>
                  <li>
                    <span class="left-span"><label>计算题</label></span>
                    <span class="right-span">
                      <input type="text"></input><label>道 </label>
                        <i class="fa fa-trash-o" aria-hidden="true" > </i>
                    </span>
                    </li>
                </ul>
              </div>
              <div class="q-add">
              	<ul>
              		<li>
              			
              		</li>
              	</ul>
              </div>
            </div>
          </div>
        </form>       
      </div>
    </div>
    <div class="page-center-left">
      <ul id="myTab" class="nav nav-tabs">
        <li class="active"><a href="#home" data-toggle="tab">按章节</a></li>
        <li><a href="#que" data-toggle="tab">我的题库</a></li>
      </ul>
      <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="home">
          <p> * 空出来 *</p>
        </div>
        <div class="tab-pane fade" id="que">
          <div class="checkbox">
            <ul>
              <li>
                <input type="checkbox">我的题库一</input>
              </li>
              <li>
                <input type="checkbox">我的题库二</input>
              </li>
              <li>
                <input type="checkbox">我的题库三</input>
              </li> 
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>  
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>