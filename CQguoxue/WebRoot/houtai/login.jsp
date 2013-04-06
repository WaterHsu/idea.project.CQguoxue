<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>




<%
	if(session.getAttribute("houtai_user_login_sure") == "houtai_have_login")
	{
		if(Integer.parseInt(session.getAttribute("houtai_user_rights").toString()) == 1)
		{
			response.sendRedirect("manage.jsp");
		}
		else if(Integer.parseInt(session.getAttribute("houtai_user_rights").toString()) == 2 || Integer.parseInt(session.getAttribute("houtai_user_rights").toString()) == 3)
		{
			response.sendRedirect("webmanage.jsp");
		}
	}
 %>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>重庆国学院后台登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">

	-->

	<link rel="stylesheet" type="text/css" href="cssofhoutai/login.css">
	
	<style>
		
		body{background:url(imagesofhoutai/login_1.gif)}
		#container{background:url(imagesofhoutai/login_2.jpg) -10px -20px}
	
	</style>
	

  </head>
  
  <body>
    	
	<div id="container" >
		<form id="login" action="houtai/check.jsp"> 
   	    <h1>登录</h1> 
    	<table>	      		
       		<tr> 
       			<td>用户名:</td>
       			<% 
       				if(session.getAttribute("wrong") != "suwrong")
       				{
       			%>
       			<td> <input id="username" type="text" name="username" placeholder="用户名" autofocus required> </td>
       			<% 
       				}
       				else if(session.getAttribute("wrong") == "suwrong")
       				{
       			%>
       			<td> <input id="username" type="text" name="username" placeholder="用户名" autofocus required><span style="color:red;">用户名不存在</span> </td>
       			<% 
       					
       				}
       			%>
       		</tr>
        	<tr> 
        		<td>密码：</td>
        		<% 
        			if(session.getAttribute("wrong") != "pawrong")
        			{
        		%>
        	    <td><input id="password" type="password" name="password" placeholder="密码" required></td> 
        	    <% 
        	    	}
        	    	else if(session.getAttribute("wrong") == "pawrong")
        	    	{
        	    %>
        	    <td><input id="password" type="password" name="password" placeholder="密码" required><span style="color:red;">密码错误</span></td> 
        	    <% 
        	    		session.setAttribute("wrong","");
        	    	}
        	    %>
        	</tr>
        	<tr>
        		<td></td>
        		<td><input type="submit" id="submit" value="登录"> </td>
        	</tr>
    	</table>
        	 
		</form>
    </div>
  </body>
</html>
