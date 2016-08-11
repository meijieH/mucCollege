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
	<title>修改密码-教师</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<header>
		<h1>修改密码</h1>
		<hr>
	</header>
	<main class="container-fluid">
  		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">原密码：</label>
                <div class="col-md-4"> 
      	         	XXXXXXXXXXXXXXXX
                </div>
            </div>
		</div>

		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">新	密码：</label>
                <div class="col-md-4"> 
      	         	<input type="text">
                </div>
            </div>
		</div>
		
		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">确认密码：</label>
                <div class="col-md-4"> 
      	         	<input type="text">
                </div>
            </div>
		</div>
		
		<div class="form-group col-md-1">
	        	<button type="submit" class="btn btn-success pull-right">确 定 </button>
	    </div>
	    <div class="form-group col-md-1">
	        	<button type="reset" value="Reset" class="btn btn-primary pull-right">重 置</button>
	    </div>

	</main>
</body>
</html>