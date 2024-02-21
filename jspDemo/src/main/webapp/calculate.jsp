<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String number1 = request.getParameter("num1");
String number2 = request.getParameter("num2");

String operation = request.getParameter("operation");

if(operation.equals("addition"))
{
	out.println(Integer.parseInt(number1)+Integer.parseInt(number2));
}
else if(operation.equals("subtraction"))
{
	out.println(Integer.parseInt(number1)-Integer.parseInt(number2));
}
else if(operation.equals("multiplication"))
{
	out.println(Integer.parseInt(number1)*Integer.parseInt(number2));
}
else if(operation.equals("division"))
{
	out.println(Integer.parseInt(number1)/Integer.parseInt(number2));
}
%>
</body>
</html>