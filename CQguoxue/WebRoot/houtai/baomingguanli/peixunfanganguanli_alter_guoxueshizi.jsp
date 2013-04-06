<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@page import="java.beans.Statement"%>  
<%@page import="com.mysql.jdbc.Driver"%>  
<%@page import="java.sql.*"%>  
<%@page import="java.io.*" %>
<%@page import=" java.util.*" %>


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
		 String course_name = request.getParameter("course_name").toString();
		 course_name = new String(course_name.getBytes("iso-8859-1"),"utf-8");
		 
		 String course_teacher = request.getParameter("course_teacher").toString();
		 course_teacher = new String(course_teacher.getBytes("iso-8859-1"),"utf-8");
		 
		 String course_kaike_time = request.getParameter("course_kaike_time").toString();
		 course_kaike_time = new String(course_kaike_time.getBytes("iso-8859-1"),"utf-8");
		 
		 String course_place = request.getParameter("course_place").toString();
		 course_place = new String(course_place.getBytes("iso-8859-1"),"utf-8");
		 
		 String course_cishu = request.getParameter("course_cishu").toString();
		 course_cishu = new String(course_cishu.getBytes("iso-8859-1"),"utf-8");
		 
		 String course_shangke_time = request.getParameter("course_shangke_time").toString();
		 course_shangke_time = new String(course_shangke_time.getBytes("iso-8859-1"),"utf-8");
		 
		String idd = request.getParameter("id").toString();
		 idd = new String(idd.getBytes("iso-8859-1"),"utf-8");
		 
		 int id = Integer.parseInt(idd);
		 
		 String submit = request.getParameter("submit").toString();
  	     submit = new String(submit.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "delete from peixunfangan_guoxueshizi where id = " + id +"";
   	     
   	      String sql2 = "update peixunfangan_guoxueshizi set course_name = '"+course_name+"' where id="+id+"";
   	      String sql3 = "update peixunfangan_guoxueshizi set course_teacher = '"+course_teacher+"' where id="+id+"";
   	      String sql4 = "update peixunfangan_guoxueshizi set course_kaike_time = '"+course_kaike_time+"' where id="+id+"";
   	      String sql5 = "update peixunfangan_guoxueshizi set course_place = '"+course_place+"' where id="+id+"";
   	      String sql6 = "update peixunfangan_guoxueshizi set course_cishu = '"+course_cishu+"' where id="+id+"";
   	      String sql7 = "update peixunfangan_guoxueshizi set course_shangke_time = '"+course_shangke_time+"' where id="+id+"";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     PreparedStatement statement4 = null;
  	     PreparedStatement statement5 = null;
  	     PreparedStatement statement6 = null;
  	     PreparedStatement statement7 = null;
  	     
  	     
  	     
  	     
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
		 
		        
		        if(submit.equals("删除"))
		        {
		        	 statement = conn.prepareStatement(sql);
		 	    	 statement.executeUpdate(sql);
		 	    	 
		 	    	 
		 	    	  log_caozuo = "在国学师资培训方案里删除了课程:" +course_name+";授课老师：" +course_teacher;
		       	

		       		String log_sql2 = "insert into system_users_log(id,time_yearmonthday,time_hourminute,username,rights,caozuo,result) values(" +log_id+ ",'" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','" +log_rights_des+ "','" +log_caozuo+ "','成功')";
					log_statement2 = conn.prepareStatement(log_sql2);		
					log_statement2.executeUpdate(log_sql2);
		 	    	 
		 	    	 response.sendRedirect("peixunfanganguanli.jsp");
		        }
		        else if(submit.equals("修改"))
		        {
		        	
		      
		      		  statement2 = conn.prepareStatement(sql2);
		 	    	  statement2.executeUpdate(sql2);
		 	    	  
		 	    	  statement3 = conn.prepareStatement(sql3);
		 	    	  statement3.executeUpdate(sql3);
		 	    	  
		 	    	  statement4 = conn.prepareStatement(sql4);
		 	    	  statement4.executeUpdate(sql4);
		 	    	  
		 	    	  statement5 = conn.prepareStatement(sql5);
		 	    	  statement5.executeUpdate(sql5);
		 	    	  
		 	    	  statement6 = conn.prepareStatement(sql6);
		 	    	  statement6.executeUpdate(sql6);
		 	    	  
		 	    	  statement7 = conn.prepareStatement(sql7);
		 	    	  statement7.executeUpdate(sql7);
		 	    	  
		 	    	  
		 	    	  log_caozuo = "在国学师资培训方案里修改了课程:" +course_name+";授课老师：" +course_teacher;
		       	

		       		  String log_sql2 = "insert into system_users_log(id,time_yearmonthday,time_hourminute,username,rights,caozuo,result) values(" +log_id+ ",'" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','" +log_rights_des+ "','" +log_caozuo+ "','成功')";
					  log_statement2 = conn.prepareStatement(log_sql2);		
					  log_statement2.executeUpdate(log_sql2);
		 	    	  
		 	    	  response.sendRedirect("peixunfanganguanli.jsp");
		 	    //	out.println(submit);
		 	    	  
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
    
    <title>My JSP 'peixunfanganguanli_alter_gongwuyuan.jsp' starting page</title>
    
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
