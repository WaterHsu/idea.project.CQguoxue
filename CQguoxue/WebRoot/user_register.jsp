<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<% 
	if(session.getAttribute("user_login_login_sure") == "have_login")
	{
		response.sendRedirect("users/user_system.jsp");
	}
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	<link href="cssofuser_login/css_user_register.css" rel="stylesheet" type="text/css" />
	
	
	
	
	
	

  </head>
  
  <body>
    <form method="post" action="user_register_check.jsp" name="register">
    	<table id="table_users" style="margin:100px auto;">
        	<tr>
            	<td>用户注册表</td>
            </tr>
            <tr style="height:20px; "></tr>
        	<tr>
            	<td>用户名:</td>
            	<% 
            		if(session.getAttribute("user_register_username_message") == null)
            		{
            	%>
                <td><input type="text" id="username" name="username" /></td>
                <% 
                	}
                	else if(session.getAttribute("user_register_username_message") == "username_exsit")
                	{
                %>
                <td><input type="text" id="username" name="username" /><span style="color:red; font-size:9pt;">该用户名已被注册</span></td>
                <% 
                		session.setAttribute("user_register_username_message","");
                	}
                	else
                	{
                		String message = session.getAttribute("user_register_username_message").toString();
                %>
                <td><input type="text" id="username" name="username" value="<%=message %>" /></td>
                <% 
                		session.setAttribute("user_register_username_message","");
                	}
                %>
            </tr>
            <tr style="height:20px;"></tr>
            <tr>
            	<td>密码:</td>
            	<% 
            		if(session.getAttribute("user_register_password_message") == null)
            		{
            	%>
                <td><input type="password" id="password" name="password"  /><span style=" font-size:9pt;"></span></td>
                <% 
                	}
                	else if(session.getAttribute("user_register_password_message") == "password_error")
                	{
                %>
                <td><input type="password" id="password" name="password"  /><span style=" font-size:9pt; color:red;">两次输入的密码不同</span></td>
                <% 
                		//session.setAttribute("user_register_password_message","");
                	}
                	else
                	{
                		String message2 = session.getAttribute("user_register_password_message").toString();
                %>
                <td><input type="password" id="password" name="password" value="<%=message2 %>"  /><span style=" font-size:9pt;"></span></td>
           		<% 
           				//session.setAttribute("user_register_password_message","");
           			}
           		%>
            </tr>
            <tr style="height:20px; "></tr>
            <tr>
            	<td>确认密码:</td>
            	<% 
            		if(session.getAttribute("user_register_password_message") == null)
            		{
            	%>
                <td><input type="password" id="password_agin" name="password_again"  /><span style=" font-size:9pt;">(请重新输入一遍密码)</span></td>
            	<% 
                	}
                	else if(session.getAttribute("user_register_password_message") == "password_error")
                	{
                %>
                <td><input type="password" id="password_agin" name="password_again"  /><span style=" font-size:9pt;">(请重新输入一遍密码)</span></td>
                <% 
                		session.setAttribute("user_register_password_message","");
                	}
                	else
                	{
                		String message3 = session.getAttribute("user_register_password_message").toString();
                %>
                <td><input type="password" id="password_agin" name="password_again"  value="<%=message3 %>" /><span style=" font-size:9pt;">(请重新输入一遍密码)</span></td>
                <% 
                		session.setAttribute("user_register_password_message","");
           			}
                %>
            </tr>
            <tr style="height:20px; "></tr>
            <tr>
            	<td>邮箱:</td>
            	<% 
            		if(session.getAttribute("user_register_mail_message") == null)
            		{
            	%>
                <td><input type="text" id="mail" name="mail"  /></td>
                <% 
                	}
                	else if(session.getAttribute("user_register_mail_message") == "mail_error")
                	{            	
                %>
                <td><input type="text" id="mail" name="mail"  /><span style=" font-size:9pt; color:red;">邮箱格式不对</span></td>
                <% 
                		session.setAttribute("user_register_mail_message","");
                	}
                	else
                	{
                		String message4 = session.getAttribute("user_register_password_message").toString();
                %>
                <td><input type="text" id="mail" name="mail" value="<%=message4 %>"  /></td>
                <% 
                		session.setAttribute("user_register_mail_message","");
                	}
                %>
            </tr>
            <tr style="height:20px; "></tr>
            <tr>
            	<td><br></td>
                <td><input type="submit" id="submit" name="submit" value="注册" onclick="check()" style="width:80px; height:40px; font-size:12pt;" /></td>
            </tr>
        </table>
    </form>
  </body>
</html>
