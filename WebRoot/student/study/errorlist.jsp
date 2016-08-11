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
	<title>学员错题记录</title>
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<h1>学员错题记录</h1>
	<hr>
    <div>
    	<p>1、XXXXXXXXXXXXX</p>
	    <ul>
	    	<li>A、xxxxxxxxxxxxxxxx</li>
	    	<li>B、xxxxxxxxxxxxxxxxxxxx</li>
	    	<li>C、xx</li>
	    </ul>
	    <button>查看答案</button>
	    <span>（查看答案是否可点击，取决于老师在生成试卷时，是否允许查看答案）</span>
	    <button>删除此题</button>
	    <input type="checkbox" checked>显示评论
    </div>
 
    <hr>
    <ul>
    	<li>
    		<div>
    			<span>您在2016-2-8 23:03 分在 <a href="#">XXX试卷（进入对应时间的这份卷子：考试记录-答题记录页面）</a> 完成此题</span>
    			<span>得分为：3</span>
    			<p>您的答案为：XXXXXXXXXX</p>
    			<div>
    				<ul>
    					<li><b>马老师：</b>这道题用不到线程</li>
    					<li>李同学：我跟你犯了同样的错误</li>
    				</ul>
    			</div>
    		</div>
    	</li>
    	<hr>
    	<li>
    		<div>
    			<span>您在2016-2-8 23:03 分完成此题</span>
    			<span>得分为：3</span>
    			<p>您的答案为：XXXXXXXXXX</p>
    		</div>
    	</li>
    	<hr>
    	<li>
    		<div>
    			<span>您在2016-2-8 23:03 分完成此题</span>
    			<span>得分为：3</span>
    			<p>您的答案为：XXXXXXXXXX</p>
    		</div>
    	</li>
    </ul>

</body>
</html>