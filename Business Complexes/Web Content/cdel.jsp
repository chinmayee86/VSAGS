<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

</body>
</html>



<%
String id=request.getParameter("v_no");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/business_complexes", "root", "password");
Statement st=conn.createStatement();

int i=st.executeUpdate("DELETE FROM customer WHERE v_no='"+id+"'");
if(i>0)
	{
response.sendRedirect("customer.jsp");
	}


%>