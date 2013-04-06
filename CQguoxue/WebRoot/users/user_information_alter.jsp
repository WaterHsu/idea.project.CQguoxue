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

		 String user_number = request.getParameter("user_number").toString();
  	     user_number = new String(user_number.getBytes("iso-8859-1"),"utf-8");	
  	     
  	    
  	    String user_real_name = request.getParameter("user_real_name").toString();
  	     user_real_name = new String(user_real_name.getBytes("iso-8859-1"),"utf-8");	
  	     
  	     String sex = request.getParameter("sex").toString();
  	     sex = new String(sex.getBytes("iso-8859-1"),"utf-8");	
  	     
  	     String born_year_month_day = request.getParameter("born_year_month_day").toString();
  	     born_year_month_day = new String(born_year_month_day.getBytes("iso-8859-1"),"utf-8");	
  	     
  	     String jiguan = request.getParameter("jiguan").toString();
  	     jiguan = new String(jiguan.getBytes("iso-8859-1"),"utf-8");	
  	     
  	     String now_living_place = request.getParameter("now_living_place").toString();
  	     now_living_place = new String(now_living_place.getBytes("iso-8859-1"),"utf-8");	
  	     
  	     String phone_number = request.getParameter("phone_number").toString();
  	     phone_number = new String(phone_number.getBytes("iso-8859-1"),"utf-8");	 	
  	     
  	     String company = request.getParameter("company").toString();
  	     company = new String(company.getBytes("iso-8859-1"),"utf-8");	
  	     
  	     String gongzuozhiwei = request.getParameter("gongzuozhiwei").toString();
  	     gongzuozhiwei = new String(gongzuozhiwei.getBytes("iso-8859-1"),"utf-8");	
  	     
  	     
  	     String minzhu = request.getParameter("minzhu").toString();
  	     minzhu = new String(minzhu.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String jiaoyuchengdu = request.getParameter("jiaoyuchengdu").toString();
  	     jiaoyuchengdu = new String(jiaoyuchengdu.getBytes("iso-8859-1"),"utf-8");
  	     
  	      String biyeyuanxiao = request.getParameter("biyeyuanxiao").toString();
  	     biyeyuanxiao = new String(biyeyuanxiao.getBytes("iso-8859-1"),"utf-8");
  	     
  	      String biyeshijian = request.getParameter("biyeshijian").toString();
  	     biyeshijian = new String(biyeshijian.getBytes("iso-8859-1"),"utf-8");
  	     
  	      String tongxundizhi = request.getParameter("tongxundizhi").toString();
  	     tongxundizhi = new String(tongxundizhi.getBytes("iso-8859-1"),"utf-8");
  	     
  	      String youbian = request.getParameter("youbian").toString();
  	     youbian = new String(youbian.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     
  	     
  	     
  	     
  	    	 
		
  	     
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql1 = "update user_information set user_real_name = '"+user_real_name+"' where user_number='"+user_number+"'";
   	     String sql2 = "update user_information set sex = '"+sex+"' where user_number='"+user_number+"'";
   	     String sql3 = "update user_information set born_year_month_day = '"+born_year_month_day+"' where user_number='"+user_number+"'";
   	     String sql4 = "update user_information set jiguan = '"+jiguan+"' where user_number='"+user_number+"'";
   	     String sql5 = "update user_information set now_living_place = '"+now_living_place+"' where user_number='"+user_number+"'";
   	     String sql6 = "update user_information set phone_number = '"+phone_number+"' where user_number='"+user_number+"'";
   	     String sql7 = "update user_information set gongzuozhiwei = '"+gongzuozhiwei+"' where user_number='"+user_number+"'";
   	     String sql8 = "update user_information set company = '"+company+"' where user_number='"+user_number+"'";
   	     String sql9 = "update user_information set minzhu = '"+minzhu+"' where user_number='"+user_number+"'";
   	     String sql10 = "update user_information set jiaoyuchengdu = '"+jiaoyuchengdu+"' where user_number='"+user_number+"'";
   	     String sql11 = "update user_information set biyeyuanxiao = '"+biyeyuanxiao+"' where user_number='"+user_number+"'";
   	     String sql12 = "update user_information set biyeshijian = '"+biyeshijian+"' where user_number='"+user_number+"'";
   	     String sql13 = "update user_information set tongxundizhi = '"+tongxundizhi+"' where user_number='"+user_number+"'";
   	     String sql14 = "update user_information set youbian = '"+youbian+"' where user_number='"+user_number+"'";
   	     
   	     
  	     PreparedStatement statement1 = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     PreparedStatement statement4 = null;
  	     PreparedStatement statement5 = null;
  	     PreparedStatement statement6 = null;
  	     PreparedStatement statement7 = null;
  	     PreparedStatement statement8 = null;
  	     PreparedStatement statement9 = null;
  	     PreparedStatement statement10 = null;
  	     PreparedStatement statement11 = null;
  	     PreparedStatement statement12 = null;
  	     PreparedStatement statement13 = null;
  	     PreparedStatement statement14= null;
  	     
  	     
  	     
  	     
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
		        
		   		statement1 = conn.prepareStatement(sql1);
		 	    statement1.executeUpdate(sql1);
		 	    
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
		 	    
		 	    
		 	    statement8 = conn.prepareStatement(sql8);
		 	    statement8.executeUpdate(sql8);
		 	    
		 	    statement9 = conn.prepareStatement(sql9);
		 	    statement9.executeUpdate(sql9);
		 	    
		 	    statement10 = conn.prepareStatement(sql10);
		 	    statement10.executeUpdate(sql10);
		 	    
		 	    statement11 = conn.prepareStatement(sql11);
		 	    statement11.executeUpdate(sql11);
		 	    
		 	    statement12 = conn.prepareStatement(sql12);
		 	    statement12.executeUpdate(sql12);
		 	    
		 	    statement13 = conn.prepareStatement(sql13);
		 	    statement13.executeUpdate(sql13);
		 	    
		 	    statement14 = conn.prepareStatement(sql14);
		 	    statement14.executeUpdate(sql14);
		 	    
		 	    
		 	    log_caozuo = "修改了用户信息" ;
		       	

		       		String log_sql2 = "insert into ordinary_users_log(time_yearmonthday,time_hourminute,username,caozuo,result) values('" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +username+ "','" +log_caozuo+ "','成功')";
					log_statement2 = conn.prepareStatement(log_sql2);		
					log_statement2.executeUpdate(log_sql2);
		        
		      
		        response.sendRedirect("user_information.jsp");

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
