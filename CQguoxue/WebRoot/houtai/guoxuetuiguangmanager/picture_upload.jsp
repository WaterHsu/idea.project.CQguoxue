<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@ page import="java.io.*"%> 
<%@ page import="javax.servlet.*"%> 
<%@ page import="javax.servlet.http.*"%> 
<%@page import="java.beans.Statement"%>  
<%@page import="com.mysql.jdbc.Driver"%>  
<%@page import="java.sql.*"%>  









<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'uploadpic.jsp' starting page</title>
    
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
  
  

  	     
  	     
  	     
<%
  		 int year,month,day,hour,minute; 
		 Calendar c = Calendar.getInstance(); 
		 year = c.get(Calendar.YEAR); //年 
		 month = c.get(Calendar.MONTH) + 1; //月 
		 day = c.get(Calendar.DAY_OF_MONTH); //日 	
		 hour = c.get(Calendar.HOUR_OF_DAY); //时（HOUR——十二小时制；HOUR_OF_DAY——二十四小时制） 
		 minute = c.get(Calendar.MINUTE); //分 		 
		 
		 String hour1 = "";
		 String minute1 = "";
		 if(hour < 10)
		 {
		 	hour1 += "0";
		 	hour1 += hour;
		 }
		 else 
		 {
		 	hour1 += hour;
		 }
		 
		 if(minute < 10)
		 {
		 	minute1 += "0";
		 	minute1 += minute;
		 }
		 else
		 {
		 	minute1 += minute;
		 }
		 
		 Random random = new Random(); 
    	 int x = 1000 + random.nextInt(9000);
	
		 
		 String time_yearmonth = "";
		 time_yearmonth += year;
		 time_yearmonth += "-";
		 time_yearmonth += month;
		 time_yearmonth += "-";
		 time_yearmonth += day;
		 

		
		 String number = "";
		 number += year;
		 number += month;
		 number += day;
		 number += hour;
		 number += minute;
		 number += x;
		 
		 
		 int id2 = Integer.parseInt(request.getParameter("id").toString());
 



   String fileName = null;
   String saveFile = null;
   int MAX_SIZE = 102400 * 102400; //定义上载文件的最大字节 
   String rootPath; // 创建根路径的保存变量 
   DataInputStream in = null; //声明文件读入类 
   FileOutputStream fileOut = null; 
   String remoteAddr = request.getRemoteAddr(); //取得客户端的网络地址 
   String serverName = request.getServerName(); //获得服务器的名字 
   String realPath = request.getRealPath(serverName);//取得互联网程序的绝对地址  
   
  // String pic = session.getAttribute("picname").toString();
   
   realPath = realPath.substring(0,realPath.lastIndexOf("\\")); 
   rootPath = realPath + "\\guoxuetuiguangimages\\" + time_yearmonth + "\\"; //创建文件的保存目录
   String contentType = request.getContentType(); //取得客户端上传的数据类型  
	try
	{ 
	   if(contentType.indexOf("multipart/form-data") >= 0)
	   { 
	 	  in = new DataInputStream(request.getInputStream()); //读入上传的数据 
	 	  int formDataLength = request.getContentLength(); 
	 	  if(formDataLength > MAX_SIZE)
	 	  { 
			  out.println("<P>上传的文件字节数不可以超过" + MAX_SIZE + "</p>"); 
			  return; 
	 	  } 
	   //download by http://www.codefans.net
	 	  byte dataBytes[] = new byte[formDataLength]; //保存上传文件的数据 
	 	  int byteRead = 0; 
	 	  int totalBytesRead = 0; 
	 	  while(totalBytesRead < formDataLength)
		  { //上传的数据保存在byte数组 
				 byteRead = in.read(dataBytes,totalBytesRead,formDataLength); 
				 totalBytesRead += byteRead; 
		  } 
	  	 String file = new String(dataBytes); //根据byte数组创建字符串 
	   	 saveFile = file.substring(file.indexOf("filename=\"") + 10); //取得上传的数据的文件名 
	     
	  	 saveFile = saveFile.substring(0,saveFile.indexOf("\n")); 
	  	 saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\"")); 
	   //  String saveFile = pic;
	 	 int lastIndex = contentType.lastIndexOf("="); 
	  	 String boundary = contentType.substring(lastIndex + 1,contentType.length());//取得数据的分隔字符串 
	  	 fileName = rootPath + saveFile; 
	  	 int pos; 
	   	pos = file.indexOf("filename=\""); 
	   	pos = file.indexOf("\n",pos) + 1; 
	   	pos = file.indexOf("\n",pos) + 1; 
	   	pos = file.indexOf("\n",pos) + 1; 
	   	int boundaryLocation = file.indexOf(boundary,pos) - 4; 
	   	int startPos = ((file.substring(0,pos)).getBytes()).length;//取得文件数据的开始的位置  ; 
	   	int endPos = ((file.substring(0,boundaryLocation)).getBytes()).length; //取得文件数据的结束的位置  
	   	File checkFile = new File(fileName); //检查上载文件是否存在 
	/*   	if(checkFile.exists())
	   	{ 
			 out.println("<p>" + saveFile + "文件已经存在,请重新上传！</p>");
			 return ; 
		} */
	   File fileDir = new File(rootPath);//检查上载文件的目录是否存在  
	   if(!fileDir.exists())
	   { 
		  fileDir.mkdirs(); 
		} 
	   fileOut = new FileOutputStream(fileName); //创建文件的写出类 
	   fileOut.write(dataBytes,startPos,(endPos - startPos)); //保存文件的数据 
	   fileOut.close(); 
		//out.println("<P><font color=red size=5>" + saveFile + "文件成功上传！</font></p>"); 
	//	out.println("<a href='upload/"+saveFile+"'>打开上传文件</a>");
		//out.println("<img src='upload/" + saveFile + "' />");
		//out.println("<br /><a href='upfile.jsp'>重新上传</a>");
		//out.println(saveFile);
		
	  }
	   else
	   { 
	   String content = request.getContentType(); 
	   out.println("<p>上传的数据类型不是是multipart/form-data</p>"); 
		} 
	
	
		/* String numberid = session.getAttribute("numberid").toString();
		 out.println(numberid);*/
		 
		 String ssaveFile = "guoxuetuiguangimages/" + time_yearmonth + "/"  + saveFile;
		
	//	out.println(ssaveFile.substring(0, ssaveFile.lastIndexOf('/')));
	


  	   
  	     //String sql = "upadate medicine set med_imageurl='" +saveFile+ "' where med_numberid='" +numberid+ "'";
  	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
  	//     String sql = "select * from guoxuetuiguang_picture order by id desc" ;
  	     Connection conn = null;
  	  //   PreparedStatement statement = null;   
  	     PreparedStatement statement2 = null; 
  	      PreparedStatement statement3 = null;
  	  //   ResultSet rs = null;
  	 //    int id = 0;
  	     
  	     
  	     Class.forName("com.mysql.jdbc.Driver");
		 conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 		
	/*	 statement = conn.prepareStatement(sql);
		 rs = statement.executeQuery(sql);
		 
		 while(rs.next())
		 {
		 	id = rs.getInt("id");
		 	break;
		 }	
		 
		 id++;*/
		 
	//	 String sql2 = "insert into guoxuetuiguang_picture (id,number,picture_route) values(" +id+ ",'" +number+ "','" +ssaveFile+ "')";
		
		 String sql2 = "update guoxuetuiguang_picture set picture_route = '" +ssaveFile+ "' where id = " +id2+ "";
		 
		 String sql3 = "update guoxuetuiguang_picture set number = '" +number+ "' where id = " +id2+ "";
		
		 
		 statement2 = conn.prepareStatement(sql2);
		 statement2.executeUpdate(sql2);
		 
		 statement3 = conn.prepareStatement(sql3);
		 statement3.executeUpdate(sql3);
		 
		 
		 response.sendRedirect("picture.jsp");
	
		 
   }
   catch(Exception ex)
   {
         throw new ServletException(ex.getMessage()); 
   } 
%> 
  
  </body>
</html>
