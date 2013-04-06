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
		 String submit = request.getParameter("submit").toString();
		 submit = new String(submit.getBytes("iso-8859-1"),"utf-8");
		 
		 String number = request.getParameter("number").toString();
		 number = new String(number.getBytes("iso-8859-1"),"utf-8");
		 
		 String table_name = request.getParameter("table_name").toString();
		 table_name = new String(table_name.getBytes("iso-8859-1"),"utf-8");
		 
		 String database_table_name = "baomingbiao_";
		 
		 database_table_name += table_name;
		 
		 String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "update baomingbiao_table set state = 0 where number='"+number+"'";
   	     String sql2 = "select * from " +database_table_name+ "";
   	     String sql3 = "select * from baomingbiao_table where number='" +number+ "'";
   	   //  String sql3 = "create table " +name+ "(id int(16) auto_increment,people_number varchar(64),name varchar(64),company varchar(128),xingzhi varchar(64),peixunfangan varchar(64),phone_number varchar(64),e_mail varchar(128),jiaoyuchengdu varchar(64),biyeyuanxiao varchar(128),biyeshijian varchar(64),tongxundizhi varchar(256),fukuangfangshi varchar(128), primary key(id))";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		      //  statement = conn.prepareStatement(sql);
		       // statement.executeUpdate(sql);
		        
		      if(submit.equals("失效报名表"))
		        {
		        	statement = conn.prepareStatement(sql);
		        	statement.executeUpdate(sql);
		        	
		        	//response.sendRedirect("baomingbiao.jsp");
		        }
		        else if(submit.equals("查看报名情况"))
		        {
		        	statement2 = conn.prepareStatement(sql2);
		        	rs = statement2.executeQuery(sql2);
		        	
		        	statement3 = conn.prepareStatement(sql3);
		        	rs2 = statement3.executeQuery(sql3);
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
  	
  		
  		<br><br><br><br>
  		
  		<div>
  			
  				<% 
  					  
  					}catch(Exception e)
  	     			{
  	     				e.printStackTrace();
  	     			} 
  				%>
  			
  		</div>
  	
  </body>
</html>
