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
	String houtai_username = null;
	int log_rights = 0;

	if(session.getAttribute("houtai_user_login_sure") != "houtai_have_login")
	{
			response.sendRedirect("login.jsp");
	}
	else 
	{
			
				houtai_username = session.getAttribute("houtai_user_username").toString();			
				log_rights = Integer.parseInt(session.getAttribute("houtai_user_rights").toString());
	}
%>



<% 
  	     String system_user_name = request.getParameter("system_user_name").toString();
  	     system_user_name = new String(system_user_name.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String system_user_password = request.getParameter("system_user_password").toString();
  	     system_user_password = new String(system_user_password.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String system_user_right = request.getParameter("system_user_right").toString();
  	     system_user_right = new String(system_user_right.getBytes("iso-8859-1"),"utf-8");

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from system_users";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     ResultSet rs = null;
  	     int id = 0;
  	     int mark = 0;
  	     int rights = 0;
  	     
  	     
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
  	     
  	     
  	     
  	     
  	     
  	 //    String sql = "insert into user (id,username,password,rights) values(" +cal+ ",'" +username2+ "','" +password2+ "'," +r+ ")";
  	     
  	     
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
		        	if(system_user_name.equals(rs.getString("username")))
		        	{
		        		mark = 1;
		        		break;
		        	}
		        	
		        	id = rs.getInt("id");
		        }
		        
		        id++;
		        
		        if(mark==1) 
		        {
		        	session.setAttribute("usermanager_message","user_exsit");
		        	response.sendRedirect("system_user.jsp");
		        }
		        else
		        {
		            if(system_user_right.equals("发布/修改/删除内容权限"))
		        	{
		        		log_caozuo = "添加了权限为 普通权限（拥有发布/修改/删除内容权限）的系统用户" + system_user_name;
		        		rights = 2;
		        	}
		        	else if(system_user_right.equals("发布内容权限"))
		        	{
		        		log_caozuo = "添加了权限为 普通权限（拥有发布内容权限）的系统用户" + system_user_name;
		        		rights = 3;
		        	}
		        	
		        	String sql2 = "insert into system_users (id,username,password,rights) values(" +id+ ",'" +system_user_name+ "','" +system_user_password+ "'," +rights+ ")";
		      	
		      	    statement2 = conn.prepareStatement(sql2);
		       	 	statement2.executeUpdate(sql2);
		       	 	
		       	 	
		       	 	
		       	 	session.setAttribute("usermanager_message","add_success");
		       	 	
		       	 	

		       	 			String log_sql2 = "insert into system_users_log(id,time_yearmonthday,time_hourminute,username,rights,caozuo,result) values(" +log_id+ ",'" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','超级权限/操作所有','" +log_caozuo+ "','成功')";
							log_statement2 = conn.prepareStatement(log_sql2);		
							log_statement2.executeUpdate(log_sql2);
		       	 	
		        	response.sendRedirect("system_user.jsp");
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
    
  </body>
</html>
