<%@page import="java.sql.PreparedStatement"%>
<%@page import="comon.Connector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
double num1 =Double.parseDouble(request.getParameter("num1"));
String op = request.getParameter("op");
double num2 =Double.parseDouble(request.getParameter("num2"));

double result =0;
if("+".equals(op)){
	 result = num1 + num2;
}else if("-".equals(op)){ 
	 result = num1 - num2;
}else if("*".equals(op)){
	 result = num1 * num2;
}else if("/".equals(op)){
	 result = num1 / num2;
} 

Connection conn = Connector.getConnection();
String sql="INSERT INTO calc_his(ops,result)";
sql += "VALUES(?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
String ops = num1 + op +num2;
ps.setString(1,ops);
ps.setDouble(2,result);
ps.executeUpdate();
%>