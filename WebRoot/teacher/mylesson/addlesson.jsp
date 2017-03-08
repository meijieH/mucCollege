<%@page import="com.mucCollege.model.Course"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
<head>
  <base href="<%=basePath%>">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="renderer" content="webkit">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" type="text/css" href="css/tea_addlesson.css">
  <title>民大学院 课程管理 添加</title>
</head>
<body>
   <%@include file="/common/topbar.jsp"%>
	 <div class="apply-lesson-left">
	    <h1 class="content-title apply-lesson-t"><i class="fa fa-thumb-tack" aria-hidden="true"></i>申请课程</h1>
        <div class="content-describe al-describe-t">如果你无法找到需要添加的课程，可能是因为从未开设过此类课程，或者申请的课程暂未通过审核。您可以在此申请开设课程，新开设的课程会进入审核状态，暂时不能在课程列表中选择，请耐心等待审核通过。</div>
	 </div>
  
     <div class="apply-lesson-right">
        <div class="default-form">
			<form action="teacher/teacher_addCourse" method="post">
				<ul>
					
		            <li>
						<span class="left-span">*学年</span>
						<span class="right-span">
						<select  name="teacourse.year">
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
						</select>
						</span>
					</li>
					<li>
						<span class="left-span">*学期</span>
						<span class="right-span">
						<select  name="teacourse.term">
							<option value="1">春学期    (3月~7月)</option>
							<option value="2">秋学期    (9月~1月)</option>
						</select>
						</span>
					</li>
					<li>
						<span class="left-span">*班级</span>
						<span class="right-span">
						<select  name="teacourse.stuClass">
							<s:iterator value="stuClaList">
							<option value="<s:property value='classid'/>"><s:property value="classname"/></option>
							</s:iterator>
						</select>
						</span>
					</li>
					<li>
						<span class="left-span">*课程学分</span>
						<span class="right-span"><input type="number" name="teacourse.couscore"></span>
					</li>
					<li>
						<span class="left-span">课程学时</span>
						<span class="right-span"><input type="number" name="teacourse.coutime"></span>
					</li>
					<li>
						<span class="left-span">*课程名</span>
						<span class="right-span"><s:property value="course.coursename"/></span>
					</li>
					<li>
						<span class="left-span">课程类别</span>
						<span class="right-span"><s:property value="course.subject.subjectname"/></span>
					</li>
					<li>
						<span class="left-span">*课程描述</span>
						<span class="right-span"><s:property value="course.detail"/></span>
					</li>
					<s:hidden name="course.courseid"></s:hidden>
					<li>
						<span class="left-span">&nbsp;</span>
						<span class="right-span"><input type="submit" value="申请开课" class="btn btn-agree"></span>
					</li>
				</ul>
			</form>
		</div>
     </div>
 


    <!-- struts:select name="teacourse.stuClass.classid" label="班级" list="stuClasslist" listKey="classid" listValue="classname"/-->
  
</body>
</html>
