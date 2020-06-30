<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sun.jdi.connect.Connector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String[] nums = request.getParameterValues("ch");

Connection conn = Connector.getConnection();
String sqp = "delte from tser where num=?";
PreparedStatement ps = conn.prepareStatement(sql);

for (String num : nums) {
	ps.setInt(1, Integer.parseInt(num));
	ps.executeUpdate();
}
%>