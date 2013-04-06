<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<%@page import="java.beans.Statement"%>  
<%@page import="com.mysql.jdbc.Driver"%>  
<%@page import="java.sql.*"%>  
<%@page import="java.io.*" %>

<%@page import="SessionCount.SessionCounter" %>


<% 
	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null;
   	     String sql = "select * from xueyuan_xinwen";
   	     String sql1 = "select * from xueyuan_xinwen order by id desc";
   	     String sql2 = "select * from xueyuan_tongzhi order by id desc";
   	     String sql3 = "select * from pictureshow order by id desc";
   	     String sql4 = "select * from guoxueguanzhi_picture";
   	     String sql5 = "select * from guoxueguanzhi_mengxue order by id desc";
   	     String sql6 = "select * from guoxueguanzhi_xiaoxue order by id desc";
   	     String sql7 = "select * from guoxueguanzhi_jingshiziji order by id desc";
   	     String sql8 = "select * from guoxueguanzhi_guocuiguoyi order by id desc";
   	     String sql9 = "select * from guoxueguanzhi_guoxuegongju order by id desc";
   	     String sql10 = "select * from guoxueguanzhi_tuijianduwu order by id desc";
   	     String sql11 = "select * from guoxueguanzhi_guoxuerenwu order by id desc";
   	     String sql12 = "select * from guoxuepeixun_picture";
   	     String sql13 = "select * from guoxuepeixun_gongwuyuanpeixun order by id desc";
   	     String sql14 = "select * from guoxuepeixun_qishiyeguanliganbupeixun order by id desc";
   	     String sql15 = "select * from guoxuepeixun_guoxueshizipeixun order by id desc";
   	     String sql16 = "select * from guoxuepeixun_aihaozhepeixun order by id desc";
   	     String sql17 = "select * from guoxuepeixun_peixunjihua order by id desc";
   	     String sql18 = "select * from guoxuepeixun_peixunchengguo order by id desc";
   	     String sql19 = "select * from guoxuetuiguang_picture";
   	     String sql20 = "select * from guoxuetuiguang_xuexiaotuiguang order by id desc";
   	     String sql21 = "select * from guoxuetuiguang_shequtuiguang order by id desc";
   	     String sql22 = "select * from guoxuetuiguang_nongchuntuiguang order by id desc";
   	     String sql23 = "select * from guoxueyanjiu_jingdianyanjiu order by id desc";
   	     String sql24= "select * from guoxueyanjiu_zuixinyanjiu order by id desc";
   	     String sql25= "select * from guoxueyanjiu_haiwaiyanjiu order by id desc";
   	     String sql26= "select * from guoxuejiaoyu_xuelijiaoyu order by id desc";
   	     String sql27= "select * from guoxuejiaoyu_fuxiuerzhuanjiaoyu order by id desc";
   	     String sql28= "select * from guoxuejiaoyu_wangluojiaoyu order by id desc";
   	     String sql29= "select * from other_quweiguoxue order by id desc";
   	     String sql30= "select * from other_youqinglianjie";
   	     String sql31 = "select * from guoxuenews_guonei order by id desc";
   	     String sql32 = "select * from guoxuenews_guowai order by id desc";
   	     String sql33 = "select * from guoxuenews_guonei";
   	     String sql35 = "select * from guoxuenews_guowai";
   	     String sql34 = "select * from web_detail order by id desc";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement1 = null;
  	     PreparedStatement statement2  = null;
  	     PreparedStatement statement3  = null;
  	     PreparedStatement statement4 = null;
  	     PreparedStatement statement5 = null;
  	     PreparedStatement statement6 = null;
  	     PreparedStatement statement7 = null;
  	     PreparedStatement statement8 = null;
  	     PreparedStatement statement9 = null;
  	     PreparedStatement statement10 = null;
  	     PreparedStatement statement11 = null;
  	     PreparedStatement statement12 = null;
  	     PreparedStatement statement13 = null;
  	     PreparedStatement statement14 = null;
  	     PreparedStatement statement15 = null;
  	     PreparedStatement statement16 = null;
  	     PreparedStatement statement17 = null;
  	     PreparedStatement statement18 = null;
  	     PreparedStatement statement19 = null;
  	     PreparedStatement statement20 = null;
  	     PreparedStatement statement21 = null;
  	     PreparedStatement statement22 = null;
  	     PreparedStatement statement23 = null;
  	     PreparedStatement statement24 = null;
  	     PreparedStatement statement25 = null;
  	     PreparedStatement statement26 = null;
  	     PreparedStatement statement27 = null;
  	     PreparedStatement statement28 = null;
  	     PreparedStatement statement29 = null;
  	     PreparedStatement statement30 = null;
  	     PreparedStatement statement31 = null;
  	     PreparedStatement statement32 = null;
  	     PreparedStatement statement33 = null;
  	     PreparedStatement statement34 = null;
  	     PreparedStatement statement35 = null;
  	     ResultSet rs = null;
  	     ResultSet rs1 = null;
  	     ResultSet rs2 = null;
  	     ResultSet rs3 = null;
  	     ResultSet rs4 = null;
  	     ResultSet rs5 = null;
  	     ResultSet rs6 = null;
  	     ResultSet rs7 = null;
  	     ResultSet rs8 = null;
  	     ResultSet rs9 = null;
  	     ResultSet rs10 = null;
  	     ResultSet rs11 = null;
  	     ResultSet rs12 = null;
  	     ResultSet rs13 = null;
  	     ResultSet rs14 = null;
  	     ResultSet rs15 = null;
  	     ResultSet rs16 = null;
  	     ResultSet rs17 = null;
  	     ResultSet rs18 = null;
  	     ResultSet rs19 = null;
  	     ResultSet rs20 = null;
  	     ResultSet rs21 = null;
  	     ResultSet rs22 = null;
  	     ResultSet rs23 = null;
  	     ResultSet rs24 = null;
  	     ResultSet rs25 = null;
  	     ResultSet rs26 = null;
  	     ResultSet rs27 = null;
  	     ResultSet rs28 = null;
  	     ResultSet rs29 = null;
  	     ResultSet rs30 = null;
  	     ResultSet rs31 = null;
  	     ResultSet rs32 = null;
  	     ResultSet rs33 = null;
  	     ResultSet rs34 = null;
  	     ResultSet rs35 = null;
  	     
  	     String image1 = null;
  	     String image2 = null;
  	     String image3 = null;
  	     String image4 = null;
  	     
  	     String titleofimage1 = null;
  	     String titleofimage2 = null;
  	     String titleofimage3 = null;
  	     String titleofimage4 = null;
  	     
  	     String numberofimage1 = null;
  	     String numberofimage2 = null;
  	     String numberofimage3 = null;
  	     String numberofimage4 = null;
  	     
  	     String title1 = null;
  	     String title2 = null;
  	     String title3 = null;
  	     String title4 = null;
  	     String title5 = null;
  	     String title6 = null;
  	     String title7 = null;
  	     String title8 = null;
  	     String title9 = null;
  	     String title10 = null;
  	     
  	     
  	     String time1 = null;
  	     String time2 = null;
  	     String time3 = null;
  	     String time4 = null;
  	     String time5 = null;
  	     String time6 = null;
  	     String time7 = null;
  	     String time8 = null;
  	     String time9 = null;
  	     String time10 = null;
  	     
  	     
  	     
  	     String number1 = null;
  	     String number2 = null;
  	     String number3 = null;
  	     String number4 = null;
  	     String number5 = null;
  	     String number6 = null;
  	     String number7 = null;
  	     String number8 = null;
  	     String number9 = null;
  	     String number10 = null;
  	     
  	     
  	     
  	     String guoxuenews_title1 = null;
  	     String guoxuenews_title2 = null;
  	     String guoxuenews_title3 = null;
  	     String guoxuenews_title4 = null;
  	     String guoxuenews_title5 = null;
  	     
  	     String guoxuenews_number1 = null;
  	     String guoxuenews_number2 = null;
  	     String guoxuenews_number3 = null;
  	     String guoxuenews_number4 = null;
  	     String guoxuenews_number5 = null;
  	     
  	     String guoxuenews_image1 = null;
  	     String guoxuenews_image2 = null;
  	     String guoxuenews_image3 = null;
  	     String guoxuenews_image4 = null;
  	     
  	     String guoxuenews_time1 = null;
  	     String guoxuenews_time2 = null;
  	     String guoxuenews_time3 = null;
  	     String guoxuenews_time4 = null;
  	     String guoxuenews_time5 = null;
  	     
  	     
  	     
  	     String tongzhi_kinds = " ";
  	    // String tongzhi_state = " ";
  	     String tongzhi_content = " ";
  	     String tongzhi_number = null;
  	     String tongzhi_time = null;
  	     
  	     
  	     String mengxue_title = null;
  	     String mengxue_tiyao = null;
  	     String mengxue_number = null;
  	     
  	     String xiaoxue_title = null;
  	     String xiaoxue_tiyao = null;
  	     String xiaoxue_number = null;
  	     
  	     String jingshiziji_title = null;
  	     String jingshiziji_tiyao = null;
  	     String jingshiziji_number = null;
  	     
  	     String guocuiguoyi_title = null;
  	     String guocuiguoyi_tiyao = null;
  	     String guocuiguoyi_number = null;
  	     
  	     String guoxuegongju_title = null;
  	     String guoxuegongju_tiyao = null;
  	     String guoxuegongju_number = null;
  	     
  	     String tuijianduwu_title = null;
  	     String tuijianduwu_tiyao = null;
  	     String tuijianduwu_number = null;
  	     
  	     String guoxuerenwu_title = null;
  	     String guoxuerenwu_tiyao = null;
  	     String guoxuerenwu_number = null;
  	     
  	     String gongwuyuanpeixun_title = null;
  	     String gongwuyuanpeixun_tiyao = null;
  	     String gongwuyuanpeixun_number = null;
  	     
  	     String qishiyeguanliganbupeixun_title = null;
  	     String qishiyeguanliganbupeixun_tiyao = null;
  	     String qishiyeguanliganbupeixun_number = null;
  	     
  	     String guoxueshizipeixun_title = null;
  	     String guoxueshizipeixun_tiyao = null;
  	     String guoxueshizipeixun_number = null;
  	     
  	     
  	     String aihaozhepeixun_title = null;
  	     String aihaozhepeixun_tiyao = null;
  	     String aihaozhepeixun_number = null;
  	     
  	     String peixunjihua_title = null;
  	     String peixunjihua_tiyao = null;
  	     String peixunjihua_number = null;
  	     
  	     String peixunchengguo_title = null;
  	     String peixunchengguo_tiyao = null;
  	     String peixunchengguo_number = null;
  	     
  	     String quweiguoxue_tiyao = null;
  	     String quweiguoxue_number = null;
  	     
  	     int total_visits = 0;
  	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        statement1 = conn.prepareStatement(sql1);
		        rs1 = statement1.executeQuery(sql1);
		        
		        
		        while(rs.next())
		        {
		        	if(rs.getString("image").contains("."))
		        	{
		        		image4 = image3;
		        		image3 = image2;
		        		image2 = image1;
		        		image1 = rs.getString("image");
		        		
		        		titleofimage4 = titleofimage3;
		        		titleofimage3 = titleofimage2;
		        		titleofimage2 = titleofimage1;
		        		titleofimage1 = rs.getString("title");
		        		
		        		numberofimage4 = numberofimage3;
		        		numberofimage3 = numberofimage2;
		        		numberofimage2 = numberofimage1;
		        		numberofimage1 = rs.getString("number");
		        		    		
		        	}
				}
		      
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);
		        
		        while(rs2.next())
		        {
		        	if(rs2.getString("state").equals("1"))
		        	{
		        		tongzhi_kinds = rs2.getString("kinds");
		        		tongzhi_content = rs2.getString("content");
		        		tongzhi_number = rs2.getString("number");
		        		tongzhi_time = rs2.getString("time");
		        		
		        		
		        		if(tongzhi_content.length() > 80)
		        		{
		        			tongzhi_content.substring(0, 79);
		        			tongzhi_content += "...";
		        		}
		        		
		        	}
		        }
		        
		        statement3 = conn.prepareStatement(sql3);
		        rs3 = statement3.executeQuery(sql3);
		        
		        
		        statement4 = conn.prepareStatement(sql4);
		        rs4 = statement4.executeQuery(sql4);
		        
		        statement5 = conn.prepareStatement(sql5);
		        rs5 = statement5.executeQuery(sql5);
		        
		        while(rs5.next())
		        {
		        	mengxue_title = rs5.getString("title");
		        	mengxue_number = rs5.getString("number");
		        	if(rs5.getString("tiyao").length() > 50)
		        	{
		        		mengxue_tiyao = rs5.getString("tiyao").substring(0, 50);
		        		mengxue_tiyao += "...";
		        	}
		        	else
		        	{
		        		mengxue_tiyao = rs5.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement6 = conn.prepareStatement(sql6);
		        rs6 = statement6.executeQuery(sql6);
		        
		        while(rs6.next())
		        {
		        	xiaoxue_title = rs6.getString("title");
		        	xiaoxue_number = rs6.getString("number");
		        	if(rs6.getString("tiyao").length() > 50)
		        	{
		        		xiaoxue_tiyao = rs6.getString("tiyao").substring(0, 50);
		        		xiaoxue_tiyao += "...";
		        	}
		        	else
		        	{
		        		xiaoxue_tiyao = rs6.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement7 = conn.prepareStatement(sql7);
		        rs7 = statement7.executeQuery(sql7);
		        
		        while(rs7.next())
		        {
		        	jingshiziji_title = rs7.getString("title");
		        	jingshiziji_number = rs7.getString("number");
		        	if(rs7.getString("tiyao").length() > 50)
		        	{
		        		jingshiziji_tiyao = rs7.getString("tiyao").substring(0, 50);
		        		jingshiziji_tiyao += "...";
		        	}
		        	else
		        	{
		        		jingshiziji_tiyao = rs7.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement8 = conn.prepareStatement(sql8);
		        rs8 = statement8.executeQuery(sql8);
		        
		        while(rs8.next())
		        {
		        	guocuiguoyi_title = rs8.getString("title");
		        	guocuiguoyi_number = rs8.getString("number");
		        	if(rs8.getString("tiyao").length() > 50)
		        	{
		        		guocuiguoyi_tiyao = rs8.getString("tiyao").substring(0, 50);
		        		guocuiguoyi_tiyao += "...";
		        	}
		        	else
		        	{
		        		guocuiguoyi_tiyao = rs8.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement9 = conn.prepareStatement(sql9);
		        rs9 = statement9.executeQuery(sql9);
		        
		        while(rs9.next())
		        {
		        	guoxuegongju_title = rs9.getString("title");
		        	guoxuegongju_number = rs9.getString("number");
		        	if(rs9.getString("tiyao").length() > 50)
		        	{
		        		guoxuegongju_tiyao = rs9.getString("tiyao").substring(0, 50);
		        		guoxuegongju_tiyao += "...";
		        	}
		        	else
		        	{
		        		guoxuegongju_tiyao = rs9.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement10 = conn.prepareStatement(sql10);
		        rs10 = statement10.executeQuery(sql10);
		        
		        while(rs10.next())
		        {
		        	tuijianduwu_title = rs10.getString("title");
		        	tuijianduwu_number = rs10.getString("number");
		        	if(rs10.getString("tiyao").length() > 50)
		        	{
		        		tuijianduwu_tiyao = rs10.getString("tiyao").substring(0, 50);
		        		tuijianduwu_tiyao += "...";
		        	}
		        	else
		        	{
		        		tuijianduwu_tiyao = rs10.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement11 = conn.prepareStatement(sql11);
		        rs11 = statement11.executeQuery(sql11);
		        
		        while(rs11.next())
		        {
		        	guoxuerenwu_title = rs11.getString("title");
		        	guoxuerenwu_number = rs11.getString("number");
		        	if(rs11.getString("tiyao").length() > 50)
		        	{
		        		guoxuerenwu_tiyao = rs11.getString("tiyao").substring(0, 50);
		        		guoxuerenwu_tiyao += "...";
		        	}
		        	else
		        	{
		        		guoxuerenwu_tiyao = rs11.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement12 = conn.prepareStatement(sql12);
		        rs12 = statement12.executeQuery(sql12);
		        
		        
		        statement13= conn.prepareStatement(sql13);
		        rs13 = statement13.executeQuery(sql13);
		        
		        while(rs13.next())
		        {
		        	gongwuyuanpeixun_title = rs13.getString("title");
		        	gongwuyuanpeixun_number = rs13.getString("number");
		        	if(rs13.getString("tiyao").length() > 50)
		        	{
		        		gongwuyuanpeixun_tiyao = rs13.getString("tiyao").substring(0, 50);
		        		gongwuyuanpeixun_tiyao += "...";
		        	}
		        	else
		        	{
		        		gongwuyuanpeixun_tiyao = rs13.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement14= conn.prepareStatement(sql14);
		        rs14 = statement14.executeQuery(sql14);
		        
		        while(rs14.next())
		        {
		        	qishiyeguanliganbupeixun_title = rs14.getString("title");
		        	qishiyeguanliganbupeixun_number = rs14.getString("number");
		        	if(rs14.getString("tiyao").length() > 50)
		        	{
		        		qishiyeguanliganbupeixun_tiyao = rs14.getString("tiyao").substring(0, 50);
		        		qishiyeguanliganbupeixun_tiyao += "...";
		        	}
		        	else
		        	{
		        		qishiyeguanliganbupeixun_tiyao = rs14.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        
		        statement15= conn.prepareStatement(sql15);
		        rs15 = statement15.executeQuery(sql15);
		        
		        while(rs15.next())
		        {
		        	guoxueshizipeixun_title = rs15.getString("title");
		        	guoxueshizipeixun_number = rs15.getString("number");
		        	if(rs15.getString("tiyao").length() > 50)
		        	{
		        		guoxueshizipeixun_tiyao = rs15.getString("tiyao").substring(0, 50);
		        		guoxueshizipeixun_tiyao += "...";
		        	}
		        	else
		        	{
		        		guoxueshizipeixun_tiyao = rs15.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement16= conn.prepareStatement(sql16);
		        rs16 = statement16.executeQuery(sql16);
		        
		        while(rs16.next())
		        {
		        	aihaozhepeixun_title = rs16.getString("title");
		        	aihaozhepeixun_number = rs16.getString("number");
		        	if(rs16.getString("tiyao").length() > 50)
		        	{
		        		aihaozhepeixun_tiyao = rs16.getString("tiyao").substring(0, 50);
		        		aihaozhepeixun_tiyao += "...";
		        	}
		        	else
		        	{
		        		aihaozhepeixun_tiyao = rs16.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement17= conn.prepareStatement(sql17);
		        rs17 = statement17.executeQuery(sql17);
		        
		        while(rs17.next())
		        {
		        	peixunjihua_title = rs17.getString("title");
		        	peixunjihua_number = rs17.getString("number");
		        	if(rs17.getString("tiyao").length() > 50)
		        	{
		        		peixunjihua_tiyao = rs17.getString("tiyao").substring(0, 50);
		        		peixunjihua_tiyao += "...";
		        	}
		        	else
		        	{
		        		peixunjihua_tiyao = rs17.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement18= conn.prepareStatement(sql18);
		        rs18 = statement18.executeQuery(sql18);
		        
		        while(rs18.next())
		        {
		        	peixunchengguo_title = rs18.getString("title");
		        	peixunchengguo_number = rs18.getString("number");
		        	if(rs18.getString("tiyao").length() > 50)
		        	{
		        		peixunchengguo_tiyao = rs18.getString("tiyao").substring(0, 50);
		        		peixunchengguo_tiyao += "...";
		        	}
		        	else
		        	{
		        		peixunchengguo_tiyao = rs18.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement19= conn.prepareStatement(sql19);
		        rs19 = statement19.executeQuery(sql19);
		        
		        
		        statement20= conn.prepareStatement(sql20);
		        rs20 = statement20.executeQuery(sql20);
		        
		        statement21= conn.prepareStatement(sql21);
		        rs21 = statement21.executeQuery(sql21);
		        
		        statement22= conn.prepareStatement(sql22);
		        rs22 = statement22.executeQuery(sql22);
		        
		        
		        statement23= conn.prepareStatement(sql23);
		        rs23 = statement23.executeQuery(sql23);
		        
		        
		        statement24= conn.prepareStatement(sql24);
		        rs24 = statement24.executeQuery(sql24);
		        
		        
		        statement25= conn.prepareStatement(sql25);
		        rs25 = statement25.executeQuery(sql25);
		        
		        statement26= conn.prepareStatement(sql26);
		        rs26 = statement26.executeQuery(sql26);
		        
		        statement27= conn.prepareStatement(sql27);
		        rs27 = statement27.executeQuery(sql27);
		        
		        statement28= conn.prepareStatement(sql28);
		        rs28 = statement28.executeQuery(sql28);
		        
		        
		        statement29= conn.prepareStatement(sql29);
		        rs29 = statement29.executeQuery(sql29);
		        
		        while(rs29.next())
		        {
		       		quweiguoxue_number = rs29.getString("number");
		        	if(rs29.getString("tiyao").length() > 50)
		        	{
		        		quweiguoxue_tiyao = rs29.getString("tiyao").substring(0, 50);
		        		quweiguoxue_tiyao += "...";
		        	}
		        	else
		        	{
		        		quweiguoxue_tiyao = rs29.getString("tiyao");
		        	}
		        	break;
		        }
		        
		        
		        statement30= conn.prepareStatement(sql30);
		        rs30 = statement30.executeQuery(sql30);
		        
		        
		        statement31= conn.prepareStatement(sql31);
		        rs31 = statement31.executeQuery(sql31);
		        
		        statement32= conn.prepareStatement(sql32);
		        rs32 = statement32.executeQuery(sql32);
		        
		        statement33= conn.prepareStatement(sql33);
		        rs33 = statement33.executeQuery(sql33);
		        
		        while(rs33.next())
		        {
		        	if(rs33.getString("image").contains("."))
		        	{
		        	/*	guoxuenews_image4 = guoxuenews_image3;
		        		guoxuenews_image3 = guoxuenews_image2;*/
		        		guoxuenews_image2 = guoxuenews_image1;
		        		guoxuenews_image1 = rs33.getString("image");		        				        			        				        				              		
		        	}
		     
				}
				
				
				statement35= conn.prepareStatement(sql35);
		        rs35 = statement35.executeQuery(sql35);
		        
		        
		         while(rs35.next())
		        {
		        	if(rs35.getString("image").contains("."))
		        	{
		        	/*	guoxuenews_image4 = guoxuenews_image3;
		        		guoxuenews_image3 = guoxuenews_image2;*/
		        		guoxuenews_image4 = guoxuenews_image3;
		        		guoxuenews_image3 = rs35.getString("image");		        				        			        				        				              		
		        	}
		     
				}
		        
				
				
				statement34= conn.prepareStatement(sql34);
		        rs34 = statement34.executeQuery(sql34);
		        
		        while(rs34.next())
		        {
		        	total_visits = rs34.getInt("total_visits");
		        	break;
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
    
    <title>重庆国学院</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<link href="cssofqiantai/css_menu/skins/menu.css" rel="stylesheet" type="text/css" />

<link href="cssofqiantai/guoxue.css" rel="stylesheet" type="text/css" />

<link href="cssofqiantai/button.css" rel="stylesheet" type="text/css" />
<link href="cssofqiantai/css_menu/bodymenu.css" rel="stylesheet" type="text/css" />


<link href="cssofqiantai/css_news_picture/picture.css" rel="stylesheet" type="text/css" />

<link href="cssofqiantai/css_picture_show/picture_show.css" rel="stylesheet" type="text/css" />

<link href="cssofqiantai/css_guoxue_guanzhi/guoxueguanzhi.css" rel="stylesheet" type="text/css" />

<link href="cssofqiantai/css_guoxue_news/guoxue_news.css" rel="stylesheet" type="text/css" />




<script type="text/javascript" src='jsofqiantai/js_menu/jquery.min.js'></script>
<script type='text/javascript' src='jsofqiantai/js_menu/jquery.hoverIntent.minified.js'></script>
<script type='text/javascript' src='jsofqiantai/js_menu/jquery.dcmegamenu.1.3.2.js'></script>



<script type='text/javascript' src='jsofqiantai/js_news_picture/news_picture.js'></script>

<script type="text/javascript" src='jsofqiantai/js_guoxue_guanzhi/guoxueguanzhi.js'></script>





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
	
	function change(i)
	{
	
		var str1 = document.getElementById("guoxuenews_ppiicc1").value;
		var str2 = document.getElementById("guoxuenews_ppiicc2").value;
		var str3 = document.getElementById("guoxuenews_ppiicc3").value;
		var str4 = document.getElementById("guoxuenews_ppiicc4").value;
	
		if(i == 1)
		{
			document.getElementById("guoxue_news_pic").src = str1;
			
		}
		else if(i == 2)
		{
			document.getElementById("guoxue_news_pic").src = str2;
		}
		else if(i == 3)
		{
			document.getElementById("guoxue_news_pic").src = str3;
		}
		else if(i == 4)
		{
			document.getElementById("guoxue_news_pic").src = str4;
		}
	}

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
                        		<div id="school_news">
                                		<div id="left_picture">
                                        		        <div id="news_picture">	
															<div id="news_picture_bg"></div>  <!--标题背景-->
															<div id="news_picture_info"></div> <!--标题-->
  															<ul>
    															<li class="on">1</li>
      															<li>2</li>
        	    												<li>3</li>
        														<li>4</li>
    														</ul>
   															<div id="news_picture_list">
        														<a href="xueyuan_xinwendetail.jsp?id=<%=numberofimage1 %>" target="_blank"><img src=<%=image1 %> title=<%=titleofimage1 %> alt=<%=titleofimage1 %>  height="250px" width="300px" /></a>
        														<a href="xueyuan_xinwendetail.jsp?id=<%=numberofimage2 %>" target="_blank"><img src=<%=image2 %> title=<%=titleofimage2 %> alt=<%=titleofimage2 %> height="250px" width="300px" /></a>
        														<a href="xueyuan_xinwendetail.jsp?id=<%=numberofimage3 %>" target="_blank"><img src=<%=image3 %> title=<%=titleofimage3 %> alt=<%=titleofimage3 %> height="250px" width="300px" /></a>
        														<a href="xueyuan_xinwendetail.jsp?id=<%=numberofimage4 %>" target="_blank"><img src=<%=image4 %> title=<%=titleofimage4 %> alt=<%=titleofimage4 %> height="250px" width="300px" /></a>
		   													 </div>
														</div>
                                        </div>
                                        <div id="right_news">
                                        	<div id="right_news_title">
													<div id="right_news_title_1">学院新闻</div>
                                                    <div id="right_news_title_2"><a href="xueyuan_xinwen.jsp">more</a></div>
                                            </div>
                                            <div id="right_news_content">                                           
                                            	
                                            	<table>
                                            		<%
                                            			int xueyuan_xinwen_i = 0;
                                            			String xueyuan_xinwen_title2 = null;
                                            			while(rs1.next())
                                            			{
                                            				if(xueyuan_xinwen_i > 9)
                                            				{
                                            					break;
                                            				}
                                            				xueyuan_xinwen_title2 = rs1.getString("title");
                                            				if(xueyuan_xinwen_title2.length() > 10)
                                            				{
                                            					xueyuan_xinwen_title2 = xueyuan_xinwen_title2.substring(0, 10);
                                            					xueyuan_xinwen_title2 += "...";
                                            				}
                                            		%>
                                            		<tr>
                                            			<td style="width:233px;"><img src="pictures/small.png" /> &nbsp;<a href="xueyuan_xinwendetail.jsp?id=<%=rs1.getString("number")%>"><%=xueyuan_xinwen_title2 %></a></td>
                                            			<td>[<%=rs1.getString("time").substring(0, rs1.getString("time").indexOf(" ")) %>]</td>
                                            		</tr>
                                            		<% 
                                            			    xueyuan_xinwen_i++;
                                            			  }
                                            		%>
                                            	</table>
                                            	
                                            </div>
                                        </div>
                                </div>
                                <div id="picture_show">
                                		<div id="picture_show_title" >图片展示</div>
                         				<div id="demo">
											<div id="indemo">
												<div id="demo1">

														
														<% 
															int pictureshow_i = 0;
															while(rs3.next())
															{
																if(pictureshow_i > 14)
																{
																	break;
																}
								
																
														%>
														<a href="pictureshow.jsp"><img src="<%=rs3.getString("picture_route") %>" height="100px" width="150px" /></a> 
														<% 
																pictureshow_i ++;
															}
														%>
												</div>
												<div id="demo2"></div>
											</div>
										</div>
                                    	<script type='text/javascript' src='jsofqiantai/js_picture_show/picture_show.js'></script>                               
                                </div>
                                
                                <div id="guoxue_guanzhi">
                                	<div id="guoxue_guanzhi_title">国学观止</div>
                                
                                	<div id="lib_Tab1_sx" class="lib_tabborder_sx">
										  <div class="lib_Menubox_sx ">
												<ul>
  								 					<li id="one1" onclick="setTab('one',1,7)" class="hover">蒙学</li>
  								 					<li id="one2" onclick="setTab('one',2,7)" >小学</li>
  								 					<li id="one3" onclick="setTab('one',3,7)">经史子集</li>   
  								 					<li id="one4" onclick="setTab('one',4,7)">国粹国艺</li>
 								 					<li id="one5" onclick="setTab('one',5,7)">国学工具</li>
                                                    <li id="one6" onclick="setTab('one',6,7)">推荐读物</li>
                                                    <li id="one7" onclick="setTab('one',7,7)">国学人物</li>
												</ul>
											</div>
 											<div class="lib_Contentbox_sx ">  
  												<div id="con_one_1" >
  														<div id="mengxue_up">
  														
  															<div id="mengxue_up_left">
  																	<p>
  																		<a href="guoxueguanzhi_mengxuedetail.jsp?id=<%=mengxue_number%>"><h4><%=mengxue_title %></h4></a>
  																		<%=mengxue_tiyao %>		
  																	</p>															
  															</div>
  															<div id="mengxue_up_right">
  																<% 
  																 	while(rs4.next())
  																 	{
  																%>
  																<img src="<%=rs4.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>
  																
  															</div>
  														</div>       
  														<div id="mengxue_middle">
  															<a href="guoxueguanzhi_mengxue.jsp">more</a>
  														</div>
  														<div id="mengxue_down">
  															<div id="mengxue_down_left">
  															  <% 
  																	int i = 0;
  																	String mengxue_title2 = null;
  																	String mengxue_number2 = null;
  																	while(rs5.next())
  																	{
  																		if(i > 4)
  																		{
  																			break;
  																		}
  																		if(rs5.getString("title").length() > 12)
  																		{
  																			mengxue_title2 = rs5.getString("title").substring(0, 12);
  																			mengxue_title2 += "...";
  																		}
  																		else
  																		{
  																			mengxue_title2 = rs5.getString("title");
  																		}
  																		mengxue_number2 = rs5.getString("number");
  																		i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_mengxuedetail.jsp?id=<%=mengxue_number2 %>" ><%=mengxue_title2 %></a><br>
  																<% 
  																	 }
  																	 rs5.previous();
  																%>
  															</div>
  															<div id="mengxue_down_right">
  															   <% 															 
  																	 i = 0;
  																	 mengxue_title2 = null;
  																	while(rs5.next())
  																	{
  																		if(i > 4)
  																		{
  																			break;
  																		}
  																		if(rs5.getString("title").length() > 12)
  																		{
  																			mengxue_title2 = rs5.getString("title").substring(0, 12);
  																			mengxue_title2 += "...";
  																		}
  																		else
  																		{
  																			mengxue_title2 = rs5.getString("title");
  																		}
  																		mengxue_number2 = rs5.getString("number");
  																		i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_mengxuedetail.jsp?id=<%=mengxue_number2 %>" ><%=mengxue_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
  															</div>
  														</div>                     
                                                </div>
   												<div id="con_one_2" style="display:none">
                									 <div id="xiaoxue_up">
   														<div id="xiaoxue_up_left">
   															<a href="guoxueguanzhi_xiaoxuedetail.jsp?id=<%=xiaoxue_number%>"><h4><%=xiaoxue_title %></h4></a>
  															<%=xiaoxue_tiyao %>
   														</div>
   														<div id="xiaoxue_up_right">
   																<% 
  																 	while(rs4.next())
  																 	{
  																%>
  																<img src="<%=rs4.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>
   														</div>
   													</div>
   													<div id="xiaoxue_middle">
   														<a href="guoxueguanzhi_xiaoxue.jsp">more</a>
   													</div>
   													<div id="xiaoxue_down">
   														<div id="xiaoxue_down_left">
   															<% 
  																	int xiaoxue_i = 0;
  																	String xiaoxue_title2 = null;
  																	String xiaoxue_number2 = null;
  																	while(rs6.next())
  																	{
  																		if(xiaoxue_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs6.getString("title").length() > 12)
  																		{
  																			xiaoxue_title2 = rs6.getString("title").substring(0, 12);
  																			xiaoxue_title2 += "...";
  																		}
  																		else
  																		{
  																			xiaoxue_title2 = rs6.getString("title");
  																		}
  																		
  																		xiaoxue_number2 = rs6.getString("number");
  																		xiaoxue_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_xiaoxuedetail.jsp?id=<%=xiaoxue_number2%>" ><%=xiaoxue_title2 %></a><br>
  																<% 
  																	 }
  																	 rs6.previous();
  																%>
   														</div>
   														<div id="xiaoxue_down_right">
   															<% 															 
  																	 xiaoxue_i = 0;
  																	 xiaoxue_title2 = null;
  																	while(rs6.next())
  																	{
  																		if(xiaoxue_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs6.getString("title").length() > 12)
  																		{
  																			xiaoxue_title2 = rs6.getString("title").substring(0, 12);
  																			xiaoxue_title2 += "...";
  																		}
  																		else
  																		{
  																			xiaoxue_title2 = rs6.getString("title");
  																		}
  																		
  																		xiaoxue_number2 = rs6.getString("number");
  																		xiaoxue_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_xiaoxuedetail.jsp?id=<%=xiaoxue_number2%>" ><%=xiaoxue_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
												</div>
   												<div id="con_one_3" style="display:none">
                                                		<div id="jingshiziji_up">
   														<div id="jingshiziji_up_left">
   																<a href="guoxueguanzhi_jingshizijidetail.jsp?id=<%=jingshiziji_number%>"><h4><%=jingshiziji_title %></h4></a>
  																<%=jingshiziji_tiyao %>
   														</div>
   														<div id="jingshiziji_up_right">
   																<% 
  																 	while(rs4.next())
  																 	{
  																%>
  																<img src="<%=rs4.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>
   														</div>
   													</div>
   													<div id="jingshiziji_middle">
   														<a href="guoxueguanzhi_jingshiziji.jsp">more</a>
   													</div>
   													<div id="jingshiziji_down">
   														<div id="jingshiziji_down_left">
   															  <% 
  																	int jingshiziji_i = 0;
  																	String jingshiziji_title2 = null;
  																	String jingshiziji_number2 = null;
  																	while(rs7.next())
  																	{
  																		if(jingshiziji_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs7.getString("title").length() > 12)
  																		{
  																			jingshiziji_title2 = rs7.getString("title").substring(0, 12);
  																			jingshiziji_title2 += "...";
  																		}
  																		else
  																		{
  																			jingshiziji_title2 = rs7.getString("title");
  																		}
  																		
  																		jingshiziji_number2 = rs7.getString("number");
  																		jingshiziji_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_jingshizijidetail.jsp?id=<%=jingshiziji_number2%>" ><%=jingshiziji_title2 %></a><br>
  																<% 
  																	 }
  																	 rs7.previous();
  																%>
   														</div>
   														<div id="jingshiziji_down_right">
   															<% 															 
  																	 jingshiziji_i = 0;
  																	 jingshiziji_title2 = null;
  																	while(rs7.next())
  																	{
  																		if(jingshiziji_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs7.getString("title").length() > 12)
  																		{
  																			jingshiziji_title2 = rs7.getString("title").substring(0, 12);
  																			jingshiziji_title2 += "...";
  																		}
  																		else
  																		{
  																			jingshiziji_title2 = rs7.getString("title");
  																		}
  																		jingshiziji_number2 = rs7.getString("number");
  																		jingshiziji_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_jingshizijidetail.jsp?id=<%=jingshiziji_number2%>" ><%=jingshiziji_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
                        
                                                </div>
   												<div id="con_one_4" style="display:none">
                                                	<div id="guocuiguoyi_up">
   														<div id="guocuiguoyi_up_left">
   																<a href="guoxueguanzhi_guocuiguoyidetail.jsp?id=<%=guocuiguoyi_number%>"><h4><%=guocuiguoyi_title %></h4></a>
  																<%=guocuiguoyi_tiyao %>
   														</div>
   														<div id="guocuiguoyi_up_right">
   																<% 
  																 	while(rs4.next())
  																 	{
  																%>
  																<img src="<%=rs4.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>
   														</div>
   													</div>
   													<div id="guocuiguoyi_middle">
   															<a href="guoxueguanzhi_guocuiguoyi.jsp">more</a>
   													</div>
   													<div id="guocuiguoyi_down">
   														<div id="guocuiguoyi_down_left">
   															<% 
  																	int guocuiguoyi_i = 0;
  																	String guocuiguoyi_title2 = null;
  																	String guocuiguoyi_number2 = null;
  																	while(rs8.next())
  																	{
  																		if(guocuiguoyi_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs8.getString("title").length() > 12)
  																		{
  																			guocuiguoyi_title2 = rs8.getString("title").substring(0, 12);
  																			guocuiguoyi_title2 += "...";
  																		}
  																		else
  																		{
  																			guocuiguoyi_title2 = rs8.getString("title");
  																		}
  																		
  																		guocuiguoyi_number2 = rs8.getString("number");
  																		guocuiguoyi_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_guocuiguoyidetail.jsp?id=<%=guocuiguoyi_number2%>" ><%=guocuiguoyi_title2 %></a><br>
  																<% 
  																	 }
  																	 rs8.previous();
  																%>
   														</div>
   														<div id="guocuiguoyi_down_right">
   															<% 															 
  																	 guocuiguoyi_i = 0;
  																	 guocuiguoyi_title2 = null;
  																	while(rs8.next())
  																	{
  																		if(guocuiguoyi_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs8.getString("title").length() > 12)
  																		{
  																			guocuiguoyi_title2 = rs8.getString("title").substring(0, 12);
  																			guocuiguoyi_title2 += "...";
  																		}
  																		else
  																		{
  																			guocuiguoyi_title2 = rs8.getString("title");
  																		}
  																		
  																		guocuiguoyi_number2 = rs8.getString("number");
  																		guocuiguoyi_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_guocuiguoyidetail.jsp?id=<%=guocuiguoyi_number2%>" ><%=guocuiguoyi_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
                   
                                                </div> 
   												<div id="con_one_5" style="display:none">
                                                	<div id="guoxuegongju_up">
   														<div id="guoxuegongju_up_left">
   																<a href="guoxueguanzhi_guoxuegongjudetail.jsp?id=<%=guoxuegongju_number%>"><h4><%=guoxuegongju_title %></h4></a>
  																<%=guoxuegongju_tiyao %>
   														</div>
   														<div id="guoxuegongju_up_right">
   																<% 
  																 	while(rs4.next())
  																 	{
  																%>
  																<img src="<%=rs4.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>
   														</div>
   													</div>
   													<div id="guoxuegongju_middle">
   															<a href="guoxueguanzhi_guoxuegongju.jsp">more</a>
   													</div>
   													<div id="guoxuegongju_down">
   														<div id="guoxuegongju_down_left">
   															 <% 
  																	int guoxuegongju_i = 0;
  																	String guoxuegongju_title2 = null;
  																	String guoxuegongju_number2 = null;
  																	while(rs9.next())
  																	{
  																		if(guoxuegongju_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs9.getString("title").length() > 12)
  																		{
  																			guoxuegongju_title2 = rs9.getString("title").substring(0, 12);
  																			guoxuegongju_title2 += "...";
  																		}
  																		else
  																		{
  																			guoxuegongju_title2 = rs9.getString("title");
  																		}
  																		
  																		guoxuegongju_number2 = rs9.getString("number");
  																		guoxuegongju_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_guoxuegongjudetail.jsp?id=<%=guoxuegongju_number2%>" ><%=guoxuegongju_title2 %></a><br>
  																<% 
  																	 }
  																	 rs9.previous();
  																%>
   														</div>
   														<div id="guoxuegongju_down_right">
   																<% 															 
  																	 guoxuegongju_i = 0;
  																	 guoxuegongju_title2 = null;
  																	while(rs9.next())
  																	{
  																		if(guoxuegongju_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs9.getString("title").length() > 12)
  																		{
  																			guoxuegongju_title2 = rs9.getString("title").substring(0, 12);
  																			guoxuegongju_title2 += "...";
  																		}
  																		else
  																		{
  																			guoxuegongju_title2 = rs9.getString("title");
  																		}
  																		
  																		guoxuegongju_number2 = rs9.getString("number");
  																		guoxuegongju_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_guoxuegongjudetail.jsp?id=<%=guoxuegongju_number2%>" ><%=guoxuegongju_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
                    
                                                </div> 
                                                <div id="con_one_6" style="display:none">
                                                	<div id="tuijianduwu_up">
   														<div id="tuijianduwu_up_left">
   																<a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=tuijianduwu_number%>"><h4><%=tuijianduwu_title %></h4></a>
  																<%=tuijianduwu_tiyao %>
   														</div>
   														<div id="tuijianduwu_up_right">
   																<% 
  																 	while(rs4.next())
  																 	{
  																%>
  																<img src="<%=rs4.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>
   														</div>
   													</div>
   													<div id="tuijianduwu_middle">
   															<a href="guoxueguanzhi_tuijianduwu.jsp">more</a>
   													</div>
   													<div id="tuijianduwu_down">
   														<div id="tuijianduwu_down_left">
   															  <% 
  																	int tuijianduwu_i = 0;
  																	String tuijianduwu_title2 = null;
  																	String tuijianduwu_number2 = null;
  																	while(rs10.next())
  																	{
  																		if(tuijianduwu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs10.getString("title").length() > 12)
  																		{
  																			tuijianduwu_title2 = rs10.getString("title").substring(0, 12);
  																			tuijianduwu_title2 += "...";
  																		}
  																		else
  																		{
  																			tuijianduwu_title2 = rs10.getString("title");
  																		}
  																		
  																		tuijianduwu_number2 = rs10.getString("number");
  																		tuijianduwu_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=tuijianduwu_number2%>" ><%=tuijianduwu_title2 %></a><br>
  																<% 
  																	 }
  																	 rs10.previous();
  																%>
   														</div>
   														<div id="tuijianduwu_down_right">
   														
   																<% 															 
  																	 tuijianduwu_i = 0;
  																	 guoxuegongju_title2 = null;
  																	while(rs10.next())
  																	{
  																		if(tuijianduwu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs10.getString("title").length() > 12)
  																		{
  																			tuijianduwu_title2 = rs10.getString("title").substring(0, 12);
  																			tuijianduwu_title2 += "...";
  																		}
  																		else
  																		{
  																			tuijianduwu_title2 = rs10.getString("title");
  																		}
  																		
  																		tuijianduwu_number2 = rs10.getString("number");
  																		tuijianduwu_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_tuijianduwudetail.jsp?id=<%=tuijianduwu_number2%>" ><%=tuijianduwu_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
             
                                                </div> 
                                                <div id="con_one_7" style="display:none">
                                                	<div id="guoxuerenwu_up">
   														<div id="guoxuerenwu_up_left">
   																<a href="guoxueguanzhi_guoxuerenwudetail.jsp?id=<%=guoxuerenwu_number%>"><h4><%=guoxuerenwu_title %></h4></a>
  																<%=guoxuerenwu_tiyao %>
   														</div>
   														<div id="guoxuerenwu_up_right">
   																<% 
  																 	while(rs4.next())
  																 	{
  																%>
  																<img src="<%=rs4.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>
   														</div>
   													</div>
   													
   													<div id="guoxuerenwu_middle">
   															<a href="guoxueguanzhi_guoxuerenwu.jsp">more</a>
   													</div>
   													
   													<div id="guoxuerenwu_down">
   														<div id="guoxuerenwu_down_left">
   																<% 
  																	int guoxuerenwu_i = 0;
  																	String guoxuerenwu_title2 = null;
  																	String guoxuerenwu_number2 = null;
  																	while(rs11.next())
  																	{
  																		if(guoxuerenwu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs11.getString("title").length() > 12)
  																		{
  																			guoxuerenwu_title2 = rs11.getString("title").substring(0, 12);
  																			guoxuerenwu_title2 += "...";
  																		}
  																		else
  																		{
  																			guoxuerenwu_title2 = rs11.getString("title");
  																		}
  																		
  																		guoxuerenwu_number2 = rs11.getString("number");
  																		guoxuerenwu_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_guoxuerenwudetail.jsp?id=<%=guoxuerenwu_number2%>" ><%=guoxuerenwu_title2 %></a><br>
  																<% 
  																	 }
  																	 rs11.previous();
  																%>
   														</div>
   														<div id="guoxuerenwu_down_right">
   														
   															<% 															 
  																	 guoxuerenwu_i = 0;
  																	 guoxuerenwu_title2 = null;
  																	while(rs11.next())
  																	{
  																		if(guoxuerenwu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs11.getString("title").length() > 12)
  																		{
  																			guoxuerenwu_title2 = rs11.getString("title").substring(0, 12);
  																			guoxuerenwu_title2 += "...";
  																		}
  																		else
  																		{
  																			guoxuerenwu_title2 = rs11.getString("title");
  																		}
  																		
  																		guoxuerenwu_number2 = rs11.getString("number");
  																		guoxuerenwu_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueguanzhi_guoxuerenwudetail.jsp?id=<%=guoxuerenwu_number2%>" ><%=guoxuerenwu_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>

                                                </div> 
 											</div>
										</div>                                
                                </div>
                                
                                <div id="guoxue_peixun">     
                                	<div id="guoxue_peixun_title">国学培训</div>                           
                                	<div id="lib_Tab2_sx" class="lib_tabborder_sx">
										<div class="lib_Menubox_sx ">
											<ul>
  								 				<li id="two1" onclick="setTab('two',1,6)" class="hover">公务员培训</li>
  								 				<li id="two2" onclick="setTab('two',2,6)" >企事业管理干部培训</li>
  								 				<li id="two3" onclick="setTab('two',3,6)">国学师资培训</li>   
  								 				<li id="two4" onclick="setTab('two',4,6)">爱好者培训</li>
 								 				<li id="two5" onclick="setTab('two',5,6)">培训计划</li>
                                                <li id="two6" onclick="setTab('two',6,6)">培训成果</li>
											</ul>
										</div>
 										<div class="lib_Contentbox_sx ">  
  										    <div id="con_two_1" >
                                            		<div id="gongwuyuanpeixun_up">
  														
  															<div id="gongwuyuanpeixun_up_left">
  																	
  																		<a href="gongwuyuanpeixundetail.jsp?id=<%=gongwuyuanpeixun_number%>"><h4><%=gongwuyuanpeixun_title %></h4></a>
  																		<%=gongwuyuanpeixun_tiyao %>		
  																																
  															</div>
  															<div id="gongwuyuanpeixun_up_right">
  																<% 
  																 	while(rs12.next())
  																 	{
  																%>
  																<img src="<%=rs12.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>										
  															</div>	  															
  																										
  														</div> 
  														<div id="gongwuyuanpeixun_middle">
   															<a href="gongwuyuanpeixun.jsp">more</a>
   														</div>
   														<div id="gongwuyuanpeixun_down">
   														<div id="gongwuyuanpeixun_down_left">
   																<% 
  																	int gongwuyuanpeixun_i = 0;
  																	String gongwuyuanpeixun_title2 = null;
  																	String gongwuyuanpeixun_number2 = null;
  																	while(rs13.next())
  																	{
  																		if(gongwuyuanpeixun_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs13.getString("title").length() > 12)
  																		{
  																			gongwuyuanpeixun_title2 = rs13.getString("title").substring(0, 12);
  																			gongwuyuanpeixun_title2 += "...";
  																		}
  																		else
  																		{
  																			gongwuyuanpeixun_title2 = rs13.getString("title");
  																		}
  																		gongwuyuanpeixun_number2 = rs13.getString("number");
  																		gongwuyuanpeixun_i++;
  																%>
  																<img src="pictures/small.png" /><a href="gongwuyuanpeixundetail.jsp?id=<%=gongwuyuanpeixun_number2 %>" ><%=gongwuyuanpeixun_title2 %></a><br>
  																<% 
  																	 }
  																	 rs13.previous();
  																%>
   														</div>
   														<div id="gongwuyuanpeixun_down_right">
   														
   															<% 															 
  																	 gongwuyuanpeixun_i = 0;
  																	 gongwuyuanpeixun_title2 = null;
  																	while(rs13.next())
  																	{
  																		if(gongwuyuanpeixun_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs13.getString("title").length() > 12)
  																		{
  																			gongwuyuanpeixun_title2 = rs13.getString("title").substring(0, 12);
  																			gongwuyuanpeixun_title2 += "...";
  																		}
  																		else
  																		{
  																			gongwuyuanpeixun_title2 = rs13.getString("title");
  																		}
  																		
  																		gongwuyuanpeixun_number2 = rs13.getString("number");
  																		gongwuyuanpeixun_i++;
  																%>
  																<img src="pictures/small.png" /><a href="gongwuyuanpeixundetail.jsp?id=<%=gongwuyuanpeixun_number2 %>" ><%=gongwuyuanpeixun_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>


                                            </div>
   											<div id="con_two_2" style="display:none">
                                            		<div id="qishiyeguanliganbupeixun_up">
  														
  															<div id="qishiyeguanliganbupeixun_up_left">
  																	
  																		<a href="qishiyeguanliganbupeixundetail.jsp?id=<%=qishiyeguanliganbupeixun_number%>"><h4><%=qishiyeguanliganbupeixun_title %></h4></a>
  																		<%=qishiyeguanliganbupeixun_tiyao %>		
  																																
  															</div>
  															<div id="qishiyeguanliganbupeixun_up_right">
  																<% 
  																 	while(rs12.next())
  																 	{
  																%>
  																<img src="<%=rs12.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>										
  															</div>	  															
  																										
  														</div> 
  														<div id="qishiyeguanliganbupeixun_middle">
   															<a href="qishiyeguanliganbupeixun.jsp">more</a>
   														</div>
   														<div id="qishiyeguanliganbupeixun_down">
   														<div id="qishiyeguanliganbupeixun_down_left">
   																<% 
  																	int qishiyeguanliganbupeixun_i = 0;
  																	String qishiyeguanliganbupeixun_title2 = null;
  																	String qishiyeguanliganbupeixun_number2 = null;
  																	while(rs14.next())
  																	{
  																		if(qishiyeguanliganbupeixun_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs14.getString("title").length() > 12)
  																		{
  																			qishiyeguanliganbupeixun_title2 = rs14.getString("title").substring(0, 12);
  																			qishiyeguanliganbupeixun_title2 += "...";
  																		}
  																		else
  																		{
  																			qishiyeguanliganbupeixun_title2 = rs14.getString("title");
  																		}
  																		
  																		qishiyeguanliganbupeixun_number2 = rs14.getString("number");
  																		qishiyeguanliganbupeixun_i++;
  																%>
  																<img src="pictures/small.png" /><a href="qishiyeguanliganbupeixundetail.jsp?id=<%=qishiyeguanliganbupeixun_number2 %>" ><%=qishiyeguanliganbupeixun_title2 %></a><br>
  																<% 
  																	 }
  																	 rs14.previous();
  																%>
   														</div>
   														<div id="qishiyeguanliganbupeixun_down_right">
   														
   															<% 															 
  																	 qishiyeguanliganbupeixun_i = 0;
  																	 qishiyeguanliganbupeixun_title2 = null;
  																	while(rs14.next())
  																	{
  																		if(qishiyeguanliganbupeixun_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs14.getString("title").length() > 12)
  																		{
  																			qishiyeguanliganbupeixun_title2 = rs14.getString("title").substring(0, 12);
  																			qishiyeguanliganbupeixun_title2 += "...";
  																		}
  																		else
  																		{
  																			qishiyeguanliganbupeixun_title2 = rs14.getString("title");
  																		}
  																		
  																		qishiyeguanliganbupeixun_number2 = rs14.getString("number");
  																		qishiyeguanliganbupeixun_i++;
  																%>
  																<img src="pictures/small.png" /><a href="qishiyeguanliganbupeixundetail.jsp?id=<%=qishiyeguanliganbupeixun_number2 %>" ><%=qishiyeguanliganbupeixun_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
   														
                                            		
                                            </div>
   											<div id="con_two_3" style="display:none">
                                            		 <div id="guoxueshizipeixun_up">
  														
  															<div id="guoxueshizipeixun_up_left">
  																	
  																		<a href="guoxueshizipeixundetail.jsp?id=<%=guoxueshizipeixun_number%>"><h4><%=guoxueshizipeixun_title %></h4></a>
  																		<%=guoxueshizipeixun_tiyao %>		
  																																
  															</div>
  															<div id="guoxueshizipeixun_up_right">
  																<% 
  																 	while(rs12.next())
  																 	{
  																%>
  																<img src="<%=rs12.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>										
  															</div>	  															
  																										
  														</div> 
  														<div id="guoxueshizipeixun_middle">
   															<a href="guoxueshizipeixun.jsp">more</a>
   														</div>
   														<div id="guoxueshizipeixun_down">
   														<div id="guoxueshizipeixun_down_left">
   																<% 
  																	int guoxueshizipeixun_i = 0;
  																	String guoxueshizipeixun_title2 = null;
  																	String guoxueshizipeixun_number2 = null;
  																	while(rs15.next())
  																	{
  																		if(guoxueshizipeixun_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs15.getString("title").length() > 12)
  																		{
  																			guoxueshizipeixun_title2 = rs15.getString("title").substring(0, 12);
  																			guoxueshizipeixun_title2 += "...";
  																		}
  																		else
  																		{
  																			guoxueshizipeixun_title2 = rs15.getString("title");
  																		}
  																		
  																		guoxueshizipeixun_number2 = rs15.getString("number");
  																		guoxueshizipeixun_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueshizipeixundetail.jsp?id=<%=guoxueshizipeixun_number2 %>" ><%=guoxueshizipeixun_title2 %></a><br>
  																<% 
  																	 }
  																	 rs15.previous();
  																%>
   														</div>
   														<div id="guoxueshizipeixun_down_right">
   														
   															<% 															 
  																	 guoxueshizipeixun_i = 0;
  																	 guoxueshizipeixun_title2 = null;
  																	while(rs15.next())
  																	{
  																		if(guoxueshizipeixun_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs15.getString("title").length() > 12)
  																		{
  																			guoxueshizipeixun_title2 = rs15.getString("title").substring(0, 12);
  																			guoxueshizipeixun_title2 += "...";
  																		}
  																		else
  																		{
  																			guoxueshizipeixun_title2 = rs15.getString("title");
  																		}
  																		
  																		guoxueshizipeixun_number2 = rs15.getString("number");
  																		guoxueshizipeixun_i++;
  																%>
  																<img src="pictures/small.png" /><a href="guoxueshizipeixundetail.jsp?id=<%=guoxueshizipeixun_number2 %>" ><%=guoxueshizipeixun_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
                                            </div>
   											<div id="con_two_4" style="display:none">
                                            		 <div id="aihaozhepeixun_up">
  														
  															<div id="aihaozhepeixun_up_left">
  																	
  																		<a href="aihaozhepeixundetail.jsp?id=<%=aihaozhepeixun_number%>"><h4><%=aihaozhepeixun_title %></h4></a>
  																		<%=aihaozhepeixun_tiyao %>		
  																																
  															</div>
  															<div id="aihaozhepeixun_up_right">
  																<% 
  																 	while(rs12.next())
  																 	{
  																%>
  																<img src="<%=rs12.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>										
  															</div>	  															
  																										
  														</div> 
  														<div id="aihaozhepeixun_middle">
   															<a href="aihaozhepeixun.jsp">more</a>
   														</div>
   														<div id="aihaozhepeixun_down">
   														<div id="aihaozhepeixun_down_left">
   																<% 
  																	int aihaozhepeixun_i = 0;
  																	String aihaozhepeixun_title2 = null;
  																	String aihaozhepeixun_number2 = null;
  																	while(rs16.next())
  																	{
  																		if(aihaozhepeixun_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs16.getString("title").length() > 12)
  																		{
  																			aihaozhepeixun_title2 = rs16.getString("title").substring(0, 12);
  																			aihaozhepeixun_title2 += "...";
  																		}
  																		else
  																		{
  																			aihaozhepeixun_title2 = rs16.getString("title");
  																		}
  																		
  																		aihaozhepeixun_number2 = rs16.getString("number");
  																		aihaozhepeixun_i++;
  																%>
  																<img src="pictures/small.png" /><a href="aihaozhepeixundetail.jsp?id=<%=aihaozhepeixun_number2 %>" ><%=aihaozhepeixun_title2 %></a><br>
  																<% 
  																	 }
  																	 rs16.previous();
  																%>
   														</div>
   														<div id="aihaozhepeixun_down_right">
   														
   															<% 															 
  																	 aihaozhepeixun_i = 0;
  																	 aihaozhepeixun_title2 = null;
  																	while(rs16.next())
  																	{
  																		if(aihaozhepeixun_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs16.getString("title").length() > 12)
  																		{
  																			aihaozhepeixun_title2 = rs16.getString("title").substring(0, 12);
  																			aihaozhepeixun_title2 += "...";
  																		}
  																		else
  																		{
  																			aihaozhepeixun_title2 = rs16.getString("title");
  																		}
  																		
  																		aihaozhepeixun_number2 = rs16.getString("number");
  																		aihaozhepeixun_i++;
  																%>
  																<img src="pictures/small.png" /><a href="aihaozhepeixundetail.jsp?id=<%=aihaozhepeixun_number2 %>" ><%=aihaozhepeixun_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
                                            </div> 
   											<div id="con_two_5" style="display:none">
                                            		<div id="peixunjihua_up">
  														
  															<div id="peixunjihua_up_left">
  																	
  																		<a href="peixunjihuadetail.jsp?id=<%=peixunjihua_number%>"><h4><%=peixunjihua_title %></h4></a>
  																		<%=peixunjihua_tiyao %>		
  																																
  															</div>
  															<div id="peixunjihua_up_right">
  																<% 
  																 	while(rs12.next())
  																 	{
  																%>
  																<img src="<%=rs12.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>										
  															</div>	  															
  																										
  														</div> 
  														<div id="peixunjihua_middle">
   															<a href="peixunjihua.jsp">more</a>
   														</div>
   														<div id="peixunjihua_down">
   														<div id="peixunjihua_down_left">
   																<% 
  																	int peixunjihua_i = 0;
  																	String peixunjihua_title2 = null;
  																	String peixunjihua_number2 = null;
  																	while(rs17.next())
  																	{
  																		if(peixunjihua_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs17.getString("title").length() > 12)
  																		{
  																			peixunjihua_title2 = rs17.getString("title").substring(0, 12);
  																			peixunjihua_title2 += "...";
  																		}
  																		else
  																		{
  																			peixunjihua_title2 = rs17.getString("title");
  																		}
  																		
  																		peixunjihua_number2 = rs17.getString("number");
  																		peixunjihua_i++;
  																%>
  																<img src="pictures/small.png" /><a href="peixunjihuadetail.jsp?id=<%=peixunjihua_number2 %>" ><%=peixunjihua_title2 %></a><br>
  																<% 
  																	 }
  																	 rs17.previous();
  																%>
   														</div>
   														<div id="peixunjihua_down_right">
   														
   															<% 															 
  																	 peixunjihua_i = 0;
  																	 peixunjihua_title2 = null;
  																	while(rs17.next())
  																	{
  																		if(peixunjihua_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs17.getString("title").length() > 12)
  																		{
  																			peixunjihua_title2 = rs17.getString("title").substring(0, 12);
  																			peixunjihua_title2 += "...";
  																		}
  																		else
  																		{
  																			peixunjihua_title2 = rs17.getString("title");
  																		}
  																		
  																		peixunjihua_number2 = rs17.getString("number");
  																		peixunjihua_i++;
  																%>
  																<img src="pictures/small.png" /><a href="peixunjihuadetail.jsp?id=<%=peixunjihua_number2%>" ><%=peixunjihua_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
                                            		
                                            </div> 
                                            <div id="con_two_6" style="display:none">
                                            		<div id="peixunchengguo_up">
  														
  															<div id="peixunchengguo_up_left">
  																	
  																		<a href="peixunchengguodetail.jsp?id=<%=peixunchengguo_number%>"><h4><%=peixunchengguo_title %></h4></a>
  																		<%=peixunchengguo_tiyao %>		
  																																
  															</div>
  															<div id="peixunchengguo_up_right">
  																<% 
  																 	while(rs12.next())
  																 	{
  																%>
  																<img src="<%=rs12.getString("picture_route") %>" height="140px" width="200px" />
  																<% 
  																	break;
  																	}
  																%>										
  															</div>	  															
  																										
  														</div> 
  														<div id="peixunchengguo_middle">
   															<a href="peixunchengguo.jsp">more</a>
   														</div>
   														<div id="peixunchengguo_down">
   														<div id="peixunchengguo_down_left">
   																<% 
  																	int peixunchengguo_i = 0;
  																	String peixunchengguo_title2 = null;
  																	String peixunchengguo_number2 = null;
  																	while(rs18.next())
  																	{
  																		if(peixunchengguo_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs18.getString("title").length() > 12)
  																		{
  																			peixunchengguo_title2 = rs18.getString("title").substring(0, 12);
  																			peixunchengguo_title2 += "...";
  																		}
  																		else
  																		{
  																			peixunchengguo_title2 = rs18.getString("title");
  																		}
  																		
  																		peixunchengguo_number2 = rs18.getString("number");
  																		peixunchengguo_i++;
  																%>
  																<img src="pictures/small.png" /><a href="peixunchengguodetail.jsp?id=<%=peixunchengguo_number2 %>" ><%=peixunchengguo_title2 %></a><br>
  																<% 
  																	 }
  																	 rs18.previous();
  																%>
   														</div>
   														<div id="peixunchengguo_down_right">
   														
   															<% 															 
  																	 peixunchengguo_i = 0;
  																	 peixunchengguo_title2 = null;
  																	while(rs18.next())
  																	{
  																		if(peixunchengguo_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs18.getString("title").length() > 12)
  																		{
  																			peixunchengguo_title2 = rs18.getString("title").substring(0, 12);
  																			peixunchengguo_title2 += "...";
  																		}
  																		else
  																		{
  																			peixunchengguo_title2 = rs18.getString("title");
  																		}
  																		
  																		peixunchengguo_number2 = rs18.getString("number");
  																		peixunchengguo_i++;
  																%>
  																<img src="pictures/small.png" /><a href="peixunchengguodetail.jsp?id=<%=peixunchengguo_number2 %>" ><%=peixunchengguo_title2 %></a><br>
  																<% 
  																	  }
  																	
  																%>
   														</div>
   													</div>
                                            </div>
 										</div>
									</div>                                
                                </div>
                                
                                <div id="guoxue_tuiguang">   
                                	 <div id="guoxue_tuiguang_title">国学推广</div>                          
                                	 <div id="lib_Tab3_sx" class="lib3_tabborder_sx">
										<div class="lib3_Menubox_sx ">
											<ul>
  								 				<li id="three1" onclick="setTab('three',1,3)" class="hover">学校推广</li>
  								 				<li id="three2" onclick="setTab('three',2,3)" >社区推广</li>
  								 				<li id="three3" onclick="setTab('three',3,3)">农村推广</li>   
											</ul>
										</div>
 										<div class="lib3_Contentbox_sx ">  
  											<div id="con_three_1" >
                                            	<div id="xuexiaotuiguang_left">
                                            			<div id="xuexiaotuiguang_left_up">
                                            					<% 
                                            						int xuexiaotuiguang_i = 0;
                                            						String xuexiaotuiguang_title = null;
                                            						String xuexiaotuiguang_number = null;
                                            						while(rs20.next())
  																	{
  																		if(xuexiaotuiguang_i > 6)
  																		{
  																			break;
  																		}
  																		if(rs20.getString("title").length() > 12)
  																		{
  																			xuexiaotuiguang_title = rs20.getString("title").substring(0, 12);
  																			xuexiaotuiguang_title += "...";
  																		}
  																		else
  																		{
  																			xuexiaotuiguang_title = rs20.getString("title");
  																		}
  																		
  																		xuexiaotuiguang_number = rs20.getString("number");
  																		xuexiaotuiguang_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="xuexiaotuiguangdetail.jsp?id=<%=xuexiaotuiguang_number %>" ><%=xuexiaotuiguang_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            			</div>
                                            			<div id="xuexiaotuiguang_left_down">
                                            					<a href="xuexiaotuiguang.jsp">more</a>
                                            			</div>
                                            	</div>
                                            	<div id="xuexiaotuiguang_right">
                                            					<% 
  																 	while(rs19.next())
  																 	{
  																%>
  																<img src="<%=rs19.getString("picture_route") %>" height="230px" width="215px" />
  																<% 
  																	break;
  																	}
  																%>
                                            	</div>
                                            </div>
   											<div id="con_three_2" style="display:none">
                                            	<div id="shequtuiguang_left">
                                            			<div id="shequtuiguang_left_up">
                                            					<% 
                                            						int shequtuiguang_i = 0;
                                            						String shequtuiguang_title = null;
                                            						String shequtuiguang_number = null;
                                            						while(rs21.next())
  																	{
  																		if(shequtuiguang_i > 6)
  																		{
  																			break;
  																		}
  																		if(rs21.getString("title").length() > 12)
  																		{
  																			shequtuiguang_title = rs21.getString("title").substring(0, 12);
  																			shequtuiguang_title += "...";
  																		}
  																		else
  																		{
  																			shequtuiguang_title = rs21.getString("title");
  																		}
  																		
  																		shequtuiguang_number = rs21.getString("number");
  																		shequtuiguang_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="shequtuiguangdetail.jsp?id=<%=shequtuiguang_number %>" ><%=shequtuiguang_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            			</div>
                                            			<div id="shequtuiguang_left_down">
                                            					<a href="shequtuiguang.jsp">more</a>
                                            			</div>
                                            	</div>
                                            	<div id="shequtuiguang_right">
                                            					<% 
  																 	while(rs19.next())
  																 	{
  																%>
  																<img src="<%=rs19.getString("picture_route") %>" height="230px" width="215px" />
  																<% 
  																	break;
  																	}
  																%>
                                            	</div>
                                            </div>
   											<div id="con_three_3" style="display:none">
                                            	<div id="nongchuntuiguang_left">
                                            			<div id="nongchuntuiguang_left_up">
                                            					<% 
                                            						int nongchuntuiguang_i = 0;
                                            						String nongchuntuiguang_title = null;
                                            						String nongchuntuiguang_number = null;
                                            						while(rs22.next())
  																	{
  																		if(nongchuntuiguang_i > 6)
  																		{
  																			break;
  																		}
  																		if(rs22.getString("title").length() > 12)
  																		{
  																			nongchuntuiguang_title = rs22.getString("title").substring(0, 12);
  																			nongchuntuiguang_title += "...";
  																		}
  																		else
  																		{
  																			nongchuntuiguang_title = rs22.getString("title");
  																		}
  																		
  																		nongchuntuiguang_number = rs22.getString("number");
  																		nongchuntuiguang_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="nongcuntuiguangdetail.jsp?id=<%=nongchuntuiguang_number %>" ><%=nongchuntuiguang_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            			</div>
                                            			<div id="nongchuntuiguang_left_down">
                                            					<a href="nongcuntuiguang.jsp">more</a>
                                            			</div>
                                            	</div>
                                            	<div id="nongchuntuiguang_right">
                                            					<% 
  																 	while(rs19.next())
  																 	{
  																%>
  																<img src="<%=rs19.getString("picture_route") %>" height="230px" width="215px" />
  																<% 
  																	break;
  																	}
  																%>
                                            	</div>
                                            </div>
 										</div>
									</div>                               
                                </div>                                
                        </div>
                        
                        
                		<div id="sidebar">
                        		<div id="school_notice">
                                	<div id="school_notice_title">
                                    	<div id="school_notice_title_1">学院通知</div>
                                        <div id="school_notice_title_2"><a href="xueyuan_tongzhi.jsp">more</a></div>
                                    </div>
                                    <div id="school_notice_content">
                                    	<%=tongzhi_time %><br>
                                    	<%=tongzhi_kinds %>:<a href="xueyuan_tongzhidetail.jsp?id=<%=tongzhi_number%>"><%=tongzhi_content %></a>
                                    </div>
                                </div>
                                <div id="user_login">
                                		
                                		<div>
                                			<form method="post" action="user_login_check.jsp">
                                				<table>
                                					<tr>
                                						<td style="width:30%; height:50px;">用户名:</td>
                                						<td style="width:70%; height:50px;"><input id="login_username" name="login_username" type="text" style="height:20px;" /></td>
                                					</tr>
                                					<tr>
                                						<td>密码:</td>
                                						<td><input id="login_password" name="login_password" type="password" style="height:20px;" /></td>
                                					</tr>
                                					<tr>
                                						<td></td>
                                						<td></td>
                                					</tr>
                                				</table>
                                				<br>
                                				<br>
                                				&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input name="submit" type="submit" value="登陆" style="width:80px;height:30px;background:url(pictures/c11.png);" /> &nbsp;&nbsp;&nbsp;&nbsp;<input name="submit" type="submit" value="注册" style="width:80px;height:30px;background:url(pictures/c11.png);" />
                                			</form>
                                		</div>
                                		 
                                </div>
                                
                                <div id="guoxue_news">
                                		<div id="guoxue_news_title">国学新闻</div>
                                
                                	<div id="doc">
										<dl id="album">
 											<dt>
												<img id="guoxue_news_pic" alt="" src="<%=guoxuenews_image1 %>" height="150" width="224" />
  												<input type="hidden" id="guoxuenews_ppiicc1" value="<%=guoxuenews_image1 %>" >
  												<input type="hidden" id="guoxuenews_ppiicc2" value="<%=guoxuenews_image2 %>" >
  												<input type="hidden" id="guoxuenews_ppiicc3" value="<%=guoxuenews_image3 %>" >
  												<input type="hidden" id="guoxuenews_ppiicc4" value="<%=guoxuenews_image4 %>" >
  											</dt>
  											<dd>
    											<a href="javascript:void(0);" onclick="change(1)">1</a><a href="javascript:void(0);" onclick="change(2)">2</a><a href="javascript:void(0);" onclick="change(3)">3</a><a href="javascript:void(0);" onclick="change(4)">4</a>
  											</dd>
										</dl>
									</div>
                                    <div id="guoxue_news_content">
                                    	<div id="guoxue_news_content_title">
                                    		<div id="guonei_guoxue">
												<table>
														
														<% 
																int guoxuenews_guonei_i = 0;
																String guoxuenews_guonei_title = null;
																String guoxuenews_guonei_number = null;
															while(rs31.next())
															{																
																if(guoxuenews_guonei_i > 3)
																{
																	break;
																}
																if(rs31.getString("title").length() > 5)
																{
																	guoxuenews_guonei_title = rs31.getString("title").substring(0,4);
																	guoxuenews_guonei_title += "...";
																}
																else
																{
																	guoxuenews_guonei_title = rs31.getString("title");
																}
																
																guoxuenews_guonei_number = rs31.getString("number");
																guoxuenews_guonei_i++;
														%>	
														<tr><td><img src="pictures/small.png" /><a href="guoxuenews_guoneidetail.jsp?id=<%=guoxuenews_guonei_number%>"><%=guoxuenews_guonei_title%></a></td></tr>
														<% 
															}
														%>
														
												</table>
												</div>
												<div style="text-align:right;"><a href="guoxuenews_guonei.jsp" >more</a></div>
                                    	</div>
                                    	<div id="guoxue_news_content_time">
                                    		<div id="guowai_guoxue">
                                    		 <table>
                                    		 		
                                    		 		<% 
                                    		 			int guoxuenews_guowai_i = 0;
														String guoxuenews_guowai_title = null;
														String guoxuenews_guowai_number = null;
                                    		 			while(rs32.next())
                                    		 			{
                                    		 				if(guoxuenews_guowai_i > 3)
																{
																	break;
																}
																if(rs32.getString("title").length() > 5)
																{
																	guoxuenews_guowai_title = rs32.getString("title").substring(0,4);
																	guoxuenews_guowai_title += "...";
																}
																else
																{
																	guoxuenews_guowai_title = rs32.getString("title");
																}
																
																guoxuenews_guowai_number = rs32.getString("number");
																guoxuenews_guowai_i++;
                                    		 
                                    		 		%>
                                    		 		<tr><td><img src="pictures/small.png" /><a href="guoxuenews_guowaidetail.jsp?id=<%=guoxuenews_guowai_number%>"><%=guoxuenews_guowai_title %></a></td></tr>
                                    		 		<% 
                                    		 			}
                                    		 		%>
                                    		 		
                                    		 		
                                    		 </table>
                                    		 </div>
                                    		 <div style="text-align:right;"><a href="guoxuenews_guowai.jsp" >more</a></div>
                                    	</div>
                                    </div>
                                </div>
                                
                                <div id="guoxue_yanjiu">
                                	<div id="guoxue_yanjiu_title">国学研究</div>
                                	<div id="lib_Tab4_sx" class="lib4_tabborder_sx">
										<div class="lib4_Menubox_sx ">
											<ul>
  								 				<li id="four1" onclick="setTab('four',1,3)" class="hover">经典研究</li>
  								 				<li id="four2" onclick="setTab('four',2,3)" >最新研究</li>
  								 				<li id="four3" onclick="setTab('four',3,3)">海外研究</li>   
											</ul>
										</div>
 										<div class="lib4_Contentbox_sx ">  
  											<div id="con_four_1" >
                                            	<div id="jingdianyanjiu_all">
                                            		<div id="jingdianyanjiu_all_up">
                                            				<% 
                                            						int jingdianyanjiu_i = 0;
                                            						String jingdianyanjiu_title = null;
                                            						String jingdianyanjiu_number = null;
                                            						while(rs23.next())
  																	{
  																		if(jingdianyanjiu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs23.getString("title").length() > 8)
  																		{
  																			jingdianyanjiu_title = rs23.getString("title").substring(0, 8);
  																			jingdianyanjiu_title += "...";
  																		}
  																		else
  																		{
  																			jingdianyanjiu_title = rs23.getString("title");
  																		}
  																		
  																		jingdianyanjiu_number = rs23.getString("number");
  																		jingdianyanjiu_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="jingdianyanjiudetail.jsp?id=<%=jingdianyanjiu_number %>" ><%=jingdianyanjiu_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            		</div>
                                            		<div id="jingdianyanjiu_all_down">
                                            				<a href="jingdianyanjiu.jsp">more</a>
                                            		</div>
                                            	</div>
                                            </div>
   											<div id="con_four_2" style="display:none">
                                            	<div id="zuixinyanjiu_all">
                                            		<div id="zuixinyanjiu_all_up">
                                            				<% 
                                            						int zuixinyanjiu_i = 0;
                                            						String zuixinyanjiu_title = null;
                                            						String zuixinyanjiu_number = null;
                                            						while(rs24.next())
  																	{
  																		if(zuixinyanjiu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs24.getString("title").length() > 8)
  																		{
  																			zuixinyanjiu_title = rs24.getString("title").substring(0, 8);
  																			zuixinyanjiu_title += "...";
  																		}
  																		else
  																		{
  																			zuixinyanjiu_title = rs24.getString("title");
  																		}
  																		
  																		zuixinyanjiu_number = rs24.getString("number");
  																		zuixinyanjiu_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="zuixinyanjiudetail.jsp?id=<%=zuixinyanjiu_number %>" ><%=zuixinyanjiu_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            		</div>
                                            		<div id="zuixinyanjiu_all_down">
                                            				<a href="zuixinyanjiu.jsp">more</a>
                                            		</div>
                                            	</div>
                                            </div>
   											<div id="con_four_3" style="display:none">
                                            	<div id="haiwaiyanjiu_all">
                                            		<div id="haiwaiyanjiu_all_up">
                                            				<% 
                                            						int haiwaiyanjiu_i = 0;
                                            						String haiwaiyanjiu_title = null;
                                            						String haiwaiyanjiu_number = null;
                                            						while(rs25.next())
  																	{
  																		if(haiwaiyanjiu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs25.getString("title").length() > 8)
  																		{
  																			haiwaiyanjiu_title = rs25.getString("title").substring(0, 8);
  																			haiwaiyanjiu_title += "...";
  																		}
  																		else
  																		{
  																			haiwaiyanjiu_title = rs25.getString("title");
  																		}
  																		
  																		haiwaiyanjiu_number = rs25.getString("number");
  																		haiwaiyanjiu_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="haiwaiyanjiudetail.jsp?id=<%=haiwaiyanjiu_number %>" ><%=haiwaiyanjiu_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            		</div>
                                            		<div id="haiwaiyanjiu_all_down">
                                            				<a href="haiwaiyanjiu.jsp">more</a>
                                            		</div>
                                            	</div>
                                            </div>
 										</div>
									</div>
                                </div>
                                
                                <div id="guoxue_jiaoyu">
                                	<div id="guoxue_jiaoyu_title">国学教育</div>
                                	<div id="lib_Tab5_sx" class="lib5_tabborder_sx">
										<div class="lib5_Menubox_sx ">
											<ul>
  								 				<li id="five1" onclick="setTab('five',1,3)" class="hover">学历教育</li>
  								 				<li id="five2" onclick="setTab('five',2,3)" >辅修二专教育</li>
  								 				<li id="five3" onclick="setTab('five',3,3)">网络教育</li>   
											</ul>
										</div>
 										<div class="lib5_Contentbox_sx ">  
  											<div id="con_five_1" >
                                            	<div id="xuelijiaoyu_all">
                                            		<div id="xuelijiaoyu_all_up">
                                            				<% 
                                            						int xuelijiaoyu_i = 0;
                                            						String xuelijiaoyu_title = null;
                                            						String xuelijiaoyu_number = null;
                                            						while(rs26.next())
  																	{
  																		if(xuelijiaoyu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs26.getString("title").length() > 8)
  																		{
  																			xuelijiaoyu_title = rs26.getString("title").substring(0, 8);
  																			xuelijiaoyu_title += "...";
  																		}
  																		else
  																		{
  																			xuelijiaoyu_title = rs26.getString("title");
  																		}
  																		
  																		xuelijiaoyu_number = rs26.getString("number");
  																		xuelijiaoyu_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="xuelijiaoyudetail.jsp?id=<%=xuelijiaoyu_number %>" ><%=xuelijiaoyu_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            		</div>
                                            		<div id="xuelijiaoyu_all_down">
                                            				<a href="xuelijiaoyu.jsp">more</a>
                                            		</div>
                                            	</div>
                                            </div>
   											<div id="con_five_2" style="display:none">
                                            	<div id="fuxiuerzhuanjiaoyu_all">
                                            		<div id="fuxiuerzhuanjiaoyu_all_up">
                                            				<% 
                                            						int fuxiuerzhuanjiaoyu_i = 0;
                                            						String fuxiuerzhuanjiaoyu_title = null;
                                            						String fuxiuerzhuanjiaoyu_number = null;
                                            						while(rs27.next())
  																	{
  																		if(fuxiuerzhuanjiaoyu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs27.getString("title").length() > 8)
  																		{
  																			fuxiuerzhuanjiaoyu_title = rs27.getString("title").substring(0, 8);
  																			fuxiuerzhuanjiaoyu_title += "...";
  																		}
  																		else
  																		{
  																			fuxiuerzhuanjiaoyu_title = rs27.getString("title");
  																		}
  																		
  																		fuxiuerzhuanjiaoyu_number = rs27.getString("number");
  																		fuxiuerzhuanjiaoyu_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="fuxiuerzhuanjiaoyudetail.jsp?id=<%=fuxiuerzhuanjiaoyu_number %>" ><%=fuxiuerzhuanjiaoyu_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            		</div>
                                            		<div id="fuxiuerzhuanjiaoyu_all_down">
                                            				<a href="fuxiuerzhuanjiaoyu.jsp">more</a>
                                            		</div>
                                            	</div>
                                            </div>
   											<div id="con_five_3" style="display:none">
                                            	<div id="wangluojiaoyu_all">
                                            		<div id="wangluojiaoyu_all_up">
                                            				<% 
                                            						int wangluojiaoyu_i = 0;
                                            						String wangluojiaoyu_title = null;
                                            						String wangluojiaoyu_number = null;
                                            						while(rs28.next())
  																	{
  																		if(wangluojiaoyu_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs28.getString("title").length() > 8)
  																		{
  																			wangluojiaoyu_title = rs28.getString("title").substring(0, 8);
  																			wangluojiaoyu_title += "...";
  																		}
  																		else
  																		{
  																			wangluojiaoyu_title = rs28.getString("title");
  																		}
  																		
  																		wangluojiaoyu_number = rs28.getString("number");
  																		wangluojiaoyu_i++;
                                            					%>
                                            					<img src="pictures/small.png" /><a href="wangluojiaoyudetail.jsp?id=<%=wangluojiaoyu_number %>" ><%=wangluojiaoyu_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                            		</div>
                                            		<div id="wangluojiaoyu_all_down">
                                            				<a href="wangluojiaoyu.jsp">more</a>
                                            		</div>
                                            	</div>
                                            </div>
 										</div>
									</div>
                                </div>
                                
                                <div id="guoxue_quwei">
                                	<div id="guoxue_quwei_title">
                                    	<div id="guoxue_quwei_title_1">趣味国学</div>
                                        <div id="guoxue_quwei_title_2"><a href="quweiguoxue.jsp">more</a></div>
                                    </div>
                                    <div id="guoxue_quwei_content">
                                    	<div id="quweiguoxue_up">
                                    			<a href="quweiguoxuedetail.jsp?id=<%=quweiguoxue_number%>"><%=quweiguoxue_tiyao %></a>
                                    	</div>
                                    	<div id="quweiguoxue_down">
                                    						<% 
                                            						int quweiguoxue_i = 0;
                                            						String quweiguoxue_title = null;
                                            						String quweiguoxue_number2 = null;
                                            						while(rs29.next())
  																	{
  																		if(quweiguoxue_i > 4)
  																		{
  																			break;
  																		}
  																		if(rs29.getString("title").length() > 15)
  																		{
  																			quweiguoxue_title = rs29.getString("title").substring(0, 15);
  																			quweiguoxue_title += "...";
  																		}
  																		else
  																		{
  																			quweiguoxue_title = rs29.getString("title");
  																		}
  																		
  																		quweiguoxue_number2 = rs29.getString("number");
  																		quweiguoxue_i++;
                                            					%>
                                            					<img src="pictures/small.png" style="margin-bottom: -4px;" /><a href="quweiguoxuedetail.jsp?id=<%=quweiguoxue_number2 %>" ><%=quweiguoxue_title %></a><br>
                                            					<% 
                                            						 }
                                            					%>
                                    	</div>
                                    </div>
                                </div>
                        </div>
                        
                        <div id="youqing_lianjie">
                        		<div><span style="font-size:12pt;color:#000000;">友情链接:</span>
                        			<% 
                        				while(rs30.next())
                        				{
                        					
                        			%>
                        			<a href="<%=rs30.getString("url")%>"><%=rs30.getString("name") %></a> &nbsp;&nbsp;&nbsp;
                        			<% 
                        				}
                        			%>
                        		</div>
                        </div>
                        
                </div>
                <div id="footer">
                	 总访问量：<%=total_visits %> &nbsp;&nbsp; 当前在线人数:<%=SessionCount.SessionCounter.getActiveSessions()%><br>
                	版权所有重庆国学院
                </div>
        </div>

</body>
</html>

