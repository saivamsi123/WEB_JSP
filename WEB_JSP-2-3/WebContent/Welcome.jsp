<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession sess = request.getSession();
String username = (String) request.getParameter("username");
sess.setAttribute("Username", username);
out.println("Welcome "+ sess.getAttribute("Username"));
%>
</body>
</html>