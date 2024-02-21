<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update page</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Product", "root", "root");
	PreparedStatement ps = con.prepareStatement("select * from product where id =?");
	ps.setInt(1, Integer.parseInt(id));
	ResultSet rs = ps.executeQuery();
	rs.next();
	%>
	<form action="updateinfo.jsp">
		Id:<input type="number" name="id" value="<%=rs.getInt(1) %>" readonly="true">
		Brand:<input type="text"name="brand" value="<%=rs.getString(2)%>">
		Category:<input type="text" name="category" value="<%=rs.getString(3) %>">
		Price:<input type="number" name="price" value="<%=rs.getInt(4) %>">
		<input type="submit" value="update">
	</form>
</body>
</html>