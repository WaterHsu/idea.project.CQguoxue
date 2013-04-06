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
 
   	     String sql = "select * from guoxuejiaoyu_xuelijiaoyu order by id desc";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;

			
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 		
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);

	

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
			<h2>学历教育文章</h2>
			<table border=3 >
				<tr style="text-align:center;">
					<td>发布时间</td>
					<td>文章名称</td>
					<td>作者</td>
					<td>操作</td>
				</tr>
				<% 
					while(rs.next())
					{
				%>
				<tr>
					<form method="post" action="houtai/guoxuejiaoyumanager/xuelijiaoyu_deal.jsp">
						<td><%=rs.getString("time_yearmonthday")%>&nbsp; <%=rs.getString("time_hourminute") %></td>
						<td><a href="xuelijiaoyudetail.jsp?id=<%=rs.getString("number")%>" target="_top"><%=rs.getString("title") %></a></td>
						<td><%=rs.getString("author") %></td>
						<td>
							<input type="hidden" name="number" value="<%=rs.getString("number") %>" />
						<% 
  							if(log_rights == 1 || log_rights == 2)
  							{
  						%>	
							<input type="submit" value="修改" name="submit" />
							<input type="submit" value="删除" name="submit" />
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
			<h2>发布文章</h2>
			<form  method="post" action="houtai/guoxuejiaoyumanager/xuelijiaoyu_add.jsp">
				<table>
					<tr>
						<td>文章标题:</td>
						<td><input type="text" name="title" style="width:300px;" /></td>
					</tr>
					<tr>
						<td>作者:</td>
						<td><input type="text" name="author" /></td>
					</tr>
					<tr>
						<td>提要:</td>
						<td><textarea name="tiyao" style="width:400px;height:200px;" ></textarea></td>
					</tr>
					<tr>
						<td>文章内容:</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><textarea name="content" style="width:800px;height:400px;visibility:hidden;"></textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit"  value="发布" /></td>
					</tr>
				</table>
			</form>
		</div>
  </body>
</html>
