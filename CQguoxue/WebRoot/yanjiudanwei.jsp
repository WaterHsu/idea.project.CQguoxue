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
		 String number = request.getParameter("id");
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from xueyuanjigou_shezhi where leibie = '研究单位'";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     String name = "in";
  	     String name2 = "in";
  	     int id = 0;
  	           	      	     
  	     
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
    
    <title>国学培训</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="cssofqiantai/css_menu/skins/menu.css" rel="stylesheet" type="text/css" />
<link href="cssofqiantai/jigoushezhi.css" rel="stylesheet" type="text/css" />


<link href="cssofqiantai/css_menu/bodymenu.css" rel="stylesheet" type="text/css" />







<script type="text/javascript" src='jsofqiantai/js_menu/jquery.min.js'></script>
<script type='text/javascript' src='jsofqiantai/js_menu/jquery.hoverIntent.minified.js'></script>
<script type='text/javascript' src='jsofqiantai/js_menu/jquery.dcmegamenu.1.3.2.js'></script>





<script type="text/javascript">
$(document).ready(function($){
	$('#mega-menu-2').dcMegaMenu({
		rowItems: '1',
		speed: 'fast',
		effect: 'fade',
		event: 'click'
	});
  });
</script>



<script>

		if(navigator.userAgent.indexOf("MSIE 6.0")>0)
		{
		
				setActiveStyleSheet("iemenu.css");	

		}
		else if(navigator.userAgent.indexOf("MSIE 7.0")>0)
		{
			setActiveStyleSheet("iemenu.css");
		}
		else if(navigator.userAgent.indexOf("MSIE 8.0")>0)
		{
			setActiveStyleSheet("iemenu.css");
		}
		else if(navigator.userAgent.indexOf("MSIE 9.0")>0)
		{
			setActiveStyleSheet("iemenu.css");
		}
		else if(navigator.userAgent.indexOf("MSIE 10.0")>0)
		{
			setActiveStyleSheet("menu.css");
		}
		else if(navigator.userAgent.indexOf("Firefox")>0)
		{
			setActiveStyleSheet("menu.css");
		}
		else if(navigator.userAgent.indexOf("Chrome")>0)
		{
			setActiveStyleSheet("menu.css");
		}
		
		function setActiveStyleSheet(filename)
		{
			var path = document.getElementsByTagName("link")[0].href;
			document.getElementsByTagName("link")[0].href ="cssofqiantai/css_menu/skins/" + filename;	
			
		}
	
</script>



<script>
	
	var record_div;

	function ff(div_now)
	{		
		switch(div_now)
		{
		case 1:
			document.getElementById("show_text1").style.display = "";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "none";
			
			break;
		case 2:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "none";
			break;
		case 3:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "none";
			break;
		case 4:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "none";
			break;
		case 5:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "none";
			break;
		case 6:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "none";
			break;
		case 7:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "none";
			break;
		case 8:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "none";
			break;
		case 9:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "";
			document.getElementById("show_text10").style.display = "none";
			break;
		case 10:
			document.getElementById("show_text1").style.display = "none";
			document.getElementById("show_text2").style.display = "none";
			document.getElementById("show_text3").style.display = "none";
			document.getElementById("show_text4").style.display = "none";
			document.getElementById("show_text5").style.display = "none";
			document.getElementById("show_text6").style.display = "none";
			document.getElementById("show_text7").style.display = "none";
			document.getElementById("show_text8").style.display = "none";
			document.getElementById("show_text9").style.display = "none";
			document.getElementById("show_text10").style.display = "";
			break;
		}
		
	}
	
</script>


</head>

