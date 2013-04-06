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
   	     String sql = "select * from xueyuanjigou_shezhi where leibie = '行政机构'";
   	     String sql2 = "select * from xueyuanjigou_shezhi where leibie = '研究单位'";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;

  	     

  	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);

		                		        		        

	
  	    
  	     	
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
	
	
	<script type="text/javascript" charset="utf-8" src="kindeditor/kindeditor.js"></script>
    <script type="text/javascript" charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
	
	
	<script>

			var editor;

			KindEditor.ready(function(K) {

				editor = K.create('textarea[name="content"]', {

					resizeType : 1,
					cssPath : 'kindeditor/plugins/code/prettify.css',

					uploadJson : 'kindeditor/jsp/upload_json.jsp',
					fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp',

					items : [

						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',

						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',

						'insertunorderedlist', '|', 'emoticons', 'image', 'link'],

				  allowFileManager : true,
  
    			  afterCreate : function() {
     					 this.sync();
     					 editor.sync();    
    			  }
    
      			});
    			
      			
      			
  			});



		</script>

  </head>
  <body>
  		<div>
  			<h2>行政机构列表</h2>
  			
  				<table border=2>
  					<tr style="text-align:center;">
  						<td>名字</td>
  						<td>类别</td>
  						<td>添加的时间</td>
  						<td>添加的用户</td>
  						<td>操作</td>
  					</tr>
  					<% 
  						while(rs.next())
  						{
  							String time = rs.getString("time_yearmonth")+" "+rs.getString("time_hourminutes");
  					%>
  					<form method="post" action="houtai/othermanager/jigouyanjiu_deal.jsp">
  					<tr>
  						<td><input name="name" id="id" type="text" value="<%=rs.getString("name") %>" readonly /></td>
  						<td><input name="leibie" id="leibie" type="text" value="<%=rs.getString("leibie") %>" readonly /></td>
  						<td><input name="time" id="time" type="text" value="<%=time %>" readonly /></td>
  						<td><input name="user" id="user" type="text" value="<%=rs.getString("houtai_user") %>" readonly /></td>
  						<td><input name="id" type="hidden" value="<%=rs.getInt("id") %>" /><input type="submit" value="修改" /></td>
  					</tr>
  					</form>
  					<% 
  						}
  					%>
  				</table>
  		</div>
  		
  			<br><br><br><br>
  		
  		<div>
  			<h2>研究单位列表</h2>
  			
  				<table border=2>
  					<tr style="text-align:center;">
  						<td>名字</td>
  						<td>类别</td>
  						<td>添加的时间</td>
  						<td>添加的用户</td>
  						<td>操作</td>
  					</tr>
  					<% 
  						while(rs2.next())
  						{
  							String time = rs2.getString("time_yearmonth")+" "+rs2.getString("time_hourminutes");
  					%>
  					<form method="post" action="houtai/othermanager/jigouyanjiu_deal.jsp">
  					<tr>
  						
  						<td><input name="name" id="id" type="text" value="<%=rs2.getString("name") %>" readonly /></td>
  						<td><input name="leibie" id="leibie" type="text" value="<%=rs2.getString("leibie") %>" readonly /></td>
  						<td><input name="time" id="time" type="text" value="<%=time %>" readonly /></td>
  						<td><input name="user" id="user" type="text" value="<%=rs2.getString("houtai_user") %>" readonly /></td>
  						<td><input name="id" type="hidden" value="<%=rs2.getInt("id") %>" /><input type="submit" value="修改" /></td>
  						
  					</tr>
  					</form>
  					<% 
  						}
  					%>
  				</table>
  		
  		</div>
  <% 
  	 	}catch(Exception e)
  	    {
  	     	e.printStackTrace();
  	     }
  %>		
  		<br><br><br><br>
  		<div>
  			<form method="post" action="houtai/othermanager/jigouyanjiu_add.jsp">
  				<table>
  					<tr>
  						<td>行政机构/研究单位名称：</td>
  						<td><input name="name" type="text" style="width:250px;" /></td>
  					</tr>
  					<tr>
  						<td>类别：</td>
  						<td>
  							<select name="leibie">
  									<option>==请选择===</option>
  									<option>行政机构</option>
  									<option>研究单位</option>
  							</select>
  						</td>
  					</tr>
  					<tr>
  						<td>介绍：</td>
  						<td></td>
  					</tr>
  					<tr>
  						<td></td>
  						<td>
  							<textarea name="content" style="width:800px;height:400px;visibility:hidden;"></textarea>
  						</td>
  					</tr>
  					<tr>
  						<td></td>
  						<td>
  							<input type="submit" value="提交" />
  						</td>
  					</tr>
  				</table>

  			</form>
  		</div>
  
  </body>
</html>
