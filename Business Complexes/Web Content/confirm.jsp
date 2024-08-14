<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<script>
	if(confirm('Do you want to allocate your slot'))
	{
		window.location="db.jsp";
	}
</script>
</body>
</html>