<body>
		<div id="container" class="sub-container"> 
        		<div id="header">
                		<div id="banner" class="banner">
                			<EMBED src="flash/second_1.swf" width="900px" height="400px" type="application/x-shockwave-flash" wmode="transparent"/>
                		</div>
                        <div id="menu" class="menu">
								   <div class="black">  
										<ul id="mega-menu-2" class="mega-menu">
												<li><a href="chongqingguoxue.jsp">首页</a></li>
												<li><a href="#">重庆国学院</a>
													<ul>
														<li>
															<ul>
																<li><a href="jigoushezhi.jsp">机构设置</a></li>
																<li><a href="yanjiudanwei.jsp">研究单位</a></li>
															</ul>
														</li>
													</ul>
												</li>
												<li><a href="#">学院动态</a>
													<ul>
														<li>
															<ul>
																<li><a href="xueyuan_xinwen.jsp">学院新闻</a></li>
																<li><a href="xueyuan_tongzhi.jsp">学院通知</a></li>
															</ul>
														</li>
													</ul>
												</li>
   												<li><a href="#">国学新闻</a>
													<ul>
														<li>
															<ul>
																<li><a href="guoxuenews_guonei.jsp">国内国学新闻</a></li>
																<li><a href="guoxuenews_guowai.jsp">国外国学新闻</a></li>
															</ul>
														</li>
													</ul>
												</li>
												<li><a href="#">国学研究</a>
													<ul>
														<li>
															<ul>
																<li><a href="jingdianyanjiu.jsp">经典研究</a></li>
																<li><a href="zuixinyanjiu.jsp">最新研究</a></li>
                                                                <li><a href="haiwaiyanjiu.jsp">海外研究</a></li>
															</ul>
														</li>
													</ul>
												</li>
   												<li><a href="#">国学教育</a>
													<ul>
														<li>
															<ul>
																<li><a href="xuelijiaoyu.jsp">学历教育</a></li>
																<li><a href="fuxiuerzhuanjiaoyu.jsp">辅修二专教育</a></li>
                                                                <li><a href="wangluojiaoyu.jsp">网络教育</a></li>
															</ul>
														</li>
													</ul>
												</li>
   					 							<li><a href="#">国学培训</a>
													<ul>
														<li>
															<ul>
																<li><a href="gongwuyuanpeixun.jsp">公务员培训</a></li>
																<li><a href="qishiyeguanliganbupeixun.jsp">企事业管理干部培训</a></li>
                                                                <li><a href="guoxueshizipeixun.jsp">国学师资培训</a></li>
                                                                <li><a href="aihaozhepeixun.jsp">爱好者培训</a></li>
                                                                <li><a href="peixunjihua.jsp">培训计划</a></li>
                                                                <li><a href="peixunchengguo.jsp">培训成果</a></li>
															</ul>
														</li>
													</ul>
												</li>
   		 										<li><a href="#">国学推广</a>
													<ul>
														<li>
															<ul>
																<li><a href="xuexiaotuiguang.jsp">学校推广</a></li>
																<li><a href="shequtuiguang.jsp">社区推广</a></li>
                                                                <li><a href="nongcuntuiguang.jsp">农村推广</a></li>
															</ul>
														</li>
													</ul>
												</li>
    											<li><a href="#">国学观止</a>
													<ul>
														<li>
															<ul>
																<li><a href="guoxueguanzhi_mengxue.jsp">蒙学</a></li>
																<li><a href="guoxueguanzhi_xiaoxue.jsp">小学</a></li>
                   												<li><a href="guoxueguanzhi_jingshiziji.jsp">经史子集</a></li>
                    											<li><a href="guoxueguanzhi_guocuiguoyi.jsp">国粹国艺</a></li>
                    											<li><a href="guoxueguanzhi_guoxuegongju.jsp">国学工具</a></li>
                    											<li><a href="guoxueguanzhi_tuijianduwu.jsp">推荐读物</a></li>
                    											<li><a href="guoxueguanzhi_guoxuerenwu.jsp">国学人物</a></li>
															</ul>
														</li>
													</ul>
												</li>
												<li><a href="ziliaozhongxin.jsp">资料中心</a></li>
    											<li><a href="guoxueluntan.jsp">国学论坛</a></li>
											</ul>
										</div>
                        </div>
                </div>
                
                
                <div id="pagebody">
                		                                              
                		<div id="other_sidebar"> 
                    			<ul>
        							<li style="">研究单位</li>
            						<li>
            							<ul>
                							<li><a href="javascript:void(0);" onclick="ff(1)" class="button next">重庆文化研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(2)" class="button next">重庆非遗研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(3)" class="button next">历史地理研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(4)" class="button next">国学文献研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(5)" class="button next">宗教研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(6)" class="button next">古典诗词研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(7)" class="button next">中国古代社会思潮与文化研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(8)" class="button next">中国书法研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(9)" class="button next">吴宓研究所</a></li>
                    						<li><a href="javascript:void(0);" onclick="ff(10)" class="button next">中华经典诵读研究所</a></li>
                						</ul>
            						</li>
        						</ul>
                        </div>
                        
                        <div id="other_mainbody"> 
                        	<div id="show_text1" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text2" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text3" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text4" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text5" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text6" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text7" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text8" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text9" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        	
                        	<div id="show_text10" style="display:none;">                     	                       	
							<% 
								while(rs.next())
								{
							%>
								<p><%=rs.getString("jieshao") %></p>
							<% 
									break;
								}	
							%>                       	
                        	</div>
                        </div>  
 <% 
 	}catch(Exception e)
  	 {
  	     e.printStackTrace();
  	 }
 %>                       
                <div id="footer">
                	版权所有重庆国学院
                </div>
        </div>

</body>
</html>
