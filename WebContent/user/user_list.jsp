<%@page import="java.sql.ResultSet"%>
<%@page import="comon.Connecter"%>
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
	Connection con = Connecter.getConnection();
	Statement stmt = con.createStatement();
	String sql = "SELECT * FROM user";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<a href="/web/user/"></a><button>회원정보입력</button>
	<table border="1">
		<tr>
			<th>num</th>
			<th>name</th>
			<th>id</th>
		<tr>
			<%
while(rs.next()){
%>
		
		<tr>
			<td> <%=rs.getInt("num")%></td>
			<td> <%=rs.getString("name")%></td>
			<td> <%=rs.getString("id")%></td>
			
		</tr>


		<%  
		} 
		%>
	</table>

</body>
</html>