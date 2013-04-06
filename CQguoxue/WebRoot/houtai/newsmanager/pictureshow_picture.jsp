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

  	     
  	     String xiangce_name = session.getAttribute("xiangce_name").toString();
  	   //  xiangce_name = new String(xiangce_name.getBytes("iso-8859-1"),"utf-8");




	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
 
   	     String sql4 = "select * from pictureshow where xiangce = '" + xiangce_name+ "'";
   	     String sql5 = "select * from pictureshow_xiangce";
  	     PreparedStatement statement4 = null;
  	     PreparedStatement statement5 = null;
  	     ResultSet rs2 = null;
  	     ResultSet rs3 = null;
  	     
  	     String xxxx = null;
			
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 		
				statement4 = conn.prepareStatement(sql4);
		        rs2 = statement4.executeQuery(sql4);
		        	 
		        statement5 = conn.prepareStatement(sql5);
		        rs3 = statement5.executeQuery(sql5);
		     //   out.println(xiangce_name);
		        
		   /*     out.println("所在相册：" + xiangce_name);
		        	 out.println("<div>");
		        	 while(rs2.next())
		        	 {
		        	    xxxx = rs2.getString("picture_route");
		        	 	out.println("<div height='150px' width='200px'><div>");

		        		 <img src='" +rs2.getString("picture_route")+ "' height='100px' width='150px' />
 						out.println("</div><div>所属相册："+rs2.getString("xiangce")+"上传时间：" +rs2.getString("time_yearmonth")+ "</div>");
		        	 	out.println("<div><table><tr><form><td><select>");
		        	 		while(rs3.next())
		        	 		{
		        	 			out.println("<option>" +rs3.getString("xiangce_name")+ "</option");
		        	 		}
		        	 	out.println("</select></td><td><input type='submit' value='提交' /></td></form></tr><tr><form><td></td><td><input type='submit' value='删除' /></td></form></tr></table></div></div>");
		        	 }
		        	 
		        	 out.println("<div><talbe><tr><td>上传照片:</td>");
		        	 out.println("<td><form name='upfileform' method='post' action='houtai/newsmanager/pictureshow_uploadpic.jsp' enctype='multipart/form-data'><input type='file' id='mpic' name='mpic'  size='50' /><br><input type='submit' name='submit' value='上传' /></form></td></tr></table></div>");
		        
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
  			<a href="houtai/newsmanager/pictureshow.jsp">返回</a>
  		</div>
  			<br><br><br><br>
  		
  
  			<div>
  				<h3>所属相册:<%=xiangce_name %></h3>
  			</div>
  			
 <% 
    	while(rs2.next())
    	{
%>			
    		<div height="150px" width="200px" float="left">
    		
    			<table>
    				<tr>
    					<td><a href="pictureshow.jsp" target="_top"><img src="<%=rs2.getString("picture_route") %>" height="150px" width="200px" /></a></td>
    
    				</tr>
    				<tr>
    					<td>所属相册：<%=rs2.getString("xiangce") %> &nbsp;上传时间：<%=rs2.getString("time_yearmonth") %></td>
    	
    				</tr>
    				<tr>
    					<td>
     				      <form method="post" action="houtai/newsmanager/pictureshow_picture_alter.jsp">
     				      <% 
  								if(log_rights == 1 || log_rights == 2)
  								{
  						  %>
    						更改相册：<select name="xiangce_name">
    								<option>===请选择===</option>
    							<% 
    								while(rs3.next())
    								{
    							%>
    							<option><%=rs3.getString("xiangce_name") %></option>
    							<% 
    								}
    							%>
    							<% 
    								rs3.beforeFirst();
    							%>
    							   </select>
    							   
    							<input type="hidden" name="number" value="<%=rs2.getString("number") %>" />
    							<input type="submit"  value="提交" />
    						<% 
    							}
    						%>	
    						</form>
    						</td>
    				</tr>
    				<tr>
    					<td>
    						<form method="post" action="houtai/newsmanager/pictureshow_picture_delete.jsp">
    							<input type="hidden" name="number" value="<%=rs2.getString("number") %>" />
    						 <% 
  								if(log_rights == 1 || log_rights == 2)
  								{
  						    %>
    							<input type="submit" value="删除" />
    						<% 
    							}
    						%>	
    						</form>
    					
    					</td>
    				</tr>
    			</table>
    			
    		</div>
    			
<% 
		}
%>
	
	<div>
			<table>
				<tr>
					<td>上传照片:</td>
					<td>
						<form name='upfileform' method='post' action='houtai/newsmanager/pictureshow_uploadpic.jsp' enctype='multipart/form-data'>
							<input type='file' id='mpic' name='mpic'  size='50' /><br>
							<input type='submit' name='submit' value='上传' />
						</form>
					</td>
				</tr>
			</table>
	</div>
	
	<div>
		    				
    						
	</div>
  </body>
</html>
