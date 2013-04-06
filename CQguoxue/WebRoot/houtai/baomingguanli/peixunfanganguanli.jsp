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
   	     String sql1 = "select * from peixunfangan_gongwuyuan";
   	     String sql2 = "select * from peixunfangan_qishiyeguanli";
   	     String sql3 = "select * from peixunfangan_guoxueshizi";
   	     String sql4 = "select * from peixunfangan_aihaozhe";
   	     
   	     String sql5 = "select * from peixunfangan_gongwuyuan";
   	     String sql6 = "select * from peixunfangan_qishiyeguanli";
   	     String sql7 = "select * from peixunfangan_guoxueshizi";
   	     String sql8 = "select * from peixunfangan_aihaozhe";
  	     PreparedStatement statement1 = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     PreparedStatement statement4 = null;
  	     ResultSet rs1 = null;
  	     ResultSet rs2 = null;
  	     ResultSet rs3 = null;
  	     ResultSet rs4 = null;
  	     
  	     PreparedStatement statement5 = null;
  	     PreparedStatement statement6 = null;
  	     PreparedStatement statement7 = null;
  	     PreparedStatement statement8 = null;
  	     
  	     ResultSet rs5 = null;
  	     ResultSet rs6 = null;
  	     ResultSet rs7 = null;
  	     ResultSet rs8 = null;
  	     



  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement1 = conn.prepareStatement(sql1);
		        rs1 = statement1.executeQuery(sql1);
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);
		        
		        statement3 = conn.prepareStatement(sql3);
		        rs3 = statement3.executeQuery(sql3);
		        
		        statement4 = conn.prepareStatement(sql4);
		        rs4 = statement4.executeQuery(sql4);
		        
		        statement5 = conn.prepareStatement(sql5);
		        rs5 = statement5.executeQuery(sql5);
		        
		        statement6 = conn.prepareStatement(sql6);
		        rs6 = statement6.executeQuery(sql6);
		        
		        statement7 = conn.prepareStatement(sql7);
		        rs7 = statement7.executeQuery(sql7);
		        
		        statement8 = conn.prepareStatement(sql8);
		        rs8 = statement8.executeQuery(sql8);
		        
		      
  	    
  	     	
	
	
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>国学院后台</title>
    
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
  		<div id="total">
  			<h2>公务员培训课程</h2>
  			<table border=2>
  				<tr style="text-align:center;">
  					<td>课程</td>
  					<td>上课老师</td>
  					<td>开课时间</td>
  					<td>上课地点</td>
  					<td>课时</td>
  					<td>上课时间</td>
  				</tr>
  				<% 
  					while(rs1.next())
  					{
  				%>
  				<tr>
  					<td><%=rs1.getString("course_name") %></td>
  					<td><%=rs1.getString("course_teacher") %></td>
  					<td><%=rs1.getString("course_kaike_time") %></td>
  					<td><%=rs1.getString("course_place") %></td>
  					<td><%=rs1.getString("course_cishu") %></td>
  					<td><%=rs1.getString("course_shangke_time") %></td>
  				</tr>
  				<% 
  					}
  				%>
  			</table>
  			<br><br><br><br>
  			<h2>企事业管理培训课程</h2>
  			<table border=2>
  				<tr style="text-align:center;">
  					<td>课程</td>
  					<td>上课老师</td>
  					<td>开课时间</td>
  					<td>上课地点</td>
  					<td>课时</td>
  					<td>上课时间</td>
  				</tr>
  				<% 
  					while(rs2.next())
  					{
  				%>
  				<tr>
  					<td><%=rs2.getString("course_name") %></td>
  					<td><%=rs2.getString("course_teacher") %></td>
  					<td><%=rs2.getString("course_kaike_time") %></td>
  					<td><%=rs2.getString("course_place") %></td>
  					<td><%=rs2.getString("course_cishu") %></td>
  					<td><%=rs2.getString("course_shangke_time") %></td>
  				</tr>
  				<% 
  					}
  				%>
  			</table>
  			
  			<br><br><br><br>
  			
  			<h2>国学师资培训课程</h2>
  			<table border=2>
  				<tr style="text-align:center;">
  					<td>课程</td>
  					<td>上课老师</td>
  					<td>开课时间</td>
  					<td>上课地点</td>
  					<td>课时</td>
  					<td>上课时间</td>
  				</tr>
  				<% 
  					while(rs3.next())
  					{
  				%>
  				<tr>
  					<td><%=rs3.getString("course_name") %></td>
  					<td><%=rs3.getString("course_teacher") %></td>
  					<td><%=rs3.getString("course_kaike_time") %></td>
  					<td><%=rs3.getString("course_place") %></td>
  					<td><%=rs3.getString("course_cishu") %></td>
  					<td><%=rs3.getString("course_shangke_time") %></td>
  				</tr>
  				<% 
  					}
  				%>
  			</table>
  			<br><br><br><br>
  			
  			<h2>爱好者培训课程</h2>
  			<table border=2>
  				<tr style="text-align:center;">
  					<td>课程</td>
  					<td>上课老师</td>
  					<td>开课时间</td>
  					<td>上课地点</td>
  					<td>课时</td>
  					<td>上课时间</td>
  				</tr>
  				<% 
  					while(rs4.next())
  					{
  				%>
  				<tr>
  					<td><%=rs4.getString("course_name") %></td>
  					<td><%=rs4.getString("course_teacher") %></td>
  					<td><%=rs4.getString("course_kaike_time") %></td>
  					<td><%=rs4.getString("course_place") %></td>
  					<td><%=rs4.getString("course_cishu") %></td>
  					<td><%=rs4.getString("course_shangke_time") %></td>
  				</tr>
  				<% 
  					}
  				%>
  			</table> 			
  			
  		</div>
  		
  		<br><br><br><br><br><br><br><br>
  
  		<div id="gongwuyuan">
  		<h2>公务员培训课程管理</h2>
  			
  				<table>
  					<tr style="text-align:center;">
  						<td>课程</td>
  						<td>上课老师</td>
  						<td>开课时间</td>
  						<td>上课地点</td>
  						<td>课时</td>
  						<td>上课时间</td>
  						<td>操作</td>
  					</tr>
  					<% 
  						while(rs5.next())
  						{
  					%>
  					<tr>
  					<form method="post" action="houtai/baomingguanli/peixunfanganguanli_alter_gongwuyuan.jsp">
  						<td><input name="course_name" type="text" value="<%=rs5.getString("course_name") %>" /></td>
  						<td><input name="course_teacher" type="text" value="<%=rs5.getString("course_teacher") %>" /></td>
  						<td><input name="course_kaike_time" type="text" value="<%=rs5.getString("course_kaike_time") %>" /></td>
  						<td><input name="course_place" type="text" value="<%=rs5.getString("course_place") %>" /></td>
  						<td><input name="course_cishu" type="text" value="<%=rs5.getString("course_cishu") %>" /></td>
  						<td><input name="course_shangke_time" type="text" value="<%=rs5.getString("course_shangke_time") %>" /></td>
  						<td><input name="id" type="hidden" value="<%=rs5.getInt("id") %>" />
  							<input name="submit" type="submit" value="修改" />
  							<input name="submit" type="submit" value="删除" />
  						</td>
  					 </form>
  					</tr>
  					<% 
  						}
  					%>
  				</table>
  			
  			<br><br>
  			<form method="post" action="houtai/baomingguanli/peixunfanganguanli_add_gongwuyuan.jsp">
  				<table>
  					 <tr style="text-align:center;">
  						<td>课程</td>
  						<td>上课老师</td>
  						<td>开课时间</td>
  						<td>上课地点</td>
  						<td>课时</td>
  						<td>上课时间</td>
  						<td>操作</td>
  					</tr>
  					
  					<tr>
  						<td><input name="course_name" type="text"  /></td>
  						<td><input name="course_teacher" type="text" /></td>
  						<td><input name="course_kaike_time" type="text" /></td>
  						<td><input name="course_place" type="text"  /></td>
  						<td><input name="course_cishu" type="text"  /></td>
  						<td><input name="course_shangke_time" type="text"  /></td>
  						<td> <input name="submit" type="submit" value="添加" /></td>
  					</tr>
  				</table>
  			</form>
  		</div>
  		
  		<br><br><br><br>
  		
  		<div id="qishiyeguanli">
  		<h2>企事业管理培训课程管理</h2>
  		
  				<table>
  					<tr style="text-align:center;">
  						<td>课程</td>
  						<td>上课老师</td>
  						<td>开课时间</td>
  						<td>上课地点</td>
  						<td>课时</td>
  						<td>上课时间</td>
  						<td>操作</td>
  					</tr>
  					<% 
  						while(rs6.next())
  						{
  					%>
  					<tr>
  					<form method="post" action="houtai/baomingguanli/peixunfanganguanli_alter_qishiyeguanli.jsp">
  						<td><input name="course_name" type="text" value="<%=rs6.getString("course_name") %>" /></td>
  						<td><input name="course_teacher" type="text" value="<%=rs6.getString("course_teacher") %>" /></td>
  						<td><input name="course_kaike_time" type="text" value="<%=rs6.getString("course_kaike_time") %>" /></td>
  						<td><input name="course_place" type="text" value="<%=rs6.getString("course_place") %>" /></td>
  						<td><input name="course_cishu" type="text" value="<%=rs6.getString("course_cishu") %>" /></td>
  						<td><input name="course_shangke_time" type="text" value="<%=rs6.getString("course_shangke_time") %>" /></td>
  						<td><input name="id" type="hidden" value="<%=rs6.getInt("id") %>" />
  							<input name="submit" type="submit" value="修改" />
  							<input name="submit" type="submit" value="删除" />
  						</td>
  					</form>
  					</tr>
  					<% 
  						}
  					%>
  				</table>
  			
  			<br><br>
  			<form  method="post" action="houtai/baomingguanli/peixunfanganguanli_add_qishiyeguanli.jsp">
  				<table>
  					 <tr style="text-align:center;">
  						<td>课程</td>
  						<td>上课老师</td>
  						<td>开课时间</td>
  						<td>上课地点</td>
  						<td>课时</td>
  						<td>上课时间</td>
  						<td>操作</td>
  					</tr>
  					<tr>
  						<td><input name="course_name" type="text"  /></td>
  						<td><input name="course_teacher" type="text" /></td>
  						<td><input name="course_kaike_time" type="text" /></td>
  						<td><input name="course_place" type="text"  /></td>
  						<td><input name="course_cishu" type="text"  /></td>
  						<td><input name="course_shangke_time" type="text"  /></td>
  						<td> <input name="submit" type="submit" value="添加" /></td>
  					</tr>
  				</table>
  			</form>
  		</div>
  		
  		<br><br><br><br>
  		
  		<div id="guoxueshizi">
  		<h2>国学师资培训课程管理</h2>
  			
  				<table>
  					<tr style="text-align:center;">
  						<td>课程</td>
  						<td>上课老师</td>
  						<td>开课时间</td>
  						<td>上课地点</td>
  						<td>课时</td>
  						<td>上课时间</td>
  						<td>操作</td>
  					</tr>
  					<% 
  						while(rs7.next())
  						{
  					%>
  					<tr>
  					<form method="post" action="houtai/baomingguanli/peixunfanganguanli_alter_guoxueshizi.jsp">
  						<td><input name="course_name" type="text" value="<%=rs7.getString("course_name") %>" /></td>
  						<td><input name="course_teacher" type="text" value="<%=rs7.getString("course_teacher") %>" /></td>
  						<td><input name="course_kaike_time" type="text" value="<%=rs7.getString("course_kaike_time") %>" /></td>
  						<td><input name="course_place" type="text" value="<%=rs7.getString("course_place") %>" /></td>
  						<td><input name="course_cishu" type="text" value="<%=rs7.getString("course_cishu") %>" /></td>
  						<td><input name="course_shangke_time" type="text" value="<%=rs7.getString("course_shangke_time") %>" /></td>
  						<td><input name="id" type="hidden" value="<%=rs7.getInt("id") %>" />
  							<input name="submit" type="submit" value="修改" />
  							<input name="submit" type="submit" value="删除" />
  						</td>
  					</form>
  					</tr>
  					<% 
  						}
  					%>
  				</table>
  			<br><br>
  			<form method="post" action="houtai/baomingguanli/peixunfanganguanli_add_guoxueshizi.jsp">
  				<table>
  					 <tr style="text-align:center;">
  						<td>课程</td>
  						<td>上课老师</td>
  						<td>开课时间</td>
  						<td>上课地点</td>
  						<td>课时</td>
  						<td>上课时间</td>
  						<td>操作</td>
  					</tr>
  					<tr>
  						<td><input name="course_name" type="text"  /></td>
  						<td><input name="course_teacher" type="text" /></td>
  						<td><input name="course_kaike_time" type="text" /></td>
  						<td><input name="course_place" type="text"  /></td>
  						<td><input name="course_cishu" type="text"  /></td>
  						<td><input name="course_shangke_time" type="text"  /></td>
  						<td> <input name="submit" type="submit" value="添加" /></td>
  					</tr>
  				</table>
  			</form>
  		</div>
  		
  		<br><br><br><br>
  		
  		<div id="aihaozhe">
  		<h2>爱好者培训课程管理</h2>
  				<table>
  					<tr style="text-align:center;">
  						<td>课程</td>
  						<td>上课老师</td>
  						<td>开课时间</td>
  						<td>上课地点</td>
  						<td>课时</td>
  						<td>上课时间</td>
  						<td>操作</td>
  					</tr>
  					<% 
  						while(rs8.next())
  						{
  					%>
  					<tr>
  					<form method="post" action="houtai/baomingguanli/peixunfanganguanli_alter_aihaozhe.jsp">
  						<td><input name="course_name" type="text" value="<%=rs8.getString("course_name") %>" /></td>
  						<td><input name="course_teacher" type="text" value="<%=rs8.getString("course_teacher") %>" /></td>
  						<td><input name="course_kaike_time" type="text" value="<%=rs8.getString("course_kaike_time") %>" /></td>
  						<td><input name="course_place" type="text" value="<%=rs8.getString("course_place") %>" /></td>
  						<td><input name="course_cishu" type="text" value="<%=rs8.getString("course_cishu") %>" /></td>
  						<td><input name="course_shangke_time" type="text" value="<%=rs8.getString("course_shangke_time") %>" /></td>
  						<td><input name="id" type="hidden" value="<%=rs8.getInt("id") %>" />
  							<input name="submit" type="submit" value="修改" />
  							<input name="submit" type="submit" value="删除" />
  						</td>
  					</form>
  					</tr>
  					<% 
  						}
  					%>
  				</table>
  			<br><br>
  			<form method="post" action="houtai/baomingguanli/peixunfanganguanli_add_aihaozhe.jsp">
  				<table >
  					 <tr style="text-align:center;">
  						<td>课程</td>
  						<td>上课老师</td>
  						<td>开课时间</td>
  						<td>上课地点</td>
  						<td>课时</td>
  						<td>上课时间</td>
  						<td>操作</td>
  					</tr>
  					<tr>
  						<td><input name="course_name" type="text"  /></td>
  						<td><input name="course_teacher" type="text" /></td>
  						<td><input name="course_kaike_time" type="text" /></td>
  						<td><input name="course_place" type="text"  /></td>
  						<td><input name="course_cishu" type="text"  /></td>
  						<td><input name="course_shangke_time" type="text"  /></td>
  						<td> <input name="submit" type="submit" value="添加" /></td>
  					</tr>
  				</table>
  			</form>
  		</div>
  		
  		<% 
  			 }catch(Exception e)
  	     	 {
  	     		e.printStackTrace();
  	     	 }
  		%>
  		
  		
    
  </body>
</html>
