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
		 String submit = null;
		 String number = null;
		 if(request.getParameter("submit") != null)
		 {
		 	submit = request.getParameter("submit").toString();
  	     	submit = new String(submit.getBytes("iso-8859-1"),"utf-8");
  	     
  	     	number = request.getParameter("number").toString();
  	     	number = new String(number.getBytes("iso-8859-1"),"utf-8");
  	     }
  	     else
  	     {
  	     	 submit = "修改";
  	     	 number = session.getAttribute("number").toString();
  	     }
  	     
  	     
  	     
  	     
  	     
  	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql3 = "delete from guoxuenews_guowai where number = '" + number +"'";
   	    // String sql2 = "delete from system_users where username = '" + system_user_name +"'";
   	 //    String sql3= "update system_users set password = '"+system_user_password2+"' where username='"+system_user_name+"'"; 
   	 //    String sql5 = "update system_users set username = '"+system_user_name2+"' where username='"+system_user_name+"'";

  	     
  	     PreparedStatement statement3 = null;
  	     PreparedStatement statement4 = null;


  	     ResultSet rs2 = null;
  	     
  	     
  	     
  	     String sql_title = "select * from guoxuenews_guowai where number = '" + number +"'";
  	      
  	      PreparedStatement statement_title = null;
  	      ResultSet rs_title = null;
  	      
  	      String title = null;
  	      
  	      
  	      
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
		 
		       // statement = conn.prepareStatement(sql);
		        //rs = statement.executeQuery(sql);
		        
		        
		        statement_title = conn.prepareStatement(sql_title);
		 	     rs_title = statement_title.executeQuery(sql_title);
		 	    	 
		 	    while(rs_title.next())
		 	    {
		 	    	 title = rs_title.getString("title");
		 	    }
		        
		        if(submit.equals("删除"))
		        {

		 			 	statement3 = conn.prepareStatement(sql3);
		 	    	 	statement3.executeUpdate(sql3);
		 	    	 	
		 	    	 	log_caozuo = "在国学新闻版块删除国外新闻:" + title;
		 	    	 
		 	    	 
		 	    	    String log_sql2 = "insert into system_users_log(time_yearmonthday,time_hourminute,username,rights,caozuo,result) values('" +log_time_yearmonthday+ "','" +log_time_hourminute+ "','" +houtai_username+ "','" +log_rights_des+ "','" +log_caozuo+ "','成功')";
					    log_statement2 = conn.prepareStatement(log_sql2);		
					    log_statement2.executeUpdate(log_sql2);
		 	    	 
		 	    	 
		 	    	 	session.setAttribute("newsmanager_guoxuenews_message","delete_success");
		 			 	response.sendRedirect("guoxuenews.jsp");

		        }
		        else if(submit.equals("修改"))
		        {

		        		String sql4 = "select * from guoxuenews_guowai where number = '" + number +"'";
		            	statement4 = conn.prepareStatement(sql4);
		        		rs2 = statement4.executeQuery(sql4);
		        	
		        		session.setAttribute("number",number);
		        		
		        /*		while(rs2.next())
		        		{
		        			out.println("<div><table><tr><td>上传一张在左侧显示的新闻图片：</td><td><form name='upfileform' method='post' action='houtai/newsmanager/guoxuenews_uploadpic3.jsp' enctype='multipart/form-data'><input type='file' id='mpic' name='mpic'  size='50' /><br><input type='submit' name='submit' value='上传' /></form></td></tr></table></div>");
		        			out.println("<div><form name='xueyuan_news' method='post' action='houtai/newsmanager/guoxuenews_upload3.jsp'><table>");
		        			out.println("<tr><td>新闻标题:</td><td><input type='text' id='title' name='title' value='" +rs2.getString("title")+ "' /></td></tr>");
		        			out.println("<tr><td>作者:</td><td><input type='text' id='author' name='author' value='" +rs2.getString("author")+ "' /></td></tr>");
		        			out.println("<tr><td>图片:</td><td><input name='newsimage' value='" +rs2.getString("image")+ "' /></td></tr>");
		        			out.println("<tr><td>类别:</td><td><input name='leibie_exsit' value='国外' type='text' readonly='true' /></td></tr>");
		        			out.println("<tr><td>新闻内容:</td><td><input type='input' name='number' value='" +rs2.getString("number")+ "'  /></td></tr>");
		        			out.println("<tr><td></td><td><textarea name='content' style='width:800px;height:400px;visibility:hidden;'>" +rs2.getString("text")+ "</textarea></td></tr>");
		        			out.println("<tr><td></td><td><input type='submit' value='提交' /></td></tr>");
		        			out.println("</table></form></div>");
		        		
		        		
		        		}*/

		       	       	 
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
  
  		<div><a href="houtai/newsmanager/guoxuenews.jsp">返回</a></div>
  
  		<br><br><br><br>
  
		<div>
			<table>
				<tr>
					<td>上传一张在左侧显示的新闻图片：</td>
					<td>
						<form name="upfileform" method="post" action="houtai/newsmanager/guoxuenews_uploadpic3.jsp" enctype="multipart/form-data">
							<input type="file" id="mpic" name="mpic" size="50" /><br>
							<input type="submit" name="submit" value="上传" />
						</form>
					</td>
				</tr>
			</table>
		</div>
		
		<div>
			<form name="xueyuan_news" method="post" action="houtai/newsmanager/guoxuenews_upload3.jsp">
				<table>
					<% 
						while(rs2.next())
						{
					%>
					<tr>
						<td>新闻标题:</td>
						<td>
							<input type="text" id="title" name="title" value="<%=rs2.getString("title") %>" />
						</td>
					</tr>
					<tr>
						<td>作者:</td>
						<td>
							<input type="text" id="author" name="author" value="<%=rs2.getString("author") %>" />
						</td>
					</tr>
					<tr>
						<td>图片:</td>
						<td>
							<input name="newsimage" value="<%=rs2.getString("image") %>" />
						</td>
					</tr>
					<tr>
						<td>类别:</td>
						<td>
							<input name="leibie_exsit" value="国外" type="text" readonly="true" />
						</td>
					</tr>
					<tr>
						<td>新闻内容:</td>
						<td>
							<input type="text" name='number' value="<%=rs2.getString("number") %>" />
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<textarea name="content" style="width:800px;height:400px;visibility:hidden;"><%=rs2.getString("text") %></textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" value="提交" />
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
