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
		 String username = request.getParameter("username").toString();
  	     String password = request.getParameter("password").toString();
  	     username = new String(username.getBytes("iso-8859-1"),"utf-8");
  	     password = new String(password.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     String rights = null;
  	     int mark = 0;
  	     
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from system_users";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     
  	     int log_year,log_month,log_day,log_hour,log_minute; 
		 Calendar log_c = Calendar.getInstance(); 
		 log_year = log_c.get(Calendar.YEAR); //年 
		 log_month = log_c.get(Calendar.MONTH) + 1; //月 
		 log_day = log_c.get(Calendar.DAY_OF_MONTH); //日 
		 log_hour = log_c.get(Calendar.HOUR_OF_DAY); //时（HOUR——十二小时制；HOUR_OF_DAY——二十四小时制） 
		 log_minute = log_c.get(Calendar.MINUTE); //分 
		 
		 String log_hour1 = "";
		 String log_minute1 = "";
		 
		 if(log_hour < 10)
		 {
		 	log_hour1 += "0";
		 	log_hour1 += log_hour;
		 }
		 else 
		 {
		 	log_hour1 += log_hour;
		 }
		 
		 if(log_minute < 10)
		 {
		 	log_minute1 += "0";
		 	log_minute1 += log_minute;
		 }
		 else
		 {
		 	log_minute1 += log_minute;
		 }
		 
		 
		 String log_time_yearmonthday = "";
		 log_time_yearmonthday += log_year;
		 log_time_yearmonthday += "-";
		 log_time_yearmonthday += log_month;
		 log_time_yearmonthday += "-";
		 log_time_yearmonthday += log_day;
		 
		 String log_time_hourminute = "";
		 log_time_hourminute += log_hour1;
		 log_time_hourminute += ":";
		 log_time_hourminute += log_minute1;
		 
		 String log_sql = "select * from system_users_log order by id desc";
		 PreparedStatement log_statement1 = null;
		 PreparedStatement log_statement2 = null;
		 ResultSet log_rs = null;
		 int log_id = 0;
		 
		 
		 
		  try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        log_statement1 = conn.prepareStatement(log_sql);
		        log_rs = log_statement1.executeQuery(log_sql);
		        
		        while(log_rs.next())
		        {
		        	log_id = log_rs.getInt("id");
		        	break;
 		        }
 		        log_id++; 
 		        
 		        while(rs.next())
 		        {
 		        	if(rs.getString("username").equals(username))
		        	{
		        		if(rs.getString("password").equals(password))
		        		{
		        			rights = Integer.toString(rs.getInt("rights"));
		        			session.setAttribute("houtai_user_username", username);
		        			session.setAttribute("houtai_user_rights",rights);
		        			session.setAttribute("houtai_user_login_sure","houtai_have_login");
		        			
		        			response.sendRedirect("manage.jsp");
		        			
		        		}	
		        		
		        		else
		        		{
		        			session.setAttribute("wrong","pawrong");
		        			mark = 1;
		        			response.sendRedirect("login.jsp");
		        			break;
		        		}
		        	}		
 		        
 		        }
 		        
		        
		        
		        
		        if(mark == 0)
		        {
					
				}
  	     }catch(Exception e)
  	     {
  	     	e.printStackTrace();
  	     }

%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check2.jsp' starting page</title>
    
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
