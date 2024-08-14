<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*,java.io.*,java.sql.*"%>


<!DOCTYPE html>
<html>

<head><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
   
  <title>VISITOR</title>
 
<script>


$(document).ready(function() {
   $('#example').DataTable();
} );
</script>
</head>
<body>
<%String s=(String)session.getAttribute("admail");
String u=(String)session.getAttribute("umail");
if(s!=null || u!=null)
{
	
%>
<h1 style="text-align:center;">VISITOR DATA </h1><br>

<br>

<table id="example" class="display">
<thead>
	<tr>
		<th>Date</th>
		<th>Vehicle number</th>
		<th>Phone num</th>
		<th>Apartment visited</th>

	</tr>
</thead>
<tbody>
	<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
    Statement st= con.createStatement();
    ResultSet cr;
    
    cr = st.executeQuery("select * from visitor");
	
	
	while(cr.next())
	{%>
	
	<tr><td><%=cr.getString(1) %></td>
		<td><%=cr.getString(2) %></td>
		<td><%=cr.getString(3) %></td>
		<td><%=cr.getString(4)%></td>
</tr>

	<% }
	
}
else
{
	response.sendRedirect("index.jsp");
}
	%>
</table>
</div>


</body>
</html>