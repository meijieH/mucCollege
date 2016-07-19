<%@page import="com.mucCollege.model.Teacher"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Teacher teacher=(Teacher)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>修改资料-教师</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<header>
		<h1>修改资料</h1>
		<hr>
	</header>
	<main class="container-fluid">
	<form action="teacher/teacher_updata" validate="true">
  		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">学工号：</label>
                <div class="col-md-4"> 
      	         	<input type="text" value="<%=teacher.getTeanum()%>" disabled>
                </div>
            </div>
		</div>
		
		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">姓名：</label>
                <div class="col-md-4"> 
      	         	<input type="text" value="<%=teacher.getTeaname()%>" disabled>
                </div>
            </div>
		</div>
		
		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">性别：</label>
                <div class="col-md-4"> 
      	         	<input type="text" value="数据库中没有定义该字段" disabled>
                </div>
            </div>
		</div>
		
		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">院系：</label>
                <div class="col-md-4"> 
      	         	<input type="text" disabled>
                </div>
            </div>
		</div>
		
		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">职称：</label>
                <div class="col-md-4"> 
      	         	<input type="text"  value="<%=teacher.getPosition()%>" name="teacher.position">
                </div>
            </div>
		</div>
		
		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">简介：</label>
                <div class="col-md-4"> 
      	         	<input type="text" value="<%=teacher.getIntro()%>" name="teacher.intro">
                </div>
            </div>
		</div>
		
		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">联系电话：</label>
                <div class="col-md-4"> 
      	         	<input type="text" value="<%=teacher.getPhonenum()%>" name="teacher.phonenum">
                </div>
            </div>
		</div>
		
		<div class="row">
	    	<div class="form-group">
                <label class="control-label col-md-1">邮箱：</label>
                <div class="col-md-4"> 
      	         	<input type="text" value="<%=teacher.getEmail()%>" name="teacher.email">
                </div>
            </div>
		</div>
			 
		<div class="form-group col-md-1">
        	<button type="submit" class="btn btn-success pull-right">提  交 </button>
    </div>
    </form>
	</main>
</body>
</html>