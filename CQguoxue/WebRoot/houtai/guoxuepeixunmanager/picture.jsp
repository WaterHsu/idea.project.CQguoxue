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
 
   	     String sql = "select * from guoxuepeixun_picture";
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
  		
  				<table border=3>
  				
  						<tr style="text-align: center;">
  							 <td>所属板块</td>
  							 <td>图片</td>
  							 <td>上传/修改</td>
  						</tr>
  						<% 
  							while(rs.next())
  							{
  						%>
  						<tr>
  							<td><input type="text" value="<%=rs.getString("picture_belong") %>" readonly /></td>
  							<td><img src="<%=rs.getString("picture_route") %>" height="150px" width="250px" /></td>
  							<td>
								<form name='upfileform' method='post' action='houtai/guoxuepeixunmanager/picture_upload.jsp?id=<%=rs.getInt("id")  %>' enctype='multipart/form-data'>
									<input type='file' id='mpic' name='mpic'  size='50' /><br>
									<input type='submit' name='submit' value='上传' />
								</form>
							</td>
  						</tr>
  						<% 
  							}
  						%>
  				
  				</table>
  		
  		</div>
    
  </body>
</html>
