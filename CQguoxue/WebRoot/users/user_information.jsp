<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<%@page import="java.beans.Statement"%>  
<%@page import="com.mysql.jdbc.Driver"%>  
<%@page import="java.sql.*"%>  
<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>


<% 
		 
		 String username = session.getAttribute("user_login_login").toString();
		 
				 				   	     
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from users_table where username = '" +username+ "'";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	     ResultSet rs3 = null;
  	     
  	     String number = null;
  	     
  	     int check = 0;
  	     
  	   
  	     
  	     
  	         	      	       	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        		        			 			
		        while(rs.next())
		        {
		        	number = rs.getString("user_number");
		        }	 		
		 			       		      
		 		String sql2 = "select * from user_information where user_number = '" +number+ "'";	  
		 		String sql3 = "select * from user_information where user_number = '" +number+ "'";    
		 		 		
		 		statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);    
		        
		        statement3 = conn.prepareStatement(sql3);
		        rs3 = statement3.executeQuery(sql3);     

  	     
  	     
%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_information.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>


  </head>
  
  <body>
  
  		<div>
  				<table>
  					<% 
  						while(rs2.next())
  						{
  							/*int sex = rs2.getInt("sex");
  							String xingbie = null;
  							if(sex == 1) xingbie = "男";
  							else if(sex == 2) xingbie = "女";*/
  							check = 1;
  					%>
  					<tr>
  						<td>真实姓名:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("user_real_name") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>性别:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("sex") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>出生年月日:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("born_year_month_day") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>籍贯:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("jiguan") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>民族:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("minzhu") %>" />
  						</td>
  					</tr>
  					
  					
  					<tr>
  					<td>现居住地:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("now_living_place") %>" style="width:400px;" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>通讯地址:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("tongxundizhi") %>" style="width:400px;" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>邮编:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("youbian") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>手机号码:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("phone_number") %>" />
  						</td>
  					</tr>
  					<tr>
  						<td>电子邮箱:</td>
  						<td>
  							<input type="text"  value="<%=rs2.getString("e_mail") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>教育程度:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("jiaoyuchengdu") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>毕业院校:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("biyeyuanxiao") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>毕业时间:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("biyeshijian") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>工作单位:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("company") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>工作职位:</td>
  						<td>
  							<input type="text" readonly="true" value="<%=rs2.getString("gongzuozhiwei") %>" />
  						</td>
  					</tr>
  					<% 
  						}
  					%>
  				</table>
  		</div>
  		
  		
  		
  		<br><br><br><br><br>
  		
  		
  		<div>
  			<form method="post" action="users/user_information_alter.jsp">
  			<table>
  					<% 
  						while(rs3.next())
  						{
  							/*int sex = rs3.getInt("sex");
  							String xingbie = null;
  							if(sex == 1) xingbie = "男";
  							else if(sex == 2) xingbie = "女";*/
  					%>
  					<tr>
  						<td>真实姓名:</td>
  						<td>
  							<input type="text"  value="<%=rs3.getString("user_real_name") %>" name="user_real_name" id="user_real_name" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>性别:</td>
  						<td>
  							<input type="text"  value="<%=rs3.getString("sex") %>" id="sex" name="sex" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>出生年月日:</td>
  						<td>
  							
  							<input class="Wdate" value="<%=rs3.getString("born_year_month_day") %>" name="born_year_month_day" id="born_year_month_day" type="text" onClick="WdatePicker()">
  						</td>
  					</tr>
  					
  					<tr>
  					<td>籍贯:</td>
  						<td>
  							<input type="text" name="jiguan" id="jiguan"  value="<%=rs3.getString("jiguan") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>民族:</td>
  						<td>
  							<input type="text" name="minzhu" id="minzhu" value="<%=rs3.getString("minzhu") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>现居住地:</td>
  						<td>
  							<input type="text" name="now_living_place" id="now_living_place" value="<%=rs3.getString("now_living_place") %>" style="width:400px;" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>通讯地址:</td>
  						<td>
  							<input type="text" name="tongxundizhi" id="tongxundizhi" value="<%=rs3.getString("tongxundizhi") %>" style="width:400px;" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td>邮编:</td>
  						<td>
  							<input type="text" name="youbian" id="youbian" value="<%=rs3.getString("youbian") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>手机号码:</td>
  						<td>
  							<input type="text" name="phone_number" id="phone_number"  value="<%=rs3.getString("phone_number") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>教育程度:</td>
  						<td>
  							<input type="text" name="jiaoyuchengdu" id="jiaoyuchengdu"  value="<%=rs3.getString("jiaoyuchengdu") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>毕业院校:</td>
  						<td>
  							<input type="text" name="biyeyuanxiao" id="biyeyuanxiao"  value="<%=rs3.getString("biyeyuanxiao") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>毕业时间:</td>
  						<td>
  							<input type="text" class="Wdate" name="biyeshijian" id="biyeshijian"  value="<%=rs3.getString("biyeshijian") %>"  onClick="WdatePicker()" />
  						</td>
  					</tr>
  				
  					
  					<tr>
  					<td>工作单位:</td>
  						<td>
  							<input type="text"  name="company" id="company" value="<%=rs3.getString("company") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  					<td>工作职位:</td>
  						<td>
  							<input type="text"  name="gongzuozhiwei" id="gongzuozhiwei" value="<%=rs3.getString("gongzuozhiwei") %>" />
  						</td>
  					</tr>
  					
  					<tr>
  						<td><input type="hidden" name="user_number" value="<%=rs3.getString("user_number") %>" /></td>
  						<td>
  							<input type="submit" value="修改" />
  						</td>
  					</tr>
  					<% 
  							}
  						}catch(Exception e)
  	     				{
  	     					e.printStackTrace();
  	     				}	
  					%>
  				</table>
  				</form>
  			
  		</div>
    
    <br><br><br><br><br>
    
    <div>
    <% 
    	if(check == 0)
    	{
    %>
    	<form method="post" action="users/user_information_add.jsp">
    		<table>
    			<tr>
    				<td>真实姓名:</td>
    				<td>
    					<input type="text" name="user_real_name" id="user_real_name" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>性别:</td>
    				<td>
    					<select id="sex" name="sex">
    						<option>===请选择===</option>
    						<option>男</option>
    						<option>女</option>
    					</select>
    				</td>
    			</tr>
    			<tr>
    				<td>出生日期:</td>
    				<td>
    					<input class="Wdate" name="born_year_month_day" id="born_year_month_day" type="text" onClick="WdatePicker()">
    				</td>
    			</tr>
    			<tr>
    				<td>籍贯:</td>
    				<td>
    					<input name="jiguan" type="text" id="jiguan" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>民族:</td>
    				<td>
    					<input name="minzhu" type="minzhu" id="jiguan" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>现居住地:</td>
    				<td>
    					<input name="now_living_place" id="now_living_place" type="text" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>通讯地址:</td>
    				<td>
    					<input name="tongxundizhi" type="tongxundizhi" id="jiguan" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>电话号码:</td>
    				<td>
    					<input name="phone_number" id="phone_number" type="text" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>邮编:</td>
    				<td>
    					<input name="youbian" id="youbian" type="text" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>教育程度:</td>
    				<td>
    					<select name="jiaoyuchengdu" id="jiaoyuchengdu">
    						<option>===请选择===</option>
    						<option>专科以下</option>
    						<option>大专</option>
    						<option>本科</option>
    						<option>硕士</option>
    						<option>硕士以上</option>
    					</select>
    				</td>
    			</tr>
    			
    			<tr>
    				<td>毕业院校:</td>
    				<td>
    					<input name="biyeyuanxiao" id="biyeyuanxiao" type="text" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>毕业时间:</td>
    				<td>
    					<input name="biyeshijian" id="biyeshijian" type="text" class="Wdate" onClick="WdatePicker()" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>工作单位:</td>
    				<td>
    					<input name="company" id="company" type="text" />
    				</td>
    			</tr>
    			
    			<tr>
    				<td>工作职位:</td>
    				<td>
    					<input name="gongzuozhiwei" id="gongzuozhiwei" type="text" />
    				</td>
    			</tr>
    			<tr>
    				<td><input name="user_number" type="hidden" value="<%=number %>" /></td>
    				<td><input type="submit" value="提交" /></td>
    			</tr>
    		</table>
    	</form>
    	<% 
    		}
    	%>
    </div>
    
    
  </body>
</html>
