<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Info</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String brand = request.getParameter("brand");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Product", "root", "root");
	PreparedStatement ps = con.prepareStatement("update product set brand=?, category=?, price=? where id = ?");
	ps.setString(1, brand);
	ps.setString(2, category);
	ps.setInt(3, Integer.parseInt(price));
	ps.setInt(4, Integer.parseInt(id));
	ps.executeUpdate();
	PrintWriter pout = response.getWriter();
	pout.println("<h1>Updated Successfully</h1>");
	RequestDispatcher rd = request.getRequestDispatcher("Fetch.jsp");
	rd.include(request, response);
	%>
</body>
</html>