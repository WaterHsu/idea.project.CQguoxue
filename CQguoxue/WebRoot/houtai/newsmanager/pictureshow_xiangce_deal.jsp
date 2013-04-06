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
		 String submit = request.getParameter("submit").toString();
  	     submit = new String(submit.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String xiangce_name = request.getParameter("xiangce_name").toString();
  	     xiangce_name = new String(xiangce_name.getBytes("iso-8859-1"),"utf-8");
  	 //    xiangce_name = new String(xiangce_name.getBytes("iso-8859-1"),"utf-8");




	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql1 = "select * from pictureshow_xiangce where xiangce_name = '" +xiangce_name+ "'";
   	     String sql2 = "delete from pictureshow_xiangce where xiangce_name = '" + xiangce_name +"'";
   	     String sql3 = "delete from pictureshow where xiangce = '" + xiangce_name +"'";
   	  //   String sql4 = "select * from pictureshow where xiangce = '" + xiangce_name+ "'";
   	  //   String sql5 = "select * from pictureshow_xiangce";
  	     PreparedStatement statement1 = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	  //   PreparedStatement statement4 = null;
  	  //   PreparedStatement statement5 = null;
  	     ResultSet rs1 = null;
  	     ResultSet rs2 = null;
  	  //   ResultSet rs3 = null;
			
		 int mark = 0;
		 int id = 0;
		 
		 
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
  	     
  	     
	//	 		else if(submit.equals("修改"))
	//	 		{
		        	
		 	    	 
		 	    /*	 while(rs1.next())
		 	    	 {
		 	    	 	 out.println("<div><form method='post' action='houtai/newsmanager/pictureshow_xiangce_alter.jsp'><table>");
		 	    	 	 out.println("<tr><td>相册创建人:</td><td><input type='text' name='author' value='" + rs1.getString("author")+ "' /></td></tr><tr><td>相册名字:</td><td><input type='text' name='xiangce_name' value='" + rs1.getString("xiangce_name")+ "' /><input type='hidden' name='xiangce_name2' value='" +rs1.getString("xiangce_name")+ "' /></td></tr><tr><td></td><td><input type='submit' value='提交修改' /></td></tr>");
		 	    	 	 out.println("</talbe></form></div>");
		 	    	 }*/
		// 		}
		 	//	else if(submit.equals("进入相册"))
		 		////{
		 	//		 statement4 = conn.prepareStatement(sql4);
		    //    	 rs2 = statement4.executeQuery(sql4);
		        	 
		    //    	 statement5 = conn.prepareStatement(sql5);
		    //    	 rs3 = statement5.executeQuery(sql5);
		        	 
		        	 
		        //	 session.setAttribute("xiangce_name",xiangce_name);
		        	 
		        	// out.println(xiangce_name);
		        	 
		        	// response.sendRedirect("pictureshow_picture.jsp");
		        	 
		   /*     	 out.println("所在相册：" + xiangce_name);
		        	 out.println("<div>");
		        	 while(rs2.next())
		        	 {
		        	 	out.println("<div height='150px' width='200px'><div>");
		        	 	out.println("<img src='" +rs2.getString("picture_route")+ "' height='100px' width='150px' />");
		        	 	out.println("</div><div>所属相册："+rs2.getString("xiangce")+"上传时间：" +rs2.getString("time_yearmonth")+ "</div>");
		        	 	out.println("<div><table><tr><form><td><select>");
		        	 		while(rs3.next())
		        	 		{
		        	 			out.println("<option>" +rs3.getString("xiangce_name")+ "</option");
		        	 		}
		        	 	out.println("</select></td><td><input type='submit' value='提交' /></td></form></tr><tr><form><td></td><td><input type='submit' value='删除' /></td></form></tr></table></div></div>");
		        	 }
		        	 
		        	 out.println("<div><talbe><tr><td>上传照片:</td>");
		        	 out.println("<td><form name='upfileform' method='post' action='houtai/newsmanager/pictureshow_uploadpic.jsp' enctype='multipart/form-data'><input type='file' id='mpic' name='mpic'  size='50' /><br><input type='submit' name='submit' value='上传' /></form></td></tr></table></div>");*/
		 		//}
		 		
		        
		        

  	    
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
  			<div><a href="houtai/newsmanager/pictureshow.jsp">返回</a></div>
  				<br><br><br><br>
  				<% 
  					try
  	     			{
  	     				Class.forName("com.mysql.jdbc.Driver");
		 	    		conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 	    
		 	    	   
		 		
		 			  if(submit.equals("删除"))
		 			  {
		 			 	statement2 = conn.prepareStatement(sql2);
		 	    	 	statement2.executeUpdate(sql2);
		 	    	 
		 	         	statement3 = conn.prepareStatement(sql3);
		 	    	 	statement3.executeUpdate(sql3);
		 	    	 	
		 	    	 	log_caozuo = "在图片版块删除相册:" + xiangce_name;
		       	

		       			String log_sql2 = "insert into system_users_log(id,time_yearmonthday,time_hourminute,username,rights,caozuo,result) values(" +log_id+ ",'" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','" +log_rights_des+ "','" +log_caozuo+ "','成功')";
						log_statement2 = conn.prepareStatement(log_sql2);		
						log_statement2.executeUpdate(log_sql2);
		 	    	 
		 	    	 	session.setAttribute("newsmanager_pictureshow_xiangce_message","delete_success");
		 			 	response.sendRedirect("pictureshow.jsp");
		 			 }					 			
  					else if(submit.equals("修改"))
  					{
  						statement1 = conn.prepareStatement(sql1);
		         	    rs1 = statement1.executeQuery(sql1);
		         %>
		         <form method="post" action="houtai/newsmanager/pictureshow_xiangce_alter.jsp">
  					<table> 
		         <%
  						while(rs1.next())
  						{
  				%>
  				<tr>
  					<td>相册创建人:</td>
  					<td>
  						<input type="text" name="author" value="<%=rs1.getString("author") %>" />
  					</td>
  				</tr>
  				<tr>
  				 	<td>相册名字:</td>
  				 	<td>
  				 		<input type="text" name="xiangce_name" value="<%=rs1.getString("xiangce_name") %>" />
  				 		<input type="hidden" name="xiangce_name2" value="<%=rs1.getString("xiangce_name") %>" />
  				 	</td>
  				 	</tr>
  				 	<tr>
  				 		<td></td>
  				 		<td>
  				 			<input type="submit" value="提交修改" />
  				 		</td>
  				 	</tr>
  				 	<% 
  				 		  }
  				 	    }
  				 	    else if(submit.equals("进入相册"))
		 				{
		 					session.setAttribute("xiangce_name",xiangce_name);		        			    		        	 
		        	 		response.sendRedirect("pictureshow_picture.jsp");
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
