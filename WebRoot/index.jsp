<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>民大学院</title>
<link rel="stylesheet" href="css/main.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<header>

		<!-- 登录按钮-->
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#login-box">登录</button>
		<button type="button" class="btn btn-default">注册</button>
	</header>
	<main> <br />
	<a href="student/student.jsp" class="btn btn-default">去学生页面（临时按钮）</a> <br />
	<a href="teacher/teacher.jsp" class="btn btn-default">去教师页面（临时按钮）</a> </main>
	<footer> 民大学院团队 </footer>
	<!-- 登录模态框 -->
	<div class="modal fade" id="login-box" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">登录到民大学院</h4>
				</div>
				<div class="modal-body">
					<s:form action="user/user_login" id="loginForm" method="post" cssClass="form-horizontal">
						<div class="form-group">
							<label for="number" class="col-sm-2 control-label">学工号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="number" name="user.usernum">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password" name="user.password">
							</div>
						</div>
						<div class="form-group">
							<label for="type"></label> 
							<input type="radio" id="type" name="user.usertype.usertypeid" value="1">管理员 
							<input type="radio" id="type" name="user.usertype.usertypeid" value="2">教师 
							<input type="radio" id="type" name="user.usertype.usertypeid" value="3">学生
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox">记住密码 </label> <a
										href="#">忘记密码</a>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" class="btn btn-default">注册</button>
								<button type="submit" class="btn btn-primary">登录</button>
							</div>
						</div>
				    </s:form>
				</div>
				
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>