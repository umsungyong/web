<%@page import="java.sql.ResultSet"%>
<%@page import="comon.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String num = request.getParameter("num");
Connection con = Connector.getConnection();
String sql = "select * from user where num=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1,Integer.parseInt(num));
ResultSet rs = ps.executeQuery();
if(rs.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/web/user/user-update-ok.jsp">
id : <input type="text" name="id" value="<%=rs.getString("id")%>">
<br>
이름 : <input type="text" name="name" value="<%=rs.getString("name")%>">
<br>
<input type="hidden" name="num" value="<%=rs.getString("num")%>">
<button>수정</button>
</form>
</body>
</body>
</html>
<% 
}else{
%>
<script>
 location.back();
</script>



<% 
}
%>