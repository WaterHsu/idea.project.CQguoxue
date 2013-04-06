<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<% 
 
	
%>



<%@page import="java.beans.Statement"%>  
<%@page import="com.mysql.jdbc.Driver"%>  
<%@page import="java.sql.*"%>  
<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>


<% 
		String username = null;

	if(session.getAttribute("user_login_login_sure") != "have_login")
	{
		response.sendRedirect("/CQguoxue2/user_login.jsp");
	}

	else
	{
		username = session.getAttribute("user_login_login").toString();
		// username = new String(username.getBytes("iso-8859-1"),"utf-8");
	}	
		
		 
  	     
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from users_table";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     int mark = 0;
  	     
  	     
  	         	      	       	     
  	     try
  	     {
  	     	/*	Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);*/
		        
		  //      out.println(username);
		        	
		 
		            
		        

  	     }catch(Exception e)
  	     {
  	     	e.printStackTrace();
  	     }
%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>重庆国学院用户注册系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="cssofhoutai/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="jsofhoutai/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="jsofhoutai/themes/icon.css" />
    <script type="text/javascript" src="jsofhoutai/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="jsofhoutai/jquery.easyui.js"></script>
    

	<script type="text/javascript" src='jsofhoutai/outlook2.js'> </script>
	
	

    <script type="text/javascript">
	 var _menus = {"menus":[
						{"menuid":"1","icon":"icon-sys","menuname":"账号资料管理",
							"menus":[{"menuname":"登录账号管理","icon":"icon-sysusers","url":"users/user_login.jsp"},
									{"menuname":"信息资料管理","icon":"icon-ordusers","url":"users/user_information.jsp"},																											
									{"menuname":"用户课表管理","icon":"icon-log","url":"users/user_kebiao.jsp"},
									{"menuname":"课程报名","icon":"icon-log","url":"users/user_baoming.jsp"}
								]
						}
						
				]};
     

    </script>

</head>
<body class="easyui-layout" style="overflow-y: hidden"  scroll="no">
<noscript>
<div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
    <img src="images/noscript.gif" alt='抱歉，请开启脚本支持！' />
</div></noscript>
    <div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background: url(images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float:right; padding-right:20px;" class="head">欢迎 <%=username %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" id="loginOut">安全退出</a></span>
        <span style="padding-left:10px; font-size: 16px; "> </span>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
        <div class="footer"></div>
    </div>
    <div region="west" split="true" title="导航菜单" style="width:180px;" id="west">
<div class="easyui-accordion" fit="true" border="false">
		<!--  导航内容 -->
				
			</div>

    </div>
    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
			<div title="欢迎使用" style="padding:20px;overflow:hidden;" id="home">
				
			<h1>欢迎来到重庆国学院用户报名系统！</h1>

			</div>
		</div>
    </div>
    
    
   

	<div id="mm" class="easyui-menu" style="width:150px;">
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseall">全部关闭</div>
		<div id="mm-tabcloseother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-exit">退出</div>
	</div>


</body>
</html>