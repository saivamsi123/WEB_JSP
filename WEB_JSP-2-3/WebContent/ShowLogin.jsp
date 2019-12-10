<%@page import="jdk.internal.org.objectweb.asm.tree.IntInsnNode"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
Connection connection = null; 
Statement st = null;
ResultSet rs = null;
public void jspInit()
{
		
	System.out.println("jspInit.......");
	String dbDriver = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/Allianz?serverTimezone="+ TimeZone.getDefault().getID();
	String dbUsername = "root";
	String dbPassword = "";
	try{ 
	    Class.forName(dbDriver).newInstance(); 
	    connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
	    
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	} 
}
%>
<%
	try{
		if(!connection.isClosed())
	    {
	         System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");
	    }
	    st = connection.createStatement();
	    String sql = "Select * from login";
	    rs = st.executeQuery(sql);
	    while(rs.next())
	    {
	    	System.out.println(rs.getString("username"));
	    	System.out.println(rs.getString("password"));
	    }
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
%>
<%!
public void jspDestory()
{
	System.out.println("jspDestroy.......");
	try{
		rs.close();
	    st.close();
	    connection.close();
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
	
}
%>

</body>
</html>