<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<script>
history.pushState(null, null, document.URL);
window.addEventListener('popstate', function () {
    history.pushState(null, null, document.URL);
});
</script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://code.jquery.com/jquery-3.3.1.js">
     
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <title>USER</title>
 

</head>
<body>
<%
String s=(String)session.getAttribute("wmail");
if(s!=null)
{

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
Statement st = con.createStatement();


String sql="select * from visitor_veh";
%>
<center>
<br><br>
<table class="table table-striped" >

	<tr colspan=3 align="left">
		<td ><a href="w_logout.jsp">Logout</a>
	</tr>
	<tr>
		<td>sno</td>
		<td>date and time</td>
		<td>vehicle number</td>


	</tr>
<% 
ResultSet   cr = st.executeQuery(sql);
while(cr.next())
{
	
%>
<form method="post" action="visitor.jsp">
<input type="hidden" name="time1" value="<%=cr.getString(2) %>">
<input type="hidden" name="vno" value="<%=cr.getString(3) %>">

	<tr>
	<td><%=cr.getString(1) %></td>
	<td><label name="time1"><%=cr.getString(2) %></label></td>
	<td><label name="vno"><%=cr.getString(3) %></label></td>
	<td><button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-plus"></i></button></td>
	</tr>
</form>

	<% }
}
else
{
	response.sendRedirect("index.jsp");
}
%>
</table>
</center>





</body>
</html>




