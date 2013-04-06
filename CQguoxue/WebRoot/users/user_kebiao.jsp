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
  	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from baomingbiao_table order by id desc";
   	     String sql2 = "select * from users_table where username = '" +username+ "'";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	     ResultSet rs3 = null;
  	     
  	     String user_number = null;
	     String peixunfangan = null;
	     int sign = 0;
	     int mark = -1;
	     String kebiao = "peixunfangan_";
     
  	         	      	       	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);
		        
		        while(rs2.next())
		        {
		        	user_number = rs2.getString("user_number");
		        }
		        
		        while(rs.next())
		        {
		        	String table_name = "baomingbiao_";
		        	PreparedStatement statementtemp = null;
		        	ResultSet rstemp = null;
		        	
		        	table_name += rs.getString("number");
		        	String sqltemp = "select * from " +table_name+ " where people_number = '" +user_number+ "'";
		        	
		        	statementtemp = conn.prepareStatement(sqltemp);
		        	rstemp = statementtemp.executeQuery(sqltemp);
		        	
		        	if(rstemp.next())
		        	{
		        		if(rstemp.getInt("shenhe_state") == 1)
		        		{
		        			mark = 1;
		        			if(rstemp.getString("xingzhi").equals("国学培训"))
		        			{
		        				 if(rstemp.getString("peixunfangan").equals("公务员培训"))
		        				 {
		        				 	 peixunfangan = "gongwuyuan";
		        				 }
		        				 else if(rstemp.getString("peixunfangan").equals("企事业管理培训"))
		        				 {
		        				 	peixunfangan = "qishiyeguanli";
		        				 }
		        				 else if(rstemp.getString("peixunfangan").equals("国学师资培训"))
		        				 {
		        				 	peixunfangan = "guoxueshizi";
		        				 }
		        				 else if(rstemp.getString("peixunfangan").equals("爱好者培训"))
		        				 {
		        				 	peixunfangan = "aihaozhe";
		        				 }
		        				sign = 1;
		        				break;
		        			
		        			}
		        			else
		        			{
		        				sign = 2;
		        				break;
		        			}
		        		}
		        		else if(rstemp.getInt("shenhe_state") == 2)
		        		{
		        			mark = 2;
		        		}
		        		else if(rstemp.getInt("shenhe_state") == 0)
		        		{
		        			mark = 0;
		        		}
		        	}
		        }
		        
		        
		  /*      if(sign == 1)
		        {
		        	kebiao += peixunfangan;
		        	String sql3 = "select * from " +kebiao+ "";
		        	
		        	statement3 = conn.prepareStatement(sql3);
		        	rs3 = statement3.executeQuery(sql3);
		        }
		        
	
		        

  	     }catch(Exception e)
  	     {
  	     	e.printStackTrace();
  	     }*/
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
  	
  		<div>
  			<% 
  				if(mark == 1)
  				{
  			%>
  			<h2>你的报名已经审核通过！</h2>
  			<% 
  					 if(sign == 1)
  					 {
  					 	 kebiao += peixunfangan;
		        		 String sql3 = "select * from " +kebiao+ "";
		        	
		        		 statement3 = conn.prepareStatement(sql3);
		        	 	 rs3 = statement3.executeQuery(sql3);
		        	 	 
  			%>
  			<table border=2>
  				<tr style="text-align:center;">
  					<td>课程名字</td>
  					<td>授课老师</td>
  					<td>开课时间</td>
  					<td>上课地方</td>
  					<td>课时</td>
  					<td>上课时间</td>
  				</tr>
  			<% 
  						   while(rs3.next())
  						   {
  			%>
  				<tr>
  					<td><%=rs3.getString("course_name") %></td>	
  					<td><%=rs3.getString("course_teacher") %></td>	
  					<td><%=rs3.getString("course_kaike_time") %></td>	
  					<td><%=rs3.getString("course_place") %></td>	
  					<td><%=rs3.getString("course_cishu") %></td>	
  					<td><%=rs3.getString("course_shangke_time") %></td>	
  				</tr>
  			<% 
  							}
  			%>
  			</table>
  			<% 
  						}
  						else if(sign == 2)
  						{
  			%>
  			<h3>公益活动具体项目看网站首页通知！</h3>
  			<% 
  						}
  					}
  					else if(mark == 2)
  					{
  			%>
  			<h3>你的报名审核未通过！</h3>
  			<% 
  					}
  					else if(mark == 0)
  					{
  			%>
  			<h3>你的报名还未审核！</h3>
  			<% 
  					}
  					else if(mark == -1)
  					{
  			%>
  			<h3>你还未报名！</h3>
  			<% 
  					}
  				}catch(Exception e)
  	     		{
  	     			e.printStackTrace();
  	     		}	
  			%>
  		</div>
    
  </body>
</html>
