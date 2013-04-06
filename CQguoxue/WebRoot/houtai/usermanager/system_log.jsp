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

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from system_users_log";
   	     String sql2 = "select * from ordinary_users_log";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	    

  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);
		        
		        
		        
		  
		   
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
	
	
	<script>
	
			function ff(key)
			{
				switch(key)
				{
					case 1:
						document.getElementById("system_log").style.display = "";
						document.getElementById("ordinary_log").style.display = "none";
						break;
					case 2:
						document.getElementById("system_log").style.display = "none";
						document.getElementById("ordinary_log").style.display = "";
						break;
				}	
			}
	
	
	</script>
	
	

  </head>
  
  <body>
  
  		<div>
  			<table>
  					<tr>
  						<td><a  href="javascript:void(0);" onclick="ff(1)">查看网站后台日志</a></td>
  						<td>&nbsp;&nbsp;</td>
  						<td><a  href="javascript:void(0);" onclick="ff(2)">查看普通用户日志</a></td>
  					</tr>
  			</table>
  		</div>
  		
  		<br><br><br><br>
  		
  		<div id="system_log"  style="display:none;">
  				<table>
  					<% 
  						while(rs.next())
  						{
  							String time = rs.getString("time_yearmonthday") + " " + rs.getString("time_hourminute");
  					%>
  					<tr>
  						<td>
  							系统用户：<span><%=rs.getString("username") %></span>,拥有<span><%=rs.getString("rights") %></span>的权限,在<span><%=time %></span>,进行了<span><%=rs.getString("caozuo") %></span>的操作。
  						</td>
  					</tr>
  					<% 
  						}
  					%>
  				</table>
  		</div>
    
    	<div id="ordinary_log"  style="display:none;">
    			<table>
  					<% 
  						while(rs2.next())
  						{
  							String time = rs2.getString("time_yearmonthday") + " " + rs2.getString("time_hourminute");
  					%>
  					<tr>
  						<td>
  							普通用户:<span><%=rs2.getString("username") %></span>,在<span><%=time %></span>,进行了<span><%=rs2.getString("caozuo") %></span>的操作。
  						</td>
  					</tr>
  					<% 
  						}
  					%>
  				</table>
    	</div>
    	
    <%
    	 }catch(Exception e)
  	     {
  	     	e.printStackTrace();
  	     }

     %>
  </body>
</html>
