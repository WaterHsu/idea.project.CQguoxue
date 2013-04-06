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
		 int year,month,day,hour,minute; 
		 Calendar c = Calendar.getInstance(); 
		 year = c.get(Calendar.YEAR); //年 
		 month = c.get(Calendar.MONTH) + 1; //月 
		 day = c.get(Calendar.DAY_OF_MONTH); //日 
		 hour = c.get(Calendar.HOUR_OF_DAY); //时（HOUR——十二小时制；HOUR_OF_DAY——二十四小时制） 
		 minute = c.get(Calendar.MINUTE); //分 
		 
		 String hour1 = "";
		 String minute1 = "";
		 
		 if(hour < 10)
		 {
		 	hour1 += "0";
		 	hour1 += hour;
		 }
		 else 
		 {
		 	hour1 += hour;
		 }
		 
		 if(minute < 10)
		 {
		 	minute1 += "0";
		 	minute1 += minute;
		 }
		 else
		 {
		 	minute1 += minute;
		 }
		 
		 Random random = new Random(); 
    	 int x = 1000 + random.nextInt(9000);
    	 int y = 1256 + random.nextInt(9000);
		 
		 String time_yearmonthday = "";
		 time_yearmonthday += year;
		 time_yearmonthday += "-";
		 time_yearmonthday += month;
		 time_yearmonthday += "-";
		 time_yearmonthday += day;
		 
		 String time_hourminute = "";
		 time_hourminute += hour1;
		 time_hourminute += ":";
		 time_hourminute += minute1;
		 
		 String number = "";
		 number += y;
		 number += year;
		 number += month;
		 number += day;
		 number += hour;
		 number += minute;
		 number += x; 


		 String username = request.getParameter("username").toString();
		 username = new String(username.getBytes("iso-8859-1"),"utf-8");
		 String password = request.getParameter("password").toString();
		 password = new String(password.getBytes("iso-8859-1"),"utf-8");
		 
		 String password_again = request.getParameter("password_again").toString();
		 password_again = new String(password_again.getBytes("iso-8859-1"),"utf-8");
		 
		 String mail = request.getParameter("mail").toString();
		 mail = new String(mail.getBytes("iso-8859-1"),"utf-8");
  	     
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from users_table";
   	     String sql3 = "select * from users_table";
   	     
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
 
  	     int mark = 0;
  	     int mark2 = 0;
  	     int id = 0;
  	     
  	      
  	     if(password.equals(password_again))
  	     {
  	     		session.setAttribute("user_register_password_message",password);
  	     		if(mail.contains("@"))
  	     		{
  	     				session.setAttribute("user_register_mail_message",mail);
  	     				try
  	     				{
  	     					Class.forName("com.mysql.jdbc.Driver");
		 	    			conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        			statement = conn.prepareStatement(sql);
		       	 			rs = statement.executeQuery(sql);
		       	 			
		       	 			while(rs.next())
		       	 			{
		       	 				if(rs.getString("username").equals(username))
		       	 				{
		       	 					mark = 1;
		       	 					break;
		       	 				}
		       	 				id = rs.getInt("id");
		       	 			}
		       	 			
		       	 			if(mark == 0)
		       	 			{
		       	 				id++;
		       	 				String sql2 = "insert into users_table (id,username,password,e_mail,time_hourminute,time_yearmonthday,user_number) values(" +id+ ",'" +username+ "','" +password+ "','" +mail+ "','" +time_hourminute+ "','" +time_yearmonthday+ "','" +number+ "')";	       	 			
		       	 				
		       	 				statement2 = conn.prepareStatement(sql2);
		       					statement2.executeUpdate(sql2);
		       					
		       					session.setAttribute("user_login_login",username);
		       					
		       					response.sendRedirect("users/user_system.jsp");
		       	 			}
		       	 			else if(mark == 1)
		       	 			{
		       	 				session.setAttribute("user_register_username_message","username_exsit");
		       	 				response.sendRedirect("user_register.jsp"); 
		       	 			}
		        			        

  	    				 	}catch(Exception e)
  	     					{
  	     						e.printStackTrace();
  	     					}
  	     					
  	     					
  	     					
  	     		}
  	     		else
  	     		{
  	     			session.setAttribute("user_register_mail_message","mail_error");
  	     			session.setAttribute("user_register_username_message",username);
  	     			
  	     			response.sendRedirect("user_register.jsp"); 
  	     		}
  	     		
  	     		
  	     		
  	     	//	response.sendRedirect("user_register.jsp");  
  	     		
  	     }
  	     else
  	     {
  	     		session.setAttribute("user_register_password_message","password_error");
  	     		session.setAttribute("user_register_username_message",username);
  	     		if(mail.contains("@"))
  	     		{
  	     			session.setAttribute("user_register_mail_message",mail);
  	     		}
  	     		else
  	     		{
  	     			session.setAttribute("user_register_mail_message","mail_error");
  	     		}
  	     		response.sendRedirect("user_register.jsp");  
  	     }
  	     
  	       	      	       	     
  	   
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_register_check.jsp' starting page</title>
    
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
   
  </body>
</html>
