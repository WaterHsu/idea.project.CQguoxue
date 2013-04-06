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
	String log_rights_des = null;

	if(session.getAttribute("houtai_user_login_sure") != "houtai_have_login")
	{
			response.sendRedirect("login.jsp");
	}
	else 
	{
			
				houtai_username = session.getAttribute("houtai_user_username").toString();			
				log_rights = Integer.parseInt(session.getAttribute("houtai_user_rights").toString());
				if(log_rights == 1)
				{
					log_rights_des = "超级权限/操作所有";
				}
				else if(log_rights == 2)
				{
					log_rights_des = "普通权限/发布 修改 删除";
				}
				else if(log_rights == 3)
				{
					log_rights_des = "普通权限/发布 ";
				}
	}
%>




<% 
		 String author = request.getParameter("author").toString();
  	     author = new String(author.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String xiangce_name = request.getParameter("xiangce_name").toString();
  	     xiangce_name = new String(xiangce_name.getBytes("iso-8859-1"),"utf-8");




	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from pictureshow_xiangce";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     ResultSet rs = null;
			
		 int mark = 0;
		 int id = 0;
		 
		 
		 
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
		 
		 
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        while(rs.next())
		        {
		        	if(rs.getString("xiangce_name").equals(xiangce_name))
		        	{
		        		mark = 1;
		        		break;
		        	}
		        	
		        	id = rs.getInt("id");
		        }
		        
		        if(mark == 1)
		        {
		        	 session.setAttribute("newsmanager_pictureshow_xiangce_message","add_error");
		 			 response.sendRedirect("pictureshow.jsp");
		        }
		        else if(mark == 0)
		        {
		        	id++;
		        	
		        	
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
		 
		 			String time1 = "";
		 			time1 += year;
		 			time1 += "-";
		 			time1 += month;
		 			time1 += "-";
		 			time1 += day;
		 			String time2 = "";
		 			time2 += hour1;
		 			time2 += ":";
		 			time2 += minute1;
		 			
		 			String sql2 = "insert into pictureshow_xiangce (id,xiangce_name,author,add_user,time1,time2) values(" +id+ ",'" +xiangce_name+ "','" +author+ "','" +houtai_username+ "','"+time1+"','"+time2+"')";
		 			
		 		    statement2 = conn.prepareStatement(sql2);
		       	 	statement2.executeUpdate(sql2);
		       	 	
		       	 	log_caozuo = "在图片版块创建相册:" + xiangce_name;
		       	

		       		String log_sql2 = "insert into system_users_log(id,time_yearmonthday,time_hourminute,username,rights,caozuo,result) values(" +log_id+ ",'" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','" +log_rights_des+ "','" +log_caozuo+ "','成功')";
					log_statement2 = conn.prepareStatement(log_sql2);		
					log_statement2.executeUpdate(log_sql2);
		       	 	
		       	 	
		       	 	 session.setAttribute("newsmanager_pictureshow_xiangce_message","add_success");
		 			 response.sendRedirect("pictureshow.jsp");
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
