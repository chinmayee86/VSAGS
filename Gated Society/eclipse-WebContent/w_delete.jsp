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
String id=request.getParameter("wmail");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd", "root", "Chinnu");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM wdata WHERE w_mail='"+id+"'");
if(i>0)
	{
	out.print("hellooo");
response.sendRedirect("wdata.jsp");
	}


%>