<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<%
try
{
	
String umail=request.getParameter("umail");
String upwd=request.getParameter("upwd");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
Statement st = con.createStatement();


String sql="select * from udata where umail='"+umail+"' and password='"+upwd+"'";
session.setAttribute("umail",umail);
ResultSet   rs = st.executeQuery(sql);
if(rs.next())
{
	response.sendRedirect("u_logindata.jsp");
}
else
{
	response.sendRedirect("u_login1.jsp");
}

}
catch(Exception e)
{
	response.sendRedirect("index.jsp");
}



%>

</body>
</html>