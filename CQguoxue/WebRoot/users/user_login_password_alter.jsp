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
		 
		 String old_password = request.getParameter("old_password").toString();
		 old_password = new String(old_password.getBytes("iso-8859-1"),"utf-8");
		 String new_password = request.getParameter("new_password").toString();
		 new_password = new String(new_password.getBytes("iso-8859-1"),"utf-8");
		 
		 String new_password_again = request.getParameter("new_password_again").toString();
		 new_password_again = new String(new_password_again.getBytes("iso-8859-1"),"utf-8");
		 
  	     
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from users_table where username = '" +username+ "'";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	     
  	     int mark = 0;
  	     int mark2 = 0;
  	     
  	     
  	     
  	     
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
		 String log_caozuo = null;
  	     
  	     
  	     
  	     if(!new_password.equals(new_password_again))
  	     {
  	     	mark2 = 1;
  	     	session.setAttribute("user_npp","error");
  	     }
  	     
  	     
  	         	      	       	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        	
		 		while(rs.next())
		 		{
		 			if(!rs.getString("password").equals(old_password))
		 			{
		 				mark = 1;
		 				session.setAttribute("user_opp","error");
		 				
		 			}
		 		}
		 		
		 		if(mark == 0)
		 		{
		 			if(mark2 == 0)
		 			{
		 				String sql2 = "update users_table set password = '"+new_password+"' where username='"+username+"'";
		 				
		 				statement2 = conn.prepareStatement(sql2);
		 	    		statement2.executeUpdate(sql2);
		 	    		
		 	    		
		 	    		log_caozuo = "修改了密码" ;
		       	

		       		String log_sql2 = "insert into ordinary_users_log(time_yearmonthday,time_hourminute,username,caozuo,result) values('" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +username+ "','" +log_caozuo+ "','成功')";
					log_statement2 = conn.prepareStatement(log_sql2);		
					log_statement2.executeUpdate(log_sql2);
		 	    		session.setAttribute("user_oopp","succeess");
		 			}
		 		}
		            
		        

  	     }catch(Exception e)
  	     {
  	     	e.printStackTrace();
  	     }
  	     
  	     response.sendRedirect("user_login.jsp");
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_login_password_alter.jsp' starting page</title>
    
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
