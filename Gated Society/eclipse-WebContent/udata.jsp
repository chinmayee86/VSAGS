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
   
  <title>USER</title>
 
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
<h1 style="text-align:center;">USER DATA </h1><br>



<br>

<FORM NAME="ADDUSERFORM" METHOD="POST" ACTION="u_reg.jsp" style="text-align:center;">
<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-plus"></i></button>
</FORM>

<table id="example" class="display">
<thead>
	<tr>
		<th>Name</th>
		<th>Mail</th>
		<th>Phone number</th>
		<th>Car Number</th>
		<th>Apartment No</th>
		<th>Password</th>
<th><h2>&nbsp;</h2></th>

<th><h2>&nbsp;</h2></th>

	</tr>
</thead>

<tbody>
	<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
    Statement st= con.createStatement();
    ResultSet cr;
    
    cr = st.executeQuery("select * from udata");
	
	
	while(cr.next())
	{%>
	
	<tr><td><%=cr.getString(1) %></td>
		<td><%=cr.getString(2) %></td>
		<td><%=cr.getString(3) %></td>
		<td><%=cr.getString(4)%></td>
		<td><%=cr.getString(6)%></td>
		<td><%=cr.getString(5)%></td>

		<td><form method="post" action="udelete.jsp"><button class="btn btn-default" value="<%=cr.getString("umail")%>" type="submit" name="umail"><i class="glyphicon glyphicon-trash"></i></button></form></td>
		<td><form method="post" action="uupdate.jsp"><button class="btn btn-default" value="<%=cr.getString("umail")%>" type="submit" name="umail"><i class="glyphicon glyphicon-edit"></i></button></form></td>
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