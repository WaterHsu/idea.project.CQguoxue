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
   	     String sql = "select * from xueyuan_tongzhi order by id desc";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     String time = null;
  	     String author = null;
  	     String content = null;
  	     String kinds = null;
  	     String add_user = null;
  	     String number = null;
  	     String state = null;
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		    //    out.println("<div><h2>历史通知</h2><table>");
		   //     out.println("<tr><td>发布时间</td><td>通知类型</td><td>通知内容</td><td>发布人</td><td>发布账号</td><td>操作</td></tr>");
		        
		        		//out.println("<tr><form method='post' action='houtai/newsmanager/xueyuantongzhi_delete.jsp'><td>" +rs.getString("time")+ "</td><td>" +rs.getString("kinds")+ "</td><td>" +rs.getString("content").substring(0,14)+ "...</td><td>" +rs.getString("author")+ "</td><td>" +rs.getString("add_user")+ "</td><td><input name='number' type='hidden' value='" +rs.getString("number")+ "' /><input type='submit' value='删除' /></td></form></tr>");			        	
		        	//}
		  		
		  		
				//out.println("</talbe></div>");

		  	/*	while(rs.next())
		        { 		        		
		        	out.println("<tr><form method='post' action=''><td>" +rs.getString("time")+ "</td><td>" +rs.getString("kinds")+ "</td><td>" +rs.getString("content")+ "</td><td>" +rs.getString("author")+ "</td><td>" +rs.getString("add_user")+ "</td><td><input type='hidden' value='" +rs.getString("number")+ "' /><input type='submit' value='删除' /></td></form></tr>");			        	
		        }*/
		        
		      
		            



		        
		    //    out.println("<br><div><h2>通知</h2><table>");
		    //    out.println("<tr><td>发布时间</td><td>通知类型</td><td>通知内容</td><td>发布人</td><td>发布账号</td><td>操作</td></tr>");
		      //  out.println("<tr><form method='post' action='' ><td>" +time+ "</td><td>" +kinds+ "</td><td>" +content+ "</td><td>" +author+ "</td><td>" +add_user+ "</td><td><input type='submit' value='修改' /><input type='submit' value='删除' /></td></form></tr>");
		      //  out.println("</table></div>");				        		        		        		        

  	     
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
  				<h2>历史通知</h2>
  				<table border=3>
  						<tr style="text-align:center;">
  							<td>发布时间</td>
  							<td>通知类型</td>
  							<td>通知内容</td>
  							<td>发布人</td>
  							<td>发布账号</td>
  							<td>操作</td>
  						</tr>
  						<% 
  							while(rs.next())
		        			{
		        				if(rs.getString("state").equals("1"))
		        				{
		        					time = rs.getString("time");
		        					author = rs.getString("author");
		        					content = rs.getString("content");
		        					kinds = rs.getString("kinds");
		        					add_user = rs.getString("add_user");
		        					number = rs.getString("number");
		        					continue;
		        				}
		        				else
		        				{
  						%>
  						<tr>
  							<form method="post" action="houtai/newsmanager/xueyuantongzhi_delete.jsp" >
  								<td><%=rs.getString("time") %></td>
  								<td><%=rs.getString("kinds") %></td>
  								<td><a href="xueyuan_tongzhidetail.jsp?id=<%=rs.getString("number")%>" target="_top" ><%=rs.getString("content").substring(0,14) %>...</a></td>
  								<td><%=rs.getString("author") %></td>
  								<td><%=rs.getString("add_user") %></td>
  							<% 
  								if(log_rights == 1 || log_rights == 2)
  								{
  							%>
  								<td>
  									<input name="number" type="hidden" value="<%=rs.getString("number") %>" />
  									<input type="submit" value="删除" />
  								</td>
  							<% 
  								}
  							%>	
  							</form>
  						</tr>
  						<% 
  									}
  								}
  							}catch(Exception e)
  	     					{
  	     						e.printStackTrace();
  	     					}
  						%>
  						
  				</table>
  		</div>
  
  <br><br><br><br>
   		<div>
   			
   			<form method="post" action="houtai/newsmanager/xueyuantongzhi_alter.jsp">
   				<table border=3>
   					<tr style="text-align:center;">
   						<td>发布时间</td>
   						<td>通知类型</td>
   						<td>通知内容</td>
   						<td>发布人</td>
   						<td>发布账号</td>
   						<td>操作</td>
   					</tr>
   					<tr>
   						<td><%=time %></td>
   						<td><%=kinds %></td>
   						<td><a href="xueyuan_tongzhidetail.jsp?id=<%=number %>" target="_top"><%=content %></a></td>
   						<td><%=author %></td>
   						<td><%=add_user %></td>
   					<% 
  						if(log_rights == 1 || log_rights == 2)
  						{
  					%>
   						<td><input type="hidden" name="number" value="<%=number %>" /><input type="submit" name="submit" value="修改" /> <input type="submit" name="submit" value="删除" /></td>
   					<% 
   						}
   					%>
   					</tr>
   				</table>
   			</form>
   		</div>
   		<br>
   		<br><br><br>
   		<div>
   			<form method="post" action="houtai/newsmanager/xueyuantongzhi_add.jsp">
   				<table>
   					<tr>
   						<td>通知类型:</td>
   						<td>
   							<select name="kinds">
   								<option>
   									通知
   								</option>
   								<option>
   									紧急通知
   								</option>
   								<option>
   									重要通知
   								</option>
   							</select>
   						</td>
   					</tr>
   					<tr>
   						<td>发布人:</td>
   						<td><input type="text" name="author" id="author" /></td>
   					</tr>
   					<tr>
   						<td>通知内容:</td>
   						<td>
   							<textarea name="content" style="width:400px;height:300px;">
   							
   							</textarea>
   						</td>
   					</tr>
   					<tr>
   						<td></td>
   						<td><input type="submit" value="发布通知" /></td>
   					</tr>
   				</table>
   			</form>
   		</div>
  </body>
</html>
