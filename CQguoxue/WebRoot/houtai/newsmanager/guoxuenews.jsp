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
	String newsimage = null;
	
	if(session.getAttribute("guoxuenewsimage_route") != null)
	{
		newsimage = session.getAttribute("guoxuenewsimage_route").toString();
		newsimage = new String(newsimage.getBytes("iso-8859-1"),"utf-8");
	}
	
	session.setAttribute("guoxuenewsimage_route",null);
	
%>




<% 
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from guoxuenews_guonei order by id desc";
   	     String sql2 = "select * from guoxuenews_guowai order by id desc";
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
		        
	/*	        out.println("<div><h1>国学新闻</h1>");
		        out.println("<div><h2>国内</h2><table>");
		        out.println("<tr><td>时间</td><td>新闻标题</td><td>作者</td><td></td><td>操作</td></tr>");
		        
		        while(rs.next())
		        {
		        	out.println("<tr><form method='post' action='houtai/newsmanager/guoxuenews_alternews.jsp' ><td>" +rs.getString("time_yearmonthday")+" "+rs.getString("time_hourminute")+ "</td><td>" +rs.getString("title")+ "</td><td>" +rs.getString("author")+ "</td><td><input name='number' type='text' value='" +rs.getString("number")+ "' /><input name='leibie' value='国内' /></td><td><input type='submit' name='submit' value='删除' /><input type='submit' name='submit' value='修改' /></td></form></tr>");
		        }
		        out.println("</table></div><br><br><br>");
		        
		        
		        out.println("<div><h2>国外</h2><table>");
		        out.println("<tr><td>时间</td><td>新闻标题</td><td>作者</td><td></td><td>操作</td></tr>");
		        
		        while(rs2.next())
		        {
		        	out.println("<tr><form method='post' action='houtai/newsmanager/guoxuenews_alternews2.jsp' ><td>" +rs2.getString("time_yearmonthday")+" "+rs2.getString("time_hourminute")+ "</td><td>" +rs2.getString("title")+ "</td><td>" +rs2.getString("author")+ "</td><td><input name='number' type='text' value='" +rs2.getString("number")+ "' /><input name='leibie' value='国外' /></td><td><input type='submit' name='submit' value='删除' /><input type='submit' name='submit' value='修改' /></td></form></tr>");
		        }
		        out.println("</table></div><br><br><br>");
		        
		        
		        out.println("</div>");*/
		        
		        
		        
		        

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
  			<h1>国学新闻</h1>
  			<div>
  				<h2>国内</h2>
  				<table border=3>
  					<tr style="text-align:center;">
  						<td>时间</td>
  						<td>新闻标题</td>
  						<td>作者</td>
  						<td>操作</td>
  					</tr>
  					<% 
  						while(rs.next())
  						{
  							String time = rs.getString("time_yearmonthday") + " " +rs.getString("time_hourminute");
  					%>
  					<tr>
  						<form method="post" action="houtai/newsmanager/guoxuenews_alternews.jsp" >
  							<td><%=time %></td>
  							<td><a href="guoxuenews_guoneidetail.jsp?id=<%=rs.getString("number")%>" target="_top"><%=rs.getString("title") %></a></td>
  							<td><%=rs.getString("author") %></td>
  							<td>
  								<input name="number" type="hidden" value="<%=rs.getString("number") %>" />
  								<input name="leibie" value="国内" type="hidden" />
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
  				<h2>国外</h2>
  				<table border=3>
  					<tr style="text-align: center;">
  						<td>时间</td>
  						<td>新闻标题</td>
  						<td>作者</td>
  						<td>操作</td>
  					</tr>
  					<% 
  						while(rs2.next())
  						{
  							String time2 = rs2.getString("time_yearmonthday") + " " +rs2.getString("time_hourminute");
  					%>
  					<tr>
  						<form method="post" action="houtai/newsmanager/guoxuenews_alternews2.jsp" >
  						<td><%=time2 %></td>
  						<td><a href="guoxuenews_guowaidetail.jsp?id=<%=rs2.getString("number")%>" target="_top"><%=rs2.getString("title") %></a></td>
  						<td><%=rs2.getString("author") %></td>
  						<td>
  							<input name="number" type="hidden" value="<%=rs2.getString("number") %>" />
  							<input name="leibie" type="hidden" value="国外" />
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
  		</div>
  		
  		<br><br><br><br>
  
  
  		<div>
  			友情提示：发布新闻之前请先上传新闻栏左侧的图片！否则其他的修改都会白写！
  		</div>
  		<br><br>
  
  
  		<div>
  			
  		   <table>
  		       <tr>
  		          <td>国学新闻图片：</td>
  		          <td>
  		         	<form name='upfileform' method='post' action='houtai/newsmanager/guoxuenews_uploadpic.jsp' enctype='multipart/form-data'>
    					<input type='file' id='mpic' name='mpic'  size='50' /><br>
    					<input type='submit' name='submit' value='上传' />    			  
    	   			</form>
    	   		  </td>
    	   		</tr>
    	   </table>
  		</div>
  		
    	<div>    	
    		<form name="xueyuan_news" method="post" action="houtai/newsmanager/guoxuenews_upload.jsp">
    			<table>
    				<tr>
    					<td>新闻标题:</td>
    					<td><input id="title" name="title" type="text" style="width:300px;" /></td>
    				</tr>
    				<tr>
    					<td>作者:</td>
    					<td><input type="text" id="author" name="author" /></td>
    				</tr>
    				<tr>
    					<td>图片:</td>
    					<td>
    						<% 
    							if(newsimage == null)
    							{
    						%>
    						<input  name="newsimage" type="text" readonly style="width:300px;" />
    					
    						<% 
    							}
    							else 
    							{
    						%>
    						<input  name="newsimage" value=<%=newsimage %> type="text" readonly style="width:300px;" />
    						<% 
    							}
    						%>
    					
    					</td>
    				</tr>
    				<tr>
    					<td>新闻类别:</td>
    					<td>
    						<select name="leibie" id="leibie">
    							<option>===请选择===</option>
    							<option>国内</option>
    							<option>国外</option>
    						</select>
    					</td>
    				</tr>
    				<tr>
    					<td>新闻内容:</td>
    					<td></td>
    				</tr>
    				<tr>
    					<td></td>
    					<td><textarea name="content" style="width:800px;height:400px;visibility:hidden;"></textarea></td>
    				</tr>
    				<tr>
    					<td></td>
    					<td><input type="submit" value="发布新闻" /></td>
    				</tr>
    			</table>
    		</form>
    	</div>    	    	    	    	
  </body>
</html>
