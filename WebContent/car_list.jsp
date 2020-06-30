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
		String sql = "SELECT * FROM car";
		ResultSet rs = stmt.executeQuery(sql);
	%>
	<a href=""></a><button>회원정보입력</button>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>차명</th>
			<th>제조사</th>
			<th>색상</th>
			<th>베기량</th>
		<tr>
			<%
while(rs.next()){
%>
		
		<tr>
			<td> <%=rs.getInt("num")%></td>
			<td> <%=rs.getString("name")%></td>
			<td> <%=rs.getString("carmaker")%></td>
			<td> <%=rs.getString("color")%></td>
			<td> <%=rs.getInt("cc")%></td>
		</tr>


		<%  
		} 
		%>
	</table>

</body>
</html>