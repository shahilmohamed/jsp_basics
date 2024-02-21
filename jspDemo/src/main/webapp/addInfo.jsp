<%@page import="java.sql.SQLIntegrityConstraintViolationException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String brand = request.getParameter("brand");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Product", "root", "root");
	PreparedStatement ps = con.prepareStatement("insert into product (id, brand, category, price) values(?,?,?,?)");
	ps.setInt(1, Integer.parseInt(id));
	ps.setString(2, brand);
	ps.setString(3, category);
	ps.setInt(4, Integer.parseInt(price));
	ps.executeUpdate();
	out.println("<h1>Data entered successfully</h1>");
	RequestDispatcher rd = request.getRequestDispatcher("Fetch.jsp");
	rd.include(request, response);
	%>
</body>
</html>