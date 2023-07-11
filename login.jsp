<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid = request.getParameter("userid"); 
String password = request.getParameter("password");

String sql = "select * from users where email = ? and password = ?";

Connection connection = pool.getConnection();

PreparedStatement preparedStatement = connection.prepareStatement(sql);

preparedStatement.setString(1, usrid);
preparedStatement.setString(2, password);

ResultSet result = preparedStatement.executeQuery();

if (result.next()) {
	loggedIn = true;
	
}else{

}


%>
