<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%! int count = 0; 
public void increment() {
	count++;
}
%>
Welcome to JSP.....<br>
The Date on server is <%= new java.util.Date() %>
The count is <%= count %> <br>
<% increment(); %>

<%
out.println(request.getParameter("firstNumber"));
out.println(request.getParameter("secondNumber"));
out.println(request.getParameter("operation"));
int numberOne = Integer.parseInt(request.getParameter("firstNumber"));
int numberTwo = Integer.parseInt(request.getParameter("secondNumber"));
//out.println(numberOne);
//out.println(numberTwo);
switch(request.getParameter("operation"))
{
	case "addition": 
		out.println("The addition of two numbers is :"+ (numberOne + numberTwo));
		break;
	case "subtraction": 
		out.println("The subtraction of two numbers is :"+ (numberOne - numberTwo));
		break;
	case "multiplication": 
		out.println("The multiplication of two numbers is :"+ (numberOne * numberTwo));
		break;
	case "division": 
		out.println("The division of two numbers is :"+ (numberOne / numberTwo));
		break;
}
%>
</body>
</html>