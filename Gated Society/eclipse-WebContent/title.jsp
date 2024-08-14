<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body >
<% String s=(String)session.getAttribute("admail");
if(s!=null)
{
%>
<center>
<h1>ABC APARTMENTS</h1></center>
<button onclick="window.top.location.href='ad_logout.jsp'">Logout</button>
<%}
else
{
	response.sendRedirect("index.jsp");
}%>
</body>
</html>