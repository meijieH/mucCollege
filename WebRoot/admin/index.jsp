<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>民大学院 后台管理 管理员首页</title>
  </head>
  
  <body>
    <h1>民大学院 后台管理 管理员首页</h1>
    <h2>操作</h2>
    <ol>
    	<li><a href="admin/admin_showAdminInfo">查看我的信息</a></li>
    	<li><a href="admin/admin_showEdit">修改我的信息</a></li>
    </ol>
    
    <ol>
    	<li><a href="admin/add_dept.jsp">添加学院选项</a></li>
    	<li><a href="admin/all_dept.jsp">查看学院选项</a></li>
    </ol>
    
    <ol>
    	<li><a href="admin/add_question.jsp">添加题目（null）</a></li>
    	<li><a href="admin/all_question.jsp">查看所有题目</a></li>
    </ol>
    
    <ol>
    	<li><a href="admin/add_student.jsp">添加新的学生用户</a></li>
    	<li><a href="admin/all_student.jsp">查看所有学生用户（null）</a></li>
    	<li><a href="admin/add_teacher.jsp">添加新的教师用户（null）</a></li>
    	<li><a href="admin/all_student.jsp">查看所有教师用户（null）</a></li>
    </ol>
    
    <ol>
   		<li><a href="admin/add_course.jsp">添加课程（null）</a></li>
    	<li><a href="admin/all_course.jsp">查看所有课程</a></li>
    </ol>
  </body>
</html>
