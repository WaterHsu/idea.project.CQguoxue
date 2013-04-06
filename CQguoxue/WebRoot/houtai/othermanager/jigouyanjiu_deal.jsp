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
	 
		 String stringid = request.getParameter("id").toString();  	 
		 stringid = new String(stringid.getBytes("iso-8859-1"),"utf-8");
		 
		 
		 int id = Integer.parseInt(stringid);


		 String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from xueyuanjigou_shezhi where id = " +id+ "";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;

  	     
  	     
  		 		 
		
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
	
		  
  	     
  	     
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
    		<a href="houtai/othermanager/jigouyanjiu.jsp">返回</a>
    	</div>
    
    	<br><br><br><br>
    	
    	<form method="post" action="houtai/othermanager/jigouyanjiu_alter.jsp">
    	
    			<table>
    				<% 
    					while(rs.next())
    					{
    				%>
    				<tr>
    					<td>行政机构/研究单位名称：</td>
    					<td><input name="name" type="text" style="width:250px;" value="<%=rs.getString("name") %>" /></td>
    				</tr>
    				<tr>
    					<td>介绍：</td>
    					<td></td>
    				</tr>
    				<tr>
    					<td></td>
    					<td><textarea name="content" style="width:800px;height:400px;visibility:hidden;"><%=rs.getString("jieshao") %></textarea></td>
    				</tr>
    				<tr>
    					<td><input type="hidden" name="id" value="<%=id %>" /></td>
    					<td><input type="submit" value="修改" /></td>
    				</tr>
    				<% 
    					}
    				%>
    			</table>
    		
    	</form>
 
 <% 
 	}catch(Exception e)
  	{
  	     e.printStackTrace();
  	}
 %>   
    
  </body>
</html>
