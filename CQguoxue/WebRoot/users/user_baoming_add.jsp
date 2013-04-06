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
		String username = session.getAttribute("user_login_login").toString();

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
		 
		 String people_number = request.getParameter("people_number").toString();
  	     people_number = new String(people_number.getBytes("iso-8859-1"),"utf-8");	
  	     
  	     String name = request.getParameter("name").toString();
  	     name = new String(name.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String company = request.getParameter("company").toString();
  	     company = new String(company.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String xingzhi = request.getParameter("xingzhi").toString();
  	     xingzhi = new String(xingzhi.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     String peixunfangan = request.getParameter("peixunfangan").toString();
  	     peixunfangan = new String(peixunfangan.getBytes("iso-8859-1"),"utf-8");

		 String phone_number = request.getParameter("phone_number").toString();
  	     phone_number = new String(phone_number.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String e_mail = request.getParameter("e_mail").toString();
  	     e_mail = new String(e_mail.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String jiaoyuchengdu = request.getParameter("jiaoyuchengdu").toString();
  	     jiaoyuchengdu = new String(jiaoyuchengdu.getBytes("iso-8859-1"),"utf-8");  	
  	     
  	     String biyeyuanxiao = request.getParameter("biyeyuanxiao").toString();
  	     biyeyuanxiao = new String(biyeyuanxiao.getBytes("iso-8859-1"),"utf-8"); 
  	     
  	     String biyeshijian = request.getParameter("biyeshijian").toString();
  	     biyeshijian = new String(biyeshijian.getBytes("iso-8859-1"),"utf-8"); 
  	     
  	     String tongxundizhi = request.getParameter("tongxundizhi").toString();
  	     tongxundizhi = new String(tongxundizhi.getBytes("iso-8859-1"),"utf-8"); 
  	     
  	     String fukuangfangshi = request.getParameter("fukuangfangshi").toString();
  	     fukuangfangshi = new String(fukuangfangshi.getBytes("iso-8859-1"),"utf-8"); 
  	     
  	     String minzhu = request.getParameter("minzhu").toString();
  	     minzhu = new String(minzhu.getBytes("iso-8859-1"),"utf-8"); 
  	     
  	     String xingbie = request.getParameter("xingbie").toString();
  	     xingbie = new String(xingbie.getBytes("iso-8859-1"),"utf-8"); 
  	     
  	     String born_year_month_day = request.getParameter("born_year_month_day").toString();
  	     born_year_month_day = new String(born_year_month_day.getBytes("iso-8859-1"),"utf-8"); 
  	     
  	     String check = request.getParameter("check").toString();
  	     check = new String(check.getBytes("iso-8859-1"),"utf-8"); 
  	     
  	     int check2 = Integer.parseInt(check);
  	     
  	    int id = 0;    
  	    String table_name = "baomingbiao_";
  	    
  	    
  	    
  	      String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from baomingbiao_table where state = 1";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	     
  	     
  	     
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
		        	if(rs.getString("xingzhi").equals(xingzhi))
		        	{
		        		table_name += rs.getString("number");
		        		break;
		        	}
		        }
		        
		        if(check2 == 0)
		        {
		        
		        String sql2 = "select * from " +table_name+ " order by id desc";
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);
		        
		        while(rs2.next())
		        {
		        	id = rs2.getInt("id");
		        	break;
		        }
		        
		        id++;
		        
		        String sql3 = "insert into " +table_name+ " (id,people_number,name,company,xingzhi,peixunfangan,phone_number,e_mail,jiaoyuchengdu,biyeyuanxiao,biyeshijian,tongxundizhi,fukuangfangshi,time_yearmonthday,time_hourminute,shenhe_state,minzhu,xingbie,born_year_month_day) values(" +id+ ",'" +people_number+ "','" +name+ "','" +company+ "','" +xingzhi+ "','" +peixunfangan+ "','" +phone_number+ "','" +e_mail+ "','" +jiaoyuchengdu+ "','" +biyeyuanxiao+ "','" +biyeshijian+ "','" +tongxundizhi+ "','" +fukuangfangshi+ "','" +time_yearmonthday+ "','" +time_hourminute+ "',0,'" +minzhu+ "','" +xingbie+ "','" +born_year_month_day+ "')";
		        
		       	statement3 = conn.prepareStatement(sql3);
		       	statement3.executeUpdate(sql3);
		       	
		       	response.sendRedirect("user_baoming.jsp");
		       	}
		        else if(check2 == 1)
		        {
		        	String sql4 = "update " +table_name+ " set name = '"+name+"' where people_number='"+people_number+"'";
		        	String sql5 = "update " +table_name+ " set company = '"+company+"' where people_number='"+people_number+"'";
		        	String sql6 = "update " +table_name+ " set xingzhi = '"+xingzhi+"' where people_number='"+people_number+"'";
		        	String sql7 = "update " +table_name+ " set peixunfangan = '"+peixunfangan+"' where people_number='"+people_number+"'";
		        	String sql8 = "update " +table_name+ " set phone_number = '"+phone_number+"' where people_number='"+people_number+"'";
		        	String sql9 = "update " +table_name+ " set e_mail = '"+e_mail+"' where people_number='"+people_number+"'";
		        	String sql10 = "update " +table_name+ " set jiaoyuchengdu = '"+jiaoyuchengdu+"' where people_number='"+people_number+"'";
		        	String sql11 = "update " +table_name+ " set biyeyuanxiao = '"+biyeyuanxiao+"' where people_number='"+people_number+"'";
		        	String sql12 = "update " +table_name+ " set biyeshijian = '"+biyeshijian+"' where people_number='"+people_number+"'";
		        	String sql13 = "update " +table_name+ " set tongxundizhi = '"+tongxundizhi+"' where people_number='"+people_number+"'";
		        	String sql14 = "update " +table_name+ " set fukuangfangshi = '"+fukuangfangshi+"' where people_number='"+people_number+"'";
		        	String sql15 = "update " +table_name+ " set time_yearmonthday = '"+time_yearmonthday+"' where people_number='"+people_number+"'";
		        	String sql16 = "update " +table_name+ " set time_hourminute = '"+time_hourminute+"' where people_number='"+people_number+"'";
		        	String sql17 = "update " +table_name+ " set shenhe_state = 0 where people_number='"+people_number+"'";
		        	String sql18 = "update " +table_name+ " set minzhu = '"+minzhu+"' where people_number='"+people_number+"'";
		        	String sql19 = "update " +table_name+ " set xingbie = '"+xingbie+"' where people_number='"+people_number+"'";
		        	String sql20 = "update " +table_name+ " set born_year_month_day = '"+born_year_month_day+"' where people_number='"+people_number+"'";
		        	
		        	
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
		        	PreparedStatement statement14 = null;
		        	PreparedStatement statement15 = null;
		        	PreparedStatement statement16 = null;
		        	PreparedStatement statement17 = null;
		        	PreparedStatement statement18 = null;
		        	PreparedStatement statement19 = null;
		        	PreparedStatement statement20 = null;
		        	
		        	
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
		 	    
		 	    statement15 = conn.prepareStatement(sql15);
		 	    statement15.executeUpdate(sql15);
		 	    
		 	    statement16 = conn.prepareStatement(sql16);
		 	    statement16.executeUpdate(sql16);
		 	    
		 	    statement17 = conn.prepareStatement(sql17);
		 	    statement17.executeUpdate(sql17);
		 	    
		 	    statement18 = conn.prepareStatement(sql18);
		 	    statement18.executeUpdate(sql18);
		 	    
		 	    
		 	    statement19 = conn.prepareStatement(sql19);
		 	    statement19.executeUpdate(sql19);
		 	    
		 	    
		 	    statement20 = conn.prepareStatement(sql20);
		 	    statement20.executeUpdate(sql20);
		 	    
		 	    
		 	    log_caozuo = "在" +xingzhi+ "报名" ;
		       	

		       		String log_sql2 = "insert into ordinary_users_log(time_yearmonthday,time_hourminute,username,caozuo,result) values('" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +username+ "','" +log_caozuo+ "','成功')";
					log_statement2 = conn.prepareStatement(log_sql2);		
					log_statement2.executeUpdate(log_sql2);
		        	
		        
		        response.sendRedirect("user_baoming.jsp");
		        	
		        	
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
