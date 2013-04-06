<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>重庆国学院</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  		<div style="width:1500px;height:400px;margin:0px auto;">
    		<EMBED src="flash/first_1.swf" width="1400px" height="600px" type="application/x-shockwave-flash" wmode="transparent"/> 
    	</div>  
    	<br><br><br><br><br><br><br><br><br><br><br><br><br>
    	<div style="height:100px; text-align:center;">
    		<a href="chongqingguoxue.jsp" ><h2>进入国学院</h2></a>
    	</div>
  </body>
</html>
