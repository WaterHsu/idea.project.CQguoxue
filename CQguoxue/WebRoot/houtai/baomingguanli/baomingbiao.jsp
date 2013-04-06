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
		 String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from baomingbiao_table";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        
  	     
  	     
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
  			<h2>报名表管理</h2>
  			<table>
  				<tr style="text-align:center;">
  					<td>表名</td>
  					<td>性质</td>
  					<td>创建人</td>
  					<td>状态</td>
  					<td>创建时间</td>
  					<td>操作</td>
  				</tr>
  				
  				<% 
  					while(rs.next())
  					{
  						String time = rs.getString("time_yearmonthday") + " " + rs.getString("time_hourminute");
  				%>
  				<tr>
  					<form method="post" action="houtai/baomingguanli/baomingbiao_deal.jsp">
  						<td><input type="text" readonly="true" name="table_name" value="<%=rs.getString("table_name") %>" /></td>
  						<td><input type="text" readonly="true" value="<%=rs.getString("xingzhi") %>" /></td>
  						<td><input type="text" readonly="true" value="<%=rs.getString("create_people") %>" /></td>
  					<% 
  							if(rs.getInt("state") == 0)
  							{
  					%>
  						<td><input type="text" value="报名表已失效" /></td>
  					<% 
  							}
  							else if(rs.getInt("state") == 1)
  							{
  					%>
  						<td><input type="text" value="报名表有效" /></td>
  					<% 
  							}
  					%>
  					<td><input type="text" readonly="true" value="<%=time %>" /></td>
  					<td>
  						<input type="hidden" name="number" value="<%=rs.getString("number") %>" />
  						<input type="submit" name="submit" value="查看报名情况" />
  					<% 
  							if(rs.getInt("state") == 0)
  							{
  					%>	
  						<input type="submit" name="submit" disabled="disabled" value="失效报名表" />
  					<% 
  							}
  							else if(rs.getInt("state") == 1)
  							{
  					%>
  						<input type="submit" name="submit" value="失效报名表" />
  					<% 
  							}
  					%>	
  					</td>
  					
  					</form>
  				</tr>
  				<% 
  						}
  					}catch(Exception e)
  	    			{
  	     				e.printStackTrace();
  	     			}
  				%>
  			
  			</table>
  		</div>
  		
  		<br><br><br>
  		
  		<div>
  			<form method="post" action="houtai/baomingguanli/baomingbiao_add.jsp">
  				<table>
  					<tr style="text-align:center;">
  						<td>表名</td>
  						<td>创建人</td>
  						<td>性质</td>
  						<td>操作</td>
  					</tr>
  					<tr>
  						<td>
  							<input name="table_name" type="text" />
  						</td>
  						<td>
  							<input name="create_people" type="text" />
  						</td>
  						<td>
  							<select name="xingzhi">
  								<option>===请选择===</option>
  								<option>国学培训</option>
  								<option>公益活动</option>
  							</select>
  						</td>
  						<td><input type="submit" value="添加" /></td>
  					</tr>
  				</table>
  			</form>
  		</div>
   
  </body>
</html>
