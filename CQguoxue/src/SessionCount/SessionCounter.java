package SessionCount;

import javax.servlet.*;
import javax.servlet.http.*;
import java.beans.Statement;
import com.mysql.jdbc.Driver;
import java.sql.*;
import java.io.*;
import java.lang.*;
import java.util.*;


public class SessionCounter implements HttpSessionListener
{
	private static int activeSessions = 0;
	String time = "";
	
	String dbUrl = "jdbc:mysql://127.0.0.1:3309/chongqingguoxue";
	String dbUsr = "root";
	String dbPwd = "475356336";
//Connection conn = null; 	    
	//String sql = "select * from web_detail order by id desc";
	////PreparedStatement statement = null;
	//ResultSet rs = null;
	
	
	 int year,month,day; 
	 
	
	
	public void sessionCreated(HttpSessionEvent se)
	{
		activeSessions++;
		
		 Calendar c = Calendar.getInstance(); 
		 year = c.get(Calendar.YEAR); //Äê 
		 month = c.get(Calendar.MONTH) + 1; //ÔÂ 
		 day = c.get(Calendar.DAY_OF_MONTH); //ÈÕ 
		 
		 time += year;
		 time += "-";
		 time += month;
		 time += "-";
		 time += day; 
		 
		 String sql = "select * from web_detail where time = '" +time+ "'";
		 Connection conn = null; 
		 PreparedStatement statement = null;
		 ResultSet rs = null;
		 int day_visits = 0;
		 int total_visits = 0;
			
		 try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 	    
		 	    statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        if(rs.next())
		        {
		        	day_visits = rs.getInt("day_visits");
		        	total_visits = rs.getInt("total_visits");
		        	
		        	day_visits++;
		        	total_visits++;
		        	
		            String sql2 = "update web_detail set day_visits = " +day_visits+ " where time = '" +time+ "'";
		            String sql3 = "update web_detail set total_visits = " +total_visits+ " where time = '" +time+ "'";		   		 	 
		   		 	PreparedStatement statement2 = null;
		   		 	PreparedStatement statement3 = null;
		   		 	
		   		 	statement2 = conn.prepareStatement(sql2);
			 	    statement2.executeUpdate(sql2);
			 	    
			 	    statement3 = conn.prepareStatement(sql3);
			 	    statement3.executeUpdate(sql3);  
			 	    time = "";
		        }
		        else
		        {
		        	String sql4 = "select * from web_detail order by id desc";
		        	PreparedStatement statement4 = null;
		        	ResultSet rs2 = null;
		        	int id = 0;
		        	int total_visits2 = 0;
		        	
		        	statement4 = conn.prepareStatement(sql4);
			        rs2 = statement4.executeQuery(sql4);
			        
			        while(rs2.next())
			        {
			        	id = rs2.getInt("id");
			        	total_visits2 = rs2.getInt("total_visits");
			        	break;
			        }
			        
			        id++;
			        total_visits2++;
			        
			        String sql5 = "insert into web_detail (id,total_visits,time,day_visits) values (" +id+ "," +total_visits2+ ",'" +time+ "',1)";
			        PreparedStatement statement5 = null;
			        
			        statement5 = conn.prepareStatement(sql5);
			 	    statement5.executeUpdate(sql5); 
			 	    time = "";
		        }		        				            		        

  	     }catch(Exception e)
  	     {
  	     		e.printStackTrace();
  	     }
		 	
		 
	}
	
	public void sessionDestroyed(HttpSessionEvent se)
	{
		if(activeSessions > 0)
		{
			activeSessions--;			
		}
		
	}
	
	public static int getActiveSessions()
	{
		
		 return activeSessions;
	}
}
