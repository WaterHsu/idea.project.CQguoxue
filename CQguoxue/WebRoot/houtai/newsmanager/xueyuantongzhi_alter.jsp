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
		 String number = request.getParameter("number").toString();
  	     number = new String(number.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String submit = request.getParameter("submit").toString();
  	     submit = new String(submit.getBytes("iso-8859-1"),"utf-8");
  	     

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "delete from xueyuan_tongzhi where number = '" + number +"'";
   	     String sql2 = "select * from xueyuan_tongzhi where number = '" + number + "'";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     ResultSet rs = null;
  	     
  	     String temp1 = null;
  	     String temp2 = null;
  	     String temp3 = null;
  	     
  	     
  	      String sql_title = "select * from xueyuan_tongzhi where number = '" + number +"'";
  	      
  	      PreparedStatement statement_title = null;
  	      ResultSet rs_title = null;
  	      
  	      String kinds = null;
  	      String time = null;
  	      
  	      
  	      
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
		 	    
		 	    	statement_title = conn.prepareStatement(sql_title);
		 	    	 rs_title = statement_title.executeQuery(sql_title);
		 	    	 
		 	    	 while(rs_title.next())
		 	    	 {
		 	    	 	kinds = rs_title.getString("kinds");
		 	    	 	time = rs_title.getString("time");
		 	    	 }
		 
		 		if(submit.equals("删除"))
		 		{
		        	statement = conn.prepareStatement(sql);
		 	    	statement.executeUpdate(sql);
		 	    	
		 	    	
		 	    	log_caozuo = "在通知版块修改在" +time+ "的时候发布的" + kinds;
		       	

		       		String log_sql2 = "insert into system_users_log(id,time_yearmonthday,time_hourminute,username,rights,caozuo,result) values(" +log_id+ ",'" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','" +log_rights_des+ "','" +log_caozuo+ "','成功')";
					log_statement2 = conn.prepareStatement(log_sql2);		
					log_statement2.executeUpdate(log_sql2);
		 	    	
		 	    	response.sendRedirect("xueyuantongzhi.jsp");
		 	    }
		 	    else if(submit.equals("修改"))
		 	    {
		 	        statement2 = conn.prepareStatement(sql2);
		 	    	rs = statement2.executeQuery(sql2);
		 	    	
		 	  /*  	out.println("<div><form method='post' action='houtai/newsmanager/xueyuantongzhi_alter2.jsp'><table>");
		 	    	while(rs.next())
		 	    	{
		 	    		if(rs.getString("kinds").equals("通知"))
		 	    		{
		 	    				temp1 = "通知";
		 	    				temp2 = "紧急通知";
		 	    				temp3 = "重要通知";	
		 	    		}
		 	    		else if(rs.getString("kinds").equals("紧急通知"))
		 	    		{
		 	    			    temp2 = "通知";
		 	    				temp1 = "紧急通知";
		 	    				temp3 = "重要通知";
		 	    		}
		 	    		else if(rs.getString("kinds").equals("重要通知"))
		 	    		{
		 	    				temp3 = "通知";
		 	    				temp2 = "紧急通知";
		 	    				temp1 = "重要通知";
		 	    		}
		 	    		out.println("<tr><td>通知类型:</td><td><select name='kinds'><option>" +temp1+ "</option><option>" +temp2+ "</option><option>" +temp3+ "</option></select></td></tr><tr><td>发布人:</td><td><input name='author' type='text' value='" +rs.getString("author")+ "' /></td></tr><tr><td>通知内容:</td><td><input type='hidden' name='number' value='" +rs.getString("number")+ "' /><textarea name='content' style='width:400px;height:300px;'>" +rs.getString("content")+ "</textarea></td></tr><tr><td></td><td><input type='submit' value='修改通知' /></td></tr>");
		 	    	}
		 	    }
		 	    out.println("</table></form></div>");*/
		 	 //  }
		        
	
		       	

				
  	     
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
  			<a href="houtai/newsmanager/xueyuantongzhi.jsp">返回</a>
  		</div>
  		<br><br><br><br>
  
  		<div>
  			<form method="post" action="houtai/newsmanager/xueyuantongzhi_alter2.jsp">
  				<table>
  				<% 
  					while(rs.next())
		 	    	{
		 	    		if(rs.getString("kinds").equals("通知"))
		 	    		{
		 	    				temp1 = "通知";
		 	    				temp2 = "紧急通知";
		 	    				temp3 = "重要通知";	
		 	    		}
		 	    		else if(rs.getString("kinds").equals("紧急通知"))
		 	    		{
		 	    			    temp2 = "通知";
		 	    				temp1 = "紧急通知";
		 	    				temp3 = "重要通知";
		 	    		}
		 	    		else if(rs.getString("kinds").equals("重要通知"))
		 	    		{
		 	    				temp3 = "通知";
		 	    				temp2 = "紧急通知";
		 	    				temp1 = "重要通知";
		 	    		}
  				%>
  						<tr>
  							<td>通知类型:</td>
  							<td>
  								<select name="kinds">
  									<option><%=temp1 %></option>
  									<option><%=temp2 %></option>
  									<option><%=temp3 %></option>
  								</select>
  							</td>
  						</tr>
  						<tr>
  							<td>发布人:</td>
  							<td>
  								<input name="author" type="text" value="<%=rs.getString("author") %>" />
  							</td>
  						</tr>
  						<tr>
  							<td>通知内容:</td>
  							<td>
  								<input type="hidden" name="number" value="<%=rs.getString("number") %> " />
  								<textarea name="content" style="width:400px;height:300px;"><%=rs.getString("content") %></textarea>
  							</td>
  						</tr>
  						<tr>
  							<td></td>
  							<td>
  								<input type="submit" value="修改通知" />
  							</td>
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
  			</form>
  		</div>
    
  </body>
</html>
