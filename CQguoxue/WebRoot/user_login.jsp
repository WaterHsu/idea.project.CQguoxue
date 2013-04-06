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
    
    <title>重庆国学院用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<link href="cssofuser_login/css_user_login.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
      	<table id="table_users_login">
            	<form method="post" action="user_login_check.jsp">
                	<tr>
                	<td style="width:50px;"></td>
                	<% 
                		String message = null;
                		if(session.getAttribute("user_login_message") != null)
                		{
                		message = session.getAttribute("user_login_message").toString();
                		if(message.equals("username_no_exsit"))
                		{
                	%>
                    	<td style="width:110px;">该用户名不存在</td>
                    <% 
                    		session.setAttribute("user_login_message","");
                    	}
                    	else if(message.equals("password_error"))
                    	{
                    %>
                    	<td style="width:110px;">密码错误</td>
                    <% 
                    		session.setAttribute("user_login_message","");
                    	 }
                    	} 
                    %>                        
                        <td></td>
                    </tr>
                	<tr>
                    	<td style="width:50px;"></td>
                    	<td style="width:110px;">
                        	用户名:
                        </td>
                        <td style="width:250px;">
                        	<input type="text" id="login_username" name="login_username" />
                        </td>
                    </tr>
                    <tr>
                    	<td style="width:50px;"></td>
                    	<td style="width:110px;">
                        	密码:
                        </td>
                        <td style="width:250px;">
                        	<input type="password" id="login_password"  name="login_password"  />
                        </td>
                    </tr>
                    <tr>
                    	<td style="width:50px;"></td>
                    	<td style="width:110px;"></td>
                        <td><input type="submit" value="登陆"  name="submit" style="width:100px;" /></td>
                    </tr>
                </form>
                <tr>
                	<td  style="width:50px; height:50px;"></td>
                	<td></td>
                	<td></td>
                </tr>
                <tr>
                	<td></td>
                	<td><a href="chongqingguoxue.jsp">返回首页</a></td>
                	<td><a href="user_register.jsp">注册</a></td>
                </tr>
            </table>
  </body>
</html>
