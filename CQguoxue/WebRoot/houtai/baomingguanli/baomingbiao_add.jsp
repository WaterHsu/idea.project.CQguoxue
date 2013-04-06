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
    	 int y = 2561 + random.nextInt(9000);
		 
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
		 

		 String table_name = request.getParameter("table_name").toString();
		 table_name = new String(table_name.getBytes("iso-8859-1"),"utf-8");
		 
		 String create_people = request.getParameter("create_people").toString();
		 create_people = new String(create_people.getBytes("iso-8859-1"),"utf-8");
		 
		 String xingzhi = request.getParameter("xingzhi").toString();
		 xingzhi = new String(xingzhi.getBytes("iso-8859-1"),"utf-8");
		 
		 
		 int id = 0;

		 String name = "baomingbiao_";
		 name += number;

		 String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from baomingbiao_table order by id desc";
   	     String sql3 = "create table " +name+ "(id int(16) auto_increment,people_number varchar(64),name varchar(64),company varchar(128),xingzhi varchar(64),peixunfangan varchar(64),phone_number varchar(64),e_mail varchar(128),jiaoyuchengdu varchar(64),biyeyuanxiao varchar(128),biyeshijian varchar(64),tongxundizhi varchar(256),fukuangfangshi varchar(128),time_yearmonthday varchar(64), time_hourminute varchar(64), shenhe_state int(3), minzhu varchar(128),xingbie varchar(64),born_year_month_day varchar(128), primary key(id))";
  		 String sql4 = "select * from baomingbiao_table where state = 1";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     PreparedStatement statement4 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	     
  	     int sign =  0;
  	     
  	     
  	     
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
		 	    
		 	    statement4 = conn.prepareStatement(sql4);
		        rs2 = statement4.executeQuery(sql4);
		        
		        while(rs2.next())
		        {
		        	if(rs2.getString("xingzhi").equals(xingzhi))
		        	{
		        		sign = 1;
		        		break;
		        	}
		        }
		 
		 		if(sign == 1)
		 		{
		 			session.setAttribute("baomingguanli_baomingbiaoadd_message","error");
		 			response.sendRedirect("baomingbiao.jsp");
		 		}
		 		else if(sign == 0)
		 		{
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        statement3 = conn.prepareStatement(sql3);
		        statement3.executeUpdate(sql3);
		        
		        while(rs.next())
		        {
		        	id = rs.getInt("id");
		        	break;
		        }
		        
		        id++;
		        
		        String sql2 = "insert into baomingbiao_table (id,number,time_yearmonthday,time_hourminute,create_people,table_name,state,xingzhi) values(" +id+ ",'" +number+ "','" +time_yearmonthday+ "','" +time_hourminute+ "','" +create_people+ "','" +table_name+ "',1,'" +xingzhi+ "')";
	
  	            statement2 = conn.prepareStatement(sql2);
		       	statement2.executeUpdate(sql2);
		       	
		       	
		       	log_caozuo = "创建:" +xingzhi+"方面的报名表" +table_name+";编号为:"+number;
		       	

		       	String log_sql2 = "insert into system_users_log(id,time_yearmonthday,time_hourminute,username,rights,caozuo,result) values(" +log_id+ ",'" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','" +log_rights_des+ "','" +log_caozuo+ "','成功')";
				log_statement2 = conn.prepareStatement(log_sql2);		
				log_statement2.executeUpdate(log_sql2);
		        
		        
		        response.sendRedirect("baomingbiao.jsp");
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
