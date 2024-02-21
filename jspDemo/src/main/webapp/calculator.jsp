<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="calculate.jsp" align="center">
Enter number 1:<input type="number" name="num1"><br>
Enter number 2:<input type="number" name="num2"><br>

<input type="radio" name="operation" value="addition">Addition<br>
<input type="radio" name="operation" value="subtraction">Subtraction<br>
<input type="radio" name="operation" value="multiplication">Multiplication<br>
<input type="radio" name="operation" value="division">Division<br>

<input type="submit">
</form>
</body>
</html>