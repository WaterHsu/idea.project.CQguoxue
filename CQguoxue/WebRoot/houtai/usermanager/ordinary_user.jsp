<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<%@page import="java.beans.Statement"%>  
<%@page import="com.mysql.jdbc.Driver"%>  
<%@page import="java.sql.*"%>  
<%@page import="java.io.*" %>


<% 
		 String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from users_table";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;

  	     

  	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);

		        
	
		        		        		        		        

	
  	     
  	     	
%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
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
  			<h2>用户注册信息表</h2>
  			<table border=3>
  				<tr>
  					<td>用户名</td>
  					<td>密码</td>
  					<td>邮箱</td>
  					<td>注册时间</td>
  					<td>用户编号</td>
  				</tr>
  				<% 
  					while(rs.next())
  					{
  						String time = rs.getString("time_yearmonthday") + " " + rs.getString("time_hourminute");
  				%>
  				<tr>
  					<td><%=rs.getString("username") %></td>
  					<td><%=rs.getString("password") %></td>
  					<td><%=rs.getString("e_mail") %></td>
  					<td><%=time %></td>
  					<td><%=rs.getString("user_number") %></td>
  				</tr>
  			<% 
  					}	
  				}catch(Exception e)
  	     		{	
  	     			e.printStackTrace();
  	     		}	
  			%>
  			</table>
  		</div>
  
  </body>
</html>
