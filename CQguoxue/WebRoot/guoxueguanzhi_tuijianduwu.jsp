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
   	     String sql = "select * from guoxueguanzhi_tuijianduwu order by id desc";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     
  	     String sql2 = "select * from guoxueguanzhi_tuijianduwu";
  	     PreparedStatement statement2 = null;
  	     ResultSet rs2 = null;
  	     
  	     
  	     int record_total = 0; //记录总数
  	     int intPageSize = 0; //一页显示的记录数
  	     int intPageCount = 0; //总页数
  	     int intPage = 0; //待显示页码
  	     String strPage = null;
  	     int i = 0;
  	     
  	     intPageSize = 10;
  	     strPage = request.getParameter("page");
  	     if(strPage == null)
  	     {
  	     	intPage = 1;
  	     }
  	     else
  	     {	     
  	     	intPage = Integer.parseInt(strPage);
  	     	if(intPage < 1) 
  	     	{
  	     		intPage = 1;
  	     	}
  	     }
  	     
  	     
  	     
  	     String title1 = null;
  	     String title2 = null;
  	     String title3 = null;
  	     String title4 = null;
  	     String title5 = null;
  	     
  	     String number1 = null;
  	     String number2 = null;
  	     String number3 = null;
  	     String number4 = null;
  	     String number5 = null;
  	     
  	     int visits1 = 0;
  	     int visits2 = 0;
  	     int visits3 = 0;
  	     int visits4 = 0;
  	     int visits5 = 0;
  	       	      	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        	
		        rs.last();
		        record_total = rs.getRow();
		        
		        intPageCount = (record_total + intPageSize - 1) / intPageSize;
		        
		        
		         statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);
		        
		        while(rs2.next())
		        {
		        	if(rs2.getInt("visits") > visits1)
		        	{
		        		visits5 = visits4;
		        		visits4 = visits3;
		        		visits3 = visits2;
		        		visits2 = visits1;
		        		visits1 = rs2.getInt("visits");
		        		
		        		number5 = number4;
		        		number4 = number3;
		        		number3 = number2;
		        		number2 = number1;
		        		number1 = rs2.getString("number");
		        		
		        		
		        		title5 = title4;
		        		title4 = title3;
		        		title3 = title2;
		        		title2 = title1;
		        		title1 = rs2.getString("title");
		        	}
		        	else if(rs2.getInt("visits") > visits2)
		        	{
		        		visits5 = visits4;
		        		visits4 = visits3;
		        		visits3 = visits2;
		        		visits2 = rs2.getInt("visits");
		        		
		        		number5 = number4;
		        		number4 = number3;
		        		number3 = number2;
		        		number2 = rs2.getString("number");
		        		
		        		title5 = title4;
		        		title4 = title3;
		        		title3 = title2;
		        		title2 = rs2.getString("title");
		        	}
		        	else if(rs2.getInt("visits") > visits3)
		        	{
		        		visits5 = visits4;
		        		visits4 = visits3;
		        		visits3 = rs2.getInt("visits");
		        		
		        		number5 = number4;
		        		number4 = number3;
		        		number3 = rs2.getString("number");
		        		
		        		title5 = title4;
		        		title4 = title3;
		        		title3 = rs2.getString("title");
		        	}
		        	else if(rs2.getInt("visits") > visits4)
		        	{
		        		visits5 = visits4;
		        		visits4 = rs2.getInt("visits");
		        		
		        		number5 = number4;
		        		number4 = rs2.getString("number");
		        		
		        		title5 = title4;
		        		title4 = rs2.getString("title");
		        	}
		        	else if(rs2.getInt("visits") > visits5)
		        	{
		        		visits5 = rs2.getInt("visits");
		        		
		        		number5 = rs2.getString("number");
		        		
		        		title5 = rs2.getString("title");
		        	}
		        } 
		            
		        

  	     }catch(Exception e)
  	     {
  	     	e.printStackTrace();
  	     }
%>





<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>国学观止</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="cssofqiantai/css_menu/skins/menu.css" rel="stylesheet" type="text/css" />
<link href="cssofqiantai/guoxue_part.css" rel="stylesheet" type="text/css" />


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
                		<div id="mainbody"> 
                        	<div>当前位置: <a href="chongqingguoxue.jsp">首页</a> > 推荐读物</div>
                            <div id="table_list">
                            		<h2>推荐读物文章列表</h2>
                            		<table style="text-align:center; line-height:30px; align:center;margin:0px auto;">
                            			<tr style="height:50px;">
                            				<td style="width:60%;"><h3>新闻标题</h3></td>                       
                            				<td><h3>新闻发布时间</h3></td>
                            			</tr>
                            			<%
                            				if(intPageCount > 0)
                            				{
                            					rs.absolute((intPage - 1) * intPageSize + 1);
                            				
                            					while(i < intPageSize && !rs.isAfterLast())
                            					{
                            			%>
                            			<tr>
                            				<td><a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=rs.getString("number")%>"><%=rs.getString("title") %></a></td>
                            				<td><%=rs.getString("time_yearmonthday") %></td>
                            			</tr>
                            			<% 
                            						rs.next();
                            						i++;
                            					}
                            				}
                            			%>                            				                            			
                            		</table>
                            		
                            		<% 
                            			if(intPage > 1) 
                            			{
                            		%>
                            		<a href="guoxueguanzhi_tuijianduwu.jsp?page=<%=intPage-1%>">上一页</a>
                            		<% 
                            			}
                            			else if(intPage == 1)
                            			{
                            		%>
                            		上一页
                            		<% 
                            			}
                            		%>
                            	
                            		<% 
                            			if(intPage < intPageCount)
                            			{
                            		%>
                            		<a href="guoxueguanzhi_tuijianduwu.jsp?page=<%=intPage+1%>">下一页</a>
                            		<% 
                            			}
                            			else if(intPage == intPageCount)
                            			{
                            		%>
                            		下一页
                            		<% 
                            			}
                            		%>

                            		<br>
                            		第<%=intPage %>页    / 共<%=intPageCount %>页
                            </div>
                        </div>                                                
                		<div id="sidebar"> 
                        	<div>
                            	<ul>
                                	<li>热门文章</li>
                                    <li>
                                    	<ul>
                                        	<% 
                                    			if(title1 != null)
                                    			{
                                    		%>
                                        	<li><a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=number1 %>"><%=title1 %></a></li>
                                        	<% 
                                        		}
                                        	%>
                                        	
                                        	<% 
                                    			if(title2 != null)
                                    			{
                                    		%>
                                        	<li><a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=number2 %>"><%=title2 %></a></li>
                                        	<% 
                                        		}
                                        	%>
                                        	
                                        	<% 
                                    			if(title3 != null)
                                    			{
                                    		%>
                                        	<li><a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=number3 %>"><%=title3 %></a></li>
                                        	<% 
                                        		}
                                        	%>
                                        	
                                        	<% 
                                    			if(title4 != null)
                                    			{
                                    		%>
                                        	<li><a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=number4 %>"><%=title4 %></a></li>
                                        	<% 
                                        		}
                                        	%>
                                        	
                                        	<% 
                                    			if(title5 != null)
                                    			{
                                    		%>
                                        	<li><a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=number5 %>"><%=title5 %></a></li>
                                        	<% 
                                        		}
                                        	%>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                <div id="footer">
                	版权所有重庆国学院
                </div>
        </div>

</body>
</html>
