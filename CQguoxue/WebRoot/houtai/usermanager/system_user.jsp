<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>







<%
	String message = null;
	if(session.getAttribute("usermanager_message") == "user_exsit")
	{
		message = "用户名不能重复，必须唯一！";
		session.setAttribute("usermanager_message","");
	}
	else if(session.getAttribute("usermanager_message") == "update_success")
	{
		message = "更新成功！";
		session.setAttribute("usermanager_message","");
	}
	else if(session.getAttribute("usermanager_message") == "delete_success")
	{
		message = "删除成功！";
		session.setAttribute("usermanager_message","");
	}
	else if(session.getAttribute("usermanager_message") == "add_success")
	{
		message = "添加成功！";
		session.setAttribute("usermanager_message","");
	}
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
   	     String sql = "select * from system_users";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;

  	     

  	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);

		        
		        rs.next();

		        
		   //     out.println("<div id='system_users_table'><h2>管理员用户表</h2><table>");
		     //   out.println("<tr><td>管理员用户名</td><td>密码</td><td>权限</td><td>操作</td></tr>");
		        
	/*	        while(rs.next())
		        {
		        	int rights = rs.getInt("rights");
		        	String str_rights = null;
		        	
		        	if(rights == 2)
		        	{
		        		str_rights = "发布/修改/删除内容权限";
		        	}
		        	else
		        	{
		        		str_rights = "发布内容权限";
		        	}
		        	
		        	
		        	out.println("<tr><form action='houtai/usermanager/deletesysuser.jsp'><td><br> <input name='system_user_name' readonly='true'  value='" + rs.getString("username") +"' /> <br> <input name='system_user_name2' value='" + rs.getString("username") +"' /><br></td><td><br><input name='system_user_password' readonly='true'  value='" + rs.getString("password") +"' /><br><input name='system_user_password2'  value='" + rs.getString("password") +"' /><br></td><td><br><input name='system_user_right' type='text' readonly='true' value='" + str_rights + "' /> <br>  <select name='system_user_right2'><option> 发布/修改/删除内容权限 </option><option> 发布内容权限 </option></select><br></td><td><br><input type='submit' name='submit' value='删除' /><br><input type='submit' name='submit' value='修改' /><br></td></form></tr>");
		       
		    //   out.println("<tr><form action='houtai/usermanager/deletesysuser.jsp'><td><br> <input name='system_user_name' readonly='true'  value='" + rs.getString("username") +"' /> <br> <input name='system_user_name2' value='" + rs.getString("username") +"' /><br></td><td><br><input name='system_user_password' readonly='true'  value='" + rs.getString("password") +"' /><br><input name='system_user_password'  value='" + rs.getString("password") +"' /><br></td><td><br><input name='system_user_right' type='text' readonly='true' value='" + str_rights + "' /> <br>  <select name='system_user_right2'><option> 发布/修改/删除内容权限 </option><option> 发布内容权限 </option></select><br></td><td><input type='submit' name='submit' value='删除' /><input type='submit' name='submit' value='修改' /></td></form></tr>");
		       
		        }
		        
		        out.println("</table></div>");
		        out.println("<div id='operate'><input type='button' value='添加管理员' onclick='addsysuser()' /></div>");*/
		        		        		        		        

	
  	     }catch(Exception e)
  	     {
  	     	e.printStackTrace();
  	     }
  	     	
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'system_user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	<script>
		
		function addsysuser()
		{
			var add_div= document.getElementById('addsysuser');
			var temp = document.createElement('div');
			temp.innerHTML = "<table><tr><td>管理员用户名</td><td>密码</td><td>权限</td><td>操作</td></tr><tr><form action='houtai/usermanager/addsysuser.jsp'><td><input name='system_user_name' type='text' /></td><td><input name='system_user_password' type='text' /></td><td><select name='system_user_right'><option> 发布/修改/删除内容权限 </option><option> 发布内容权限 </option></select></td><td><input type='submit' value='添加' /></td></tr></form></table>";
			add_div.appendChild(temp);
			
		}
		
		function updatesysuser()
		{
			
		}
		
	</script>


  </head>
  <body>
  		<div id="system_users_table">
  			<h2>管理员用户表</h2>
  			<table border=3>
  				<tr style="text-align:center;">
  					<td>管理员用户名</td>
  					<td>密码</td>
  					<td>权限</td>
  					<td>操作</td>
  				</tr>
  				<% 
  					while(rs.next())
  					{
  						int rights = rs.getInt("rights");
		        		String str_rights = null;
		        	
		        		if(rights == 2)
		        		{
		        			str_rights = "发布/修改/删除内容权限";
		        		}
		        		else
		        		{
		        			str_rights = "发布内容权限";
		        		}
		        		
  				%>
  				
  				<tr>
  					<form action='houtai/usermanager/deletesysuser.jsp'>
  						<td>
  							<br> <input name="system_user_name" readonly="true"  value="<%=rs.getString("username") %>" /> 
  							<br><input name="system_user_name2" value="<%=rs.getString("username") %>" /><br>
  						</td>
  						<td>
  							<br><input name="system_user_password" readonly="true"  value="<%=rs.getString("password") %>" />
  							<br><input name="system_user_password2"  value="<%=rs.getString("password") %>" /><br>
  						</td>
  						<td>
  							<br><input name="system_user_right" type="text" readonly="true" value="<%=str_rights %>" /> 
  							<br><select name="system_user_right2"><option>===请选择===</option><option> 发布/修改/删除内容权限 </option><option> 发布内容权限 </option></select><br>
  						</td>
  						<td>
  							<br><input type="submit" name="submit" value="删除" />
  							<br><input type="submit" name="submit" value="修改" /><br>
  						</td>
  						</form>
  					</tr>
  				<% 
  					}
  				%>
  			</table>
  		</div>
  		<div>
  			<input type="button" value="添加系统用户" onclick="addsysuser()" />
  		</div>
  
  		<div id="addsysuser">
  			
  		</div>
  		<div id="updatesysuser"> 		
  		</div>
  		<br>
  		<div id="message">  			 
  			 提示消息：<br>
  			 <% 
  			 	if(message == null)
  			 	{
  			 %>
  			 <textarea readonly rows="20" cols="40"></textarea>
  			 <% 
  			 	}
  			 	else
  			 	{
  			 %>
  			 <textarea readonly  rows="20" cols="40"><%=message %></textarea>
  			 <% 
  			 		message = null;
  			 	}
  			 %>
  		</div>
  </body>
</html>
