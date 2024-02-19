<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
</head>
<body>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Product", "root", "root");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from product");
	%>
	<table cellpadding="10px" border="1px">
		<th>id</th>
		<th>brand</th>
		<th>category</th>
		<th>price</th>
		<th>delete</th>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getInt(4)%></td>
			<td><a href="delete.jsp?id=<%=rs.getInt(1)%>">delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>