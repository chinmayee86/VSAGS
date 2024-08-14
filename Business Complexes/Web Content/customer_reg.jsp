<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*,java.io.*,java.sql.*"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://code.jquery.com/jquery-3.3.1.js">
     
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <title>CUSTOMER</title>
 

</head>
<body>
<%
String u=(String)session.getAttribute("wmail");
if(u!=null)
{
	
%>
<h1 style="text-align:center;">CUSTOMER(REGISTERED) DATA </h1><br>



<br>

<div class="container">

<table id="example" class="table table-striped">
<thead>
	<tr>
	<!-- <td colspan="8" align="right">
		<form action="usersearch.jsp" method="post">
		 <div class="container">
    	<label for="text">
   		<input type="text" placeholder="User name" name="name" ></label></div></form>
   		</td> -->
	</tr>
	<tr>
	<th>Space Number</th>
		<th>Vehicle Number</th>
		<th></th>
		<th></th>

	</tr>
</thead>
	<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/business_complexes","root","password");
    Statement st= con.createStatement();
    ResultSet cr;
    
    cr = st.executeQuery("select * from alloc_reg where v_no='' or v_no is not null");
	
	
	while(cr.next())
	{%>
	
	<tr><td><%=cr.getString(1) %></td>
	<td><%=cr.getString(2) %></td>

		</tr>

	<% }

}
else
{
	response.sendRedirect("w_login.jsp");
}
	%>
</table>
</div>


</body>
</html>