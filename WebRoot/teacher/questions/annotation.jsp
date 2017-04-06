<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>民大学院 答案解析</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/annocation.css">
	<link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<%@include file="/common/topbar.jsp"%>
	<div class="page-center">
		<div class="tab-sheets">
			<form action="teacher/teacher_addCollection" method="post">
				<div class="que-box">
					<div class="que-top">
						<div class="que-top-right">
							<span>试题来源：（计算机408统考卷）
						</div>
						<div class="que-top-left">
							<span>题型：<s:property value='question.quetype.typename' /></span>
							 <span> | </span> 
							 <span>难易度：<s:property value='question.depth'/></span>
						</div>
					</div>
					<div class="que-mid">
						<div class="que-que">
							<p><s:property value='question.stem' /></p>
						</div>
						<div class="que-cho">
							<p>
								<s:if test="question.quetype.quetypeid==1">
									<s:property value="question.option1" />
									<br>
									<s:property value="question.option2" />
									<br>
									<s:property value="question.option3" />
									<br>
									<s:property value="question.option4" />
								</s:if>
							</p>
						</div>
					</div>
					<div class="que-btm">
						<div class="dropdown">
							<select name="collection.collectionname" class="addtocollect"> 
								<s:iterator value="collecStrings">
									<option value="<s:property/>">
										<s:property />
									</option>
								</s:iterator>
							</select>
							<s:hidden name="question.questionid"></s:hidden>
							<button type="submit" class="btn btn-agree">收藏到我的题库</button>
						</div>
					</div>
				</div>

				<div class="que-box">
					<div class="annota">
						<span class="exam-point htitle">考点</span>
						<div class="anno-body">
							<p>
								<s:property value='question.label' />
							</p>
						</div>
					</div>
					<div class="annota">
						<span class="exam-ans htitle">答案</span>
						<div class="anno-body">
							<s:property value='question.answer' />
						</div>
					</div>
					<div class="annota">
						<span class="exam-anno htitle">解析</span>
						<div class="anno-body">
							<s:property value='question.annotation' />
						</div>
					</div>
				</div>
				
				<div class="que-box">
					<div class="que-top">
						<div class="que-top-left examples-title">
							<span>举一反三</span>
						</div>
					</div>
					<div class="que-mid example" onclick="window.open('teacher/teacher_showQuestion?question.questionid=<s:property value="question.questionid"/>','_blank')">
						<div class="que-que">
							<p><s:property value='question.stem' /></p>
						</div>
						<div class="que-cho">
							<p>
								<s:if test="question.quetype.quetypeid==1">
									<s:property value="question.option1" />
									<br>
									<s:property value="question.option2" />
									<br>
									<s:property value="question.option3" />
									<br>
									<s:property value="question.option4" />
								</s:if>
							</p>
						</div>
					</div>
					<div class="que-mid example" onclick="window.open('teacher/teacher_showQuestion?question.questionid=<s:property value="question.questionid"/>','_blank')">
						<div class="que-que">
							<p><s:property value='question.stem' /></p>
						</div>
						<div class="que-cho">
							<p>
								<s:if test="question.quetype.quetypeid==1">
									<s:property value="question.option1" />
									<br>
									<s:property value="question.option2" />
									<br>
									<s:property value="question.option3" />
									<br>
									<s:property value="question.option4" />
								</s:if>
							</p>
						</div>
					</div>
					<div class="que-mid example" onclick="window.open('teacher/teacher_showQuestion?question.questionid=<s:property value="question.questionid"/>','_blank')">
						<div class="que-que">
							<p><s:property value='question.stem' /></p>
						</div>
						<div class="que-cho">
							<p>
								<s:if test="question.quetype.quetypeid==1">
									<s:property value="question.option1" />
									<br>
									<s:property value="question.option2" />
									<br>
									<s:property value="question.option3" />
									<br>
									<s:property value="question.option4" />
								</s:if>
							</p>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>