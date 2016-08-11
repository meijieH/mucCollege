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
	<title>课件管理——老师</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--  
	 <script src="https://ajax.googleapis.bootcss.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
     <script src="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     <script type="text/javascript">

         function allSelect() {
             if ($(":checkbox").attr("checked") != "checked") {
                 $(":checkbox").prop('checked',false); $(":checkbox").prop('checked',true);
             }
             else {
                 $(":checkbox").removeAttr("checked");
             }
             $(":checkbox").each(function () {
                 if ($(this).attr("checked") == "checked") {
                     $(this).removeAttr("checked");
                 }
                 else {
                     $(this).attr("checked", "checked");
                 }
         }
     </script>
     -->
</head>
<body>
	<header>
		<h1>计算机基础</h1>
		<hr>
	</header>

	<main class="container-fluid">
    	<div class="row">
    		<div class="col-md-6">
    			<div class="panel panel-info">
    		    	<div class="panel-heading">
		    			<h2 class="panel-title">课件管理</h2>
		    			
		    			
						
		    		</div>
		    		
		    		<div class="panel-body panel-body-table">
		    			<div class="table-responsive" style="overflow-x:hidden">
		    				<table class="table table-striped table-hover" id="dataTables-example">
		    					<a href="#">上传课件</a>
		    					<div class="form-inline search-box">
			            			<input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="请输入课件名进行查询">
			               			<button class="btn btn-info btn-sm" type="submit">搜  索</button> 
			        			</div>
		    					<thread>
		    						<tr>
		    							<!-- <th><input type="checkbox" value="全选" onclick="allSelect();">全选</th> -->
		    							<th>课件名</th>
		    							<th>上传时间</th>
		    							<th>下载</th>
		    							<th>删除</th>
		    						</tr>
		    					</thread>
		    					<tbody>
		    						<tr>
		    							<td><a href="#">第一章课件</a></td>
		    							<!--链接：课件预览 -->
		    							<td>2016/07/13</td>
		    							<td><a href="#">下载</a></td>
		    							<td><a href="#">删除</a></td>
		    						</tr>
		    						<tr>
		    							<td><a href="#">第一章复习资料</a></td>
		    							<td>2016/07/17</td>
										<td><a href="#">下载</a></td>
	    								<td><a href="#">删除</a></td>
		    						</tr>
		    					</tbody>
		    				</table>
		    			</div>
		    		</div>
		    	</div>
    		</div>
    	</div>
    </main>
</body>
</html>