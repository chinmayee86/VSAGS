<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>




<%
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
Statement st = con.createStatement();
String wname=request.getParameter("wname");
String wmail=request.getParameter("wmail");
String wpnumber=request.getParameter("wpnumber");
String wpwd=request.getParameter("wpwd");
String address=request.getParameter("address");


PreparedStatement ps=con.prepareStatement("insert into wdata values(?,?,?,?,?)");
    ps.setString(1,wname);
    ps.setString(2,wpnumber);
    ps.setString(3,wmail);
    ps.setString(4,wpwd);
    ps.setString(5,address);
int r=ps.executeUpdate();
if(r==1)
{
    response.sendRedirect("wdata.jsp");
}




} catch (SQLException ex) {
	response.sendRedirect("index.jsp");
} 

%>

</body>
</html>