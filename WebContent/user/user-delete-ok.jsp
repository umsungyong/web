<%@page import="comon.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String[] nums = request.getParameterValues("ch");

Connection conn = Connector.getConnection();
String sql = "delete from user where num=?";
PreparedStatement ps = conn.prepareStatement(sql);

for (String num : nums) {
	ps.setInt(1, Integer.parseInt(num));
	ps.executeUpdate();
}
%> 

<script>	
 location.href="/web/user/user_list.jsp";

</script>