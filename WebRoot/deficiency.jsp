<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>第二版可改进之处</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
<!-- 
优化点：
1.对student和teacher、admin类可抽出一个父类，使用继承优化,
对课程、题目的操作是否可抽出一个父类。。。
是否可以抽出一个baseService来····
2.批量导入题目、批量增加学生、处理excel的格式
3.另外，宽泛而言，题目和题干选项，应当包含【文字+图片+音频】，
子板块描述中也应当包含【文字+图片+音频】，因为子板块描述中，不仅仅是对题组的描述，
还有可能是根据一段音频，回答题组中的问题，或根据图表回题组中的问题。
4.用户注册密码确认验证未做
5.忘记密码
6.errorque不应该对应question。应该对应stuque
7.annotation.jsp中添加到我的题库还未做
8.queset中最后一题的题型未显示很奇怪
-->
  </body>
</html>
