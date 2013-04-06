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
   	     
   	     String sql2 = "select * from baomingbiao_table where state = 1";
   	     String sql3 = "select * from users_table where username = '" +username+ "'";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     
  	  
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	  	 ResultSet rs3 = null;
  	  	 
  	     int gongyihuodong = 0;
  	     int guoxuepeixun = 0;
  	     String user_number = null;
  	     int baoming = 0;
  	     int check = 0;
  	         	      	       	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);
		        
		        statement3 = conn.prepareStatement(sql3);
		        rs3 = statement3.executeQuery(sql3);
		        
		        while(rs3.next())
		        {
		        	user_number = rs3.getString("user_number");
		        }
		        
		       // out.println(user_number);
		        
		        String sql = "select * from user_information where user_number = '" +user_number+ "' ";
		        
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        while(rs2.next())
		        {
		        	if(rs2.getString("xingzhi").equals("公益活动"))
		        	{
		        		gongyihuodong = 1;
		        	}
		        	else if(rs2.getString("xingzhi").equals("国学培训"))
		        	{
		        		guoxuepeixun = 1;
		        	}
		        	String table_name = "baomingbiao_" + rs2.getString("number");
		        	String sqltemp = "select * from " +table_name+ " where people_number = '" +user_number+ "'";
		        	PreparedStatement statementtemp = null;
		        	ResultSet rstemp = null;
		        	
		        	statementtemp = conn.prepareStatement(sqltemp);
		       	    rstemp = statementtemp.executeQuery(sqltemp);
		       	    
		       	    if(rstemp.next())
		       	    {
		       	    	if(rstemp.getInt("shenhe_state") == 1 || rstemp.getInt("shenhe_state") == 0)
		       	    	{
		       	    		baoming = 1;
		       	    	}
		       	    	else 
		       	    	{
		       	    		check = 1;
		       	    	}
		       	    }
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

  </head>
  
  <body>
  	
  	<div>
  		温馨提示:这里的报名资料来自你的基本信息！请先填写你的基本信息！
  	</div>
  	<br><br><br><br>
  	
  	
  	
  	<% 
  		if(gongyihuodong == 1 || guoxuepeixun == 1)
  		{
  			
  		if(baoming == 0)
  		{
  			
  	%>
  	<% 
  			if(check == 1)
  			{
  	%>
  	<h2>你的报名表审核未通过！请重新报名！</h2>
  	<% 
  			}
  	%>
    <form method="post" action="users/user_baoming_add.jsp">
    	<% 
    		while(rs.next())
    		{
    	%>
    	<table>
    	
    		<tr>
    			<td><label>姓名:</label><input type="text" name="name" readonly="true" value="<%=rs.getString("user_real_name") %>" /></td>
    			<td><label>性别:</label><input type="text" name="xingbie" readonly="true" value="<%=rs.getString("sex") %>" /></td>
    		</tr>
    		<tr>
    			<td><label>民族:</label><input type="text" name="minzhu" readonly="true" value="<%=rs.getString("minzhu") %>" /></td>
    			<td><label>出生年月：</label><input type="text" name="born_year_month_day" readonly="true" value="<%=rs.getString("born_year_month_day") %>" /></td>
    		</tr>
    		<tr>
    			<td><label>电话号码:</label><input type="text" name="phone_number" readonly="true" value="<%=rs.getString("phone_number") %>" /></td>
    			<td><label>邮箱:</label><input type="text" name="e_mail" readonly="true" value="<%=rs.getString("e_mail") %>" /></td>
    		</tr>
    		<tr>
    			<td><label>单位:</label><input type="text" name="company" readonly="true" value="<%=rs.getString("company") %>" /></td>
    			<td><label>通讯地址:</label><input type="text" name="tongxundizhi" readonly="true" value="<%=rs.getString("tongxundizhi") %>" /></td>
    		</tr>
    		<tr>
    			<td><label>教育程度:</label><input type="text" name="jiaoyuchengdu" readonly="true" value="<%=rs.getString("jiaoyuchengdu") %>" /></td>
    			<td></td>
    		</tr>
    		<tr>
    			<td><label>毕业院校:</label><input type="text" name="biyeyuanxiao" readonly="true" value="<%=rs.getString("biyeyuanxiao") %>" /></td>
    			<td><label>毕业时间:</label><input type="text" name="biyeshijian" readonly="true" value="<%=rs.getString("biyeshijian") %>" /></td>
    		</tr>
    		<tr>
    			<td>
    				<label>性质:</label><select name="xingzhi">
    										<option>===请选择===</option>
    										<% 
    											if(guoxuepeixun == 1)
    											{
    										%>
    										<option>国学培训</option>
    										<% 
    											}
    											if(gongyihuodong == 1)
    											{
    										%>
    										<option>公益活动</option>
    										<% 
    											}
    										%>
    								  </select><span style="color:red;">*</span>
    			</td>
    			<td></td>
    		</tr>
    		<tr>
    			<td>
    			<label>培训方案:</label><select name="peixunfangan">
    				<option>===请选择===</option>
    				<option>公务员培训</option>
    				<option>企事业管理培训</option>
    				<option>国学师资培训</option>
    				<option>爱好者培训</option>
    			</select><span style="color:red;">*</span>
    			</td>
    			<td></td>
    		</tr>
    		<tr>
    			<td>
    				<label>付款方式:</label><select name="fukuangfangshi">
    										<option>===请选择===</option>
    										<option>现金</option>
    										<option>支付宝</option>
    										<option>网银</option>
    								     </select>
    			</td>
    			<td></td>
    		</tr>
    		
    		
    		<tr>
    			<td><input type="hidden" name="people_number" value="<%=user_number %>" /><input type="hidden" name="check" value="<%=check %>" /></td>
    			<td><input type="submit" value="提交" /></td>
    		</tr>
    		
    	</table>
    	<% 
    				}
    	%>
    </form>
    
    <% 
    		}
    		else if(baoming == 1)
    		{
    %>
    <div>你已经报名成功！</div>
    <% 
    		}
    	}
    	else
    	{
    			
    %>
    <div>现在不能报名！</div>
    <% 
    
    	}
    	}catch(Exception e)
  	    {
  	     	e.printStackTrace();
  	    }
    %>
  </body>
</html>
