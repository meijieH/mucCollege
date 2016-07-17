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
	<title>在线浏览课件</title>
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<h1>课件：指令的机器级表示</h1>
	<div>
		<button>返回</button>
		<button>下载</button>
		<button>全屏查看</button>
	</div>
	<div  class="ware-main">
		<p>
			在这里可以在线预览课件：
		word、excel、ppt、pdf
		.html .css .c .java .html还包括音频、视屏、图片等。
		</p>
		<ul>
			<li>①如果老师上传的课件是压缩包:那么页面提示必须下载后才能看，提供下载按钮，button</li>
			<li>②如果只有一个文件可以直接预览</li>
			<li>②如果传的是文件夹，希望像windows图形那样可以点开一层层文件，再进行查看</li>
		</ul>
		
	</div>
</body>
</html>