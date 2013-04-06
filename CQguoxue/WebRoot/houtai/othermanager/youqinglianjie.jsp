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
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
 
   	     String sql = "select * from other_youqinglianjie order by id desc";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;

			
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 		
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);

	

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
  		<div>
			<h2>友情链接</h2>
			<table>
				<tr style="text-align:center;">
					<td>链接名称</td>
					<td>链接地址</td>
					<td>操作</td>
				</tr>
				<% 
					while(rs.next())
					{
				%>
				<tr>
					<form method="post" action="houtai/othermanager/youqinglianjie_deal.jsp">				
						<td><input value="<%=rs.getString("name") %>" name="name" type="text" /></td>
						<td><input value="<%=rs.getString("url") %>" name="url" type="text" /></td>
						<td>
							<input type="hidden" value="<%=rs.getString("name") %>" name="name2"  />
						<% 
  							if(log_rights == 1 || log_rights == 2)
  							{
  						%>	
							<input type="submit" value="修改" name="submit" />
							<input type="submit" value="删除" name="submit" />
						<% 
							}
						%>	
						</td>
					</form>
				</tr>
				<% 
					}
				%>
			</table>
		</div>
		
		
		<div>
			<h2>添加链接</h2>
			<form  method="post" action="houtai/othermanager/youqinglianjie_add.jsp">
				<table>
					<tr>
						<td>链接名称:</td>
						<td><input type="text" name="name"  /></td>
					</tr>
					<tr>
						<td>链接地址:</td>
						<td><input type="text" name="url" /></td>
					</tr>

					<tr>
						<td></td>
						<td><input type="submit"  value="添加" /></td>
					</tr>
				</table>
			</form>
		</div>
    
  </body>
</html>
