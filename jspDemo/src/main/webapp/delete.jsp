<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Product", "root", "root");
	PreparedStatement ps = con.prepareStatement("delete from product where id = ?");
	ps.setInt(1, Integer.parseInt(id));
	ps.execute();
	RequestDispatcher rd = request.getRequestDispatcher("Fetch.jsp");
	rd.forward(request, response);
	%>
</body>
</html>