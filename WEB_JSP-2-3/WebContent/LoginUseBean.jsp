<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.servlet.bean.Login" %>
<%@ page import="com.servlet.bean.LoginDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!--<jsp:useBean id="login" class="com.servlet.bean.Login" scope="session"/>
<jsp:setProperty property="username" name="login" param="username"/>
<jsp:setProperty property="password" name="login" param="password"/>-->
  
<%
	Login log = new Login();
	log.setUsername(request.getParameter("username"));
	log.setPassword(request.getParameter("password"));
	LoginDAO logDao = new LoginDAO();
	if(logDao.validate(log))
	{
		request.getRequestDispatcher("Welcome.jsp").forward(request, response);
	}
	else
	{
		request.getRequestDispatcher("Failure.jsp").forward(request, response);
	}
%>
</body>
</html>