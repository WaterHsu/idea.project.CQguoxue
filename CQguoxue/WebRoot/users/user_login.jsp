<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>




<%@page import="java.beans.Statement"%>  
<%@page import="com.mysql.jdbc.Driver"%>  
<%@page import="java.sql.*"%>  
<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>


<% 
		 String username = session.getAttribute("user_login_login").toString();
		 
		 
		 
  	     
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from users_table where username = '" +username+ "'";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     int mark = 0;
  	     
  	     
  	         	      	       	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        	
		 
		            
		        

  	     }catch(Exception e)
  	     {
  	     	e.printStackTrace();
  	     }
%>






<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_login.jsp' starting page</title>
    
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
  		<div>
  			<h2>账号资料</h2>
  			<table>
  				<% 
  					while(rs.next())
  					{
  				%>
  				<tr>
  					<td>
  						用户名:
  					</td>
  					<td>
  						<%=rs.getString("username") %>
  					</td>
  				</tr>
  				<tr>
  					<td>
  						邮箱:
  					</td>
  					<td>
  						<%=rs.getString("e_mail") %>
  					</td>
  				</tr>
  				<% 
  					}
  				%>
  			</table>
  			<br><br>
  			
  				<h2>修改密码</h2>
  				<form method="post" action="users/user_login_password_alter.jsp">
  						<table>
  							<tr>
  								<td>原来的密码:</td>
  								<% 
  									if(session.getAttribute("user_opp") == "error")
  									{
  								%>
  								<td><input type="password" name="old_password" /><span style="color:red;">密码错误</span></td> 								
  								<% 
  										session.setAttribute("user_opp","");
  									}
  									else 
  									{ 									
  								%> 								
  								<td><input type="password" name="old_password" /></td>
  								<% 
  										
  									}
  								%>
  							</tr>
  							<tr>
  								<td>新密码密码:</td>
  								<% 
  									if(session.getAttribute("user_npp") == "error")
  									{
  								%>  								
  								<td><input type="password" name="new_password" /><span style="color:red;">两次输入的密码不同</span></td>
  								<% 
  									}
  									else
  									{
  								%>
  										<td><input type="password" name="new_password" /></td>
  								<% 
  									}
  								%>
  							</tr>
  							<tr>
  								<td>新密码密码确认:</td>
  								<% 
  									if(session.getAttribute("user_npp") == "error")
  									{
  								%>
  								
  								<td><input type="password" name="new_password_again" /><span style="color:red;">两次输入的密码不同</span></td>
  								<% 
  										session.setAttribute("user_npp","");
  									}
  									else
  									{
  								%>
  								<td><input type="password" name="new_password_again" /></td>
  								<%  										
  									}
  								%>
  							</tr>
  							<tr>
  								<td></td>
  								<td><input type="submit" value="修改" /></td>
  							</tr>
  						</table>
  				</form>
  			
  		</div>
  		
  		<div>
  			<% 
  				if(session.getAttribute("user_oopp") == "succeess")
  				{
  			%>
  			消息提示:<br><textarea rows="20" cols="20">密码修改成功！</textarea>
  			
  			<% 
  					session.setAttribute("user_oopp","");
  				}
  				else
  				{
  				
  			%>
  			消息提示:<br><textarea rows="20" cols="40"></textarea>
  			<% 
  				//	session.setAttribute("user_oopp","");
  				}
  			%>
  		</div>
 
  </body>
</html>
