<%@page import="java.sql.ResultSet"%>
<%@page import="comon.Connector"%>
<%@page import="java.sql.Statement"%>
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
		Connection con = Connector.getConnection();
	Statement stmt = con.createStatement();
	String sql = "SELECT * FROM user";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<a href="/web/user/user-insert.jsp"><button>회원정보입력</button></a>
	<table border="1">
		<tr>
			<th><input type="checkbox" name="all"></th>
			<th>num</th>
			<th>name</th>
			<th>id</th>
		<tr>
			<%
				while (rs.next()) {
			%>
		
		<tr>
			<td><input type="checkbox" name="ch" value="<%=rs.getInt("num")%>"></td>
			<td><%=rs.getInt("num")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("id")%></td>

		</tr>


		<%
			}
		%>
	</table>

</body>
</html>