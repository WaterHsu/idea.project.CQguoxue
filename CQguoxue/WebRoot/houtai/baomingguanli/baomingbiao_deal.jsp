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
		String submit = null;
		String number = null;
		String database_table_name = null;
		
		
		if(request.getParameter("submit") != null)
		{		 
		 submit = request.getParameter("submit").toString();
		 submit = new String(submit.getBytes("iso-8859-1"),"utf-8");
		 
		 number = request.getParameter("number").toString();
		 number = new String(number.getBytes("iso-8859-1"),"utf-8");
		 
		 String table_name = request.getParameter("table_name").toString();
		 table_name = new String(table_name.getBytes("iso-8859-1"),"utf-8");
		 
		 database_table_name = "baomingbiao_";
		 
		 database_table_name += number;
		 }
		 else
		 {
		 	submit = "查看报名情况";
		 	database_table_name = session.getAttribute("houtai_baomingbiao_temp_baomingbiao").toString();
		 	number = session.getAttribute("houtai_baomingbiao_temp_number").toString();
		 }
		
		 
		 String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "update baomingbiao_table set state = 0 where number='"+number+"'";
   	     String sql2 = "select * from " +database_table_name+ "";
   	     String sql3 = "select * from baomingbiao_table where number='" +number+ "'";
   	   //  String sql3 = "create table " +name+ "(id int(16) auto_increment,people_number varchar(64),name varchar(64),company varchar(128),xingzhi varchar(64),peixunfangan varchar(64),phone_number varchar(64),e_mail varchar(128),jiaoyuchengdu varchar(64),biyeyuanxiao varchar(128),biyeshijian varchar(64),tongxundizhi varchar(256),fukuangfangshi varchar(128), primary key(id))";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	     
  	     
  	     
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
		 
		      //  statement = conn.prepareStatement(sql);
		       // statement.executeUpdate(sql);
		        
		       if(submit.equals("失效报名表"))
		        {
		        	statement = conn.prepareStatement(sql);
		        	statement.executeUpdate(sql);
		        	
		        	
		        	log_caozuo = "失效了报名表,报名表编号:" +number;
		       	

		       	String log_sql2 = "insert into system_users_log(id,time_yearmonthday,time_hourminute,username,rights,caozuo,result) values(" +log_id+ ",'" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','" +log_rights_des+ "','" +log_caozuo+ "','成功')";
				log_statement2 = conn.prepareStatement(log_sql2);		
				log_statement2.executeUpdate(log_sql2);
		        	
		        	response.sendRedirect("baomingbiao.jsp");
		        }
		        else if(submit.equals("查看报名情况"))
		        {
		        	statement2 = conn.prepareStatement(sql2);
		        	rs = statement2.executeQuery(sql2);
		        	
		        	statement3 = conn.prepareStatement(sql3);
		        	rs2 = statement3.executeQuery(sql3);
		        	
		        	session.setAttribute("houtai_baomingbiao_temp_number", number);
		        	
		        	session.setAttribute("houtai_baomingbiao_temp_baomingbiao", database_table_name);
		        
		        
		       
		        
		      
  	     
  	     
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
  					while(rs2.next())
  					{
  						if(rs2.getInt("state") == 0)
  						{
  				%>
  				<h3>报名表:<%=rs2.getString("table_name") %>(报名表已失效)</h3>
  				<% 
  						}
  						else if(rs2.getInt("state") == 1)
  						{
  				%>
  				<h3>报名表:<%=rs2.getString("table_name") %>(报名表有效)</h3>
  				<% 
  						}
  					 }	
  				%>
  		</div>
  		
  		<br><br><br><br>
  		
  		<div>
  			<table border=2 style="text-align:center; overflow:scroll;">
  				<tr style="text-align:center;">
  					<td>姓名</td>
  					<td>性别</td>
  					<td>出生年月</td>
  					<td>单位</td>
  					<td>性质</td>
  					<td>培训方案</td>
  					<td>电话号码</td>
  					<td>邮箱</td>
  					<td>教育程度</td>
  					<td>毕业院校</td>
  					<td>毕业时间</td>
  					<td>通讯地址</td>
  					<td>民族</td>
  					<td>付款方式</td>
  					<td>报名时间</td> 	
  					<td>审核状态</td>				
  					<td>审核</td>	
  				</tr>
  				<% 
  						while(rs.next())
  						{
  							String time = rs.getString("time_yearmonthday") + " " + rs.getString("time_hourminute");
  				%>
  				<form method="post" action="houtai/baomingguanli/baomingbiao_deal_state.jsp">
  				<tr>
  					<td><%=rs.getString("name") %></td>
  					<td><%=rs.getString("xingbie") %></td>
  					<td><%=rs.getString("born_year_month_day") %></td>
  					<td><%=rs.getString("company") %></td>
  					<td><%=rs.getString("xingzhi") %></td>
  					<td><%=rs.getString("peixunfangan") %></td>
  					<td><%=rs.getString("phone_number") %></td>
  					<td><%=rs.getString("e_mail") %></td>
  					<td><%=rs.getString("jiaoyuchengdu") %></td>
  					<td><%=rs.getString("biyeyuanxiao") %></td>
  					<td><%=rs.getString("biyeshijian") %></td>
  					<td><%=rs.getString("tongxundizhi") %></td>
  					<td><%=rs.getString("minzhu") %></td>
  					<td><%=rs.getString("fukuangfangshi") %></td>
  					<td><%=time %></td>
  					<% 
  							  if(rs.getInt("shenhe_state") == 0)
  							  {
  					%>
  					<td>还未审核</td>
  					<% 
  							   }
  							   else if(rs.getInt("shenhe_state") == 1)
  							   {
  					%>
  					<td>审核通过</td>
  					<% 
  							   }
  							   else if(rs.getInt("shenhe_state") == 2)
  							   {
  					%>
  					<td>审核未通过</td>
  					<% 
  								}
  					%>
  					<td>
  						<input type="hidden" name="people_number" value="<%=rs.getString("people_number") %>" />
  						<input type="hidden" name="table_name" value="<%=database_table_name %>" />
  					<% 
  							  if(rs.getInt("shenhe_state") == 0)
  							  {
  					%>
  						<input type="submit" name="submit" value="审核通过" />
  						<input type="submit" name="submit" value="审核未通过" />
  					<% 
  							  }
  							  else if(rs.getInt("shenhe_state") == 1)
  							  {
  					%>	
  						<input type="submit" name="submit" value="审核通过" disabled="disabled"  />
  						<input type="submit" name="submit" value="审核未通过" />
  					<% 
  							  }
  							  else if(rs.getInt("shenhe_state") == 2)
  							  {
  					%>	
  						<input type="submit" name="submit" value="审核通过"  />
  						<input type="submit" name="submit" value="审核未通过" disabled="disabled" />
  					<% 
  							  }
  					%>
  					</td>
  				</tr>
  				</form>
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
  	
  </body>
</html>
