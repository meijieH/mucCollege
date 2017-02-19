<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
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
	<header>
		<div class="user-info">
			<span class="user-study">我的收藏</span>
			<span class="user-message">私信</span>
			<span class="user-name">duyufei</span>
			<span class="user-face" onmouseover="visible('user-setting')" onclick="displayNone('user-setting')">
				<img src="/mucCollege/images/face.jpg"/>
			</span>
			<div id="user-setting" class="display-none user-setting">
				<ul>
					<li><a href="#">修改密码</a></li>
					<li><a href="#">退出</a></li>
				</ul>
			</div>
		</div>
	</header>
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
	    			<tr>
	    				<td><input type="checkbox">难</td>
	    				<td>难</td>
	    				<td>微结构体的所以然？</td>
	    				<td>3</td>
	    				<td>23%</td>
	    				<td>简答题</td>
	    				<td>龚凤丽</td>
	    			</tr>
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