<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>My JSP 'all_student.jsp' starting page</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head> 
  <body>
  	<ul>
		<s:iterator value="studentList" status="status">
			<s:if test="studentList==null">
				无可显示的记录。
			</s:if>
			<s:else>
				<li>
					<a href="admin/admin_showStudent?student.studentid=<s:property value='studentid'/>">
						<s:property value="stuname" /> 
					</a>
				</li>
			</s:else>
		</s:iterator>   
	</ul> 
  </body>
</html>