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
   	     String sql = "select * from pictureshow_xiangce order by id desc";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		 /*       out.println("<div><table>");
		        out.println("<tr><td>相册创建时间</td><td>相册创建人</td><td>相册名称</td><td>操作</td></tr>");
		        while(rs.next())
		        {
		        	out.println("<tr><form method='post' action='houtai/newsmanager/pictureshow_xiangce_deal.jsp'><td>" +rs.getString("time1")+" " +rs.getString("time2")+ "</td><td><input type='text' readonly='true' name='author' value='" +rs.getString("author")+ "' /></td><td><input name='xiangce_name' type='text' readonly='true' value='" +rs.getString("xiangce_name")+ "' /></td><td><input type='submit' name='submit' value='进入相册' /><input type='submit' name='submit' value='删除' /><input type='submit' name='submit' value='修改' /></td></form></tr>");
		        }
		        out.println("</table></div>");
		        
		        	*/			        		        		        		        

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
  		<h2>相册列表</h2>
  			<table border=3>
  				<tr style="text-align:center;">
  					<td>相册创建时间</td>
  					<td>相册创建人</td>
  					<td>相册名称</td>
  					<td>操作</td>
  				</tr>
  				<% 
  					while(rs.next())
  					{
  						String time = rs.getString("time1") + " " + rs.getString("time2");
  				%>
  				<tr>
  					<form method="post" action="houtai/newsmanager/pictureshow_xiangce_deal.jsp">
  						<td><%=time %></td>
  						<td>
  							<input type="text" readonly="true" name="author" value="<%=rs.getString("author") %>" />
  						</td>
  						<td>
  							<input name="xiangce_name" type="text" readonly="true" value="<%=rs.getString("xiangce_name") %>" />
  						</td>
  						<td>
  							<input type="submit" name="submit" value="进入相册" />
  							<% 
  								if(log_rights == 1 || log_rights == 2)
  								{
  							%>
  							<input type="submit" name="submit" value="删除" />
  							<input type="submit" name="submit" value="修改" />
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
  	
  		<br><br><br><br>
  	
  		<div>
  			<h2>创建相册</h2>
  			<form method="post" action="houtai/newsmanager/pictureshow_xiangce_add.jsp">
  				<table>
  					<tr>
  						<td>相册创建人:</td>
  						<td><input type="text" name="author" ></td>
  					</tr>
  					<tr>
  						<td>相册名字:</td>
  						<td><input type="text" name="xiangce_name" ></td>
  					</tr>
  					<tr>
  						<td></td>
  						<td><input type="submit" value="创建相册" /></td>
  					</tr>
  				</table>
  			</form>
  		</div>
  		
  		<div>
  				
  		</div>
    
  </body>
</html>
