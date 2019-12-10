<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.io.PrintWriter" %>
<%@page language="java" %>
<%
PrintWriter pw = response.getWriter();
out.println("VAMSI");
pw.println("SAI");
out.println("VAMSI");
pw.println("SAI");
out.println("VAMSI");
pw.println("SAI");
out.println("VAMSI");
pw.println("SAI");


%>
	<center><h1>Using java beans in JSP...</h1></center>
	<jsp:useBean id="testBean" class="com.servlet.bean.TestBean" scope="session" />
    <jsp:setProperty name="testBean" property="message" value="Hi this is JSP....!" />
    <p>Got message.......</p>
    <jsp:getProperty name="testBean" property="message" />
	</center>
</body>
</html>