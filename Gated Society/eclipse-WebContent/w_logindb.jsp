<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	
String wmail=request.getParameter("wmail");
String wpwd=request.getParameter("wpwd");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
Statement st = con.createStatement();


String sql="select * from wdata where w_mail='"+wmail+"' and w_password='"+wpwd+"'";
session.setAttribute("wmail",wmail);

	
ResultSet   rs = st.executeQuery(sql);
if(rs.next())
{
	response.sendRedirect("w_logindata.jsp");
}
else
{
	response.sendRedirect("w_login1.jsp");
}

}
catch(Exception e)
{
	response.sendRedirect("index.jsp");
}



%>

</body>
</html>