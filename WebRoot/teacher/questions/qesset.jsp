<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
    <title>民大学院 题集 操作系统</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <style>
    .set-zone{
    	margin:0 auto;
    	width:1024px;
    }
    .select-all{
    	width:80px;
    }
    </style>
</head>
<body>
	<main>
       <!-- 搜索 -->
	    <div class="search-box">
	    	<form action="" class="">
			    <input type="text" class="search-input" placeholder="输入关键字，可以搜索题集里的题目......">
			    <button type="submit" class="btn btn-default">搜索</button>
			</form>
	    </div>
	    <!-- 题集 -->
	    <div class="set-zone">
	    	<table class="default-table">
	    		<thead>
	    			<tr>
	    				<th class="select-all"><input type="checkbox">全选</th>
	    				<th>难度</th>
	    				<th>题干</th>
	    				<th>使用次数</th>
	    				<th>正确率</th>
	    				<th>题型</th>
	    				<th>来源</th>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<s:iterator value="queList" status="status">
	    			<tr>
	    				<td><input type="checkbox"></td>
	    				<td><s:property value="depth"/></td>
	    				<td><a href="teacher/teacher_showQuestion?question.questionid=<s:property value='questionid'/>"><s:property value="questionid"/>.<s:property value="stem" /></a></td>
	    				<td>3</td>
	    				<td>23%</td>
	    				<td><s:property value="quetype.typename"/></td>
	    				<td><s:property value="user.username"/></td>
	    			</tr>
	    			</s:iterator>
	    		</tbody>
	    		<tfoot>
	    			<tr>
	    				<td></td>
	    				<td></td>
	    				<td></td>
	    				<td></td>
	    				<td>e</td>
	    				<td>第3题</td>
	    				<td>共23题</td>
	    			</tr>
	    		</tfoot>
	    	</table>
	    </div>
	  
	</main>
    
</body>
</html>