<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<%
try{
	
String admail=request.getParameter("admail");
String adpwd=request.getParameter("adpwd");
session.setAttribute("admail",admail);
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
Statement st = con.createStatement();


String sql="select * from addata where admail='"+admail+"' and adpwd='"+adpwd+"'";




ResultSet   rs = st.executeQuery(sql);
if(rs.next())
{
	response.sendRedirect("NewFile1.jsp");
}
else
{
	response.sendRedirect("ad_login1.jsp");
}
}
catch(Exception e)
{
	response.sendRedirect("index.jsp");
}




%>

</body>
</html>