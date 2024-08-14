

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*,java.io.*,java.sql.*"%>


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
  <title>CUSTOMER</title>
  

</head>
<body>
<%
String s=(String)session.getAttribute("umail");
if(s!=null)
{%>

<h1 style="text-align:center;">USER DATA </h1><br>



<br>




<div class="container">

<table id="example" class="table table-striped" style="width:100%">
<thead>
	<tr>
		<td colpan=7><a href="u_logout.jsp" >Logout</a>
	</tr>
	<tr>
		<th>Name</th>
		<th>Mail</th>
		<th>Phone number</th>
		<th>Car Number</th>
		<th>Apartment Number</th>
		<th>Password</th>
		<th></th>
		

	</tr>
</thead>
	<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
    Statement st= con.createStatement();
    ResultSet cr;
    
    String umail=(String)session.getAttribute("umail");

    cr = st.executeQuery("select * from udata where umail='"+umail+"'");
	
	
	if(cr.next())
	{%>
	
	<tr><td><%=cr.getString(1) %></td>
		<td><%=cr.getString(2) %></td>
		<td><%=cr.getString(3) %></td>
		<td><%=cr.getString(4) %></td>
		<td><%=cr.getString(6)%></td>
		<td><%=cr.getString(5)%></td>

		</tr>

	<% } 
	
	

	%>
</table>
</div>

<br>
<br>


<div class="container">

<table id="example" class="table table-striped" style="width:100%">
<thead>
	<tr>
		
		<th>Sno</th>
		<th>In Time</th>
		<th>Vehile Number</th>
		<th>Out Time</th>


	</tr>
</thead>
 <%

    ResultSet cr1;
    
    String umail1=(String)session.getAttribute("umail");
   String v_no= cr.getString(4);

    cr = st.executeQuery("select * from u_vehicle where v_number='"+v_no+"' order by s_no desc");
	int a=1;
	
	while(cr.next())
	{%>
	
	<tr>
		<td><%=a %></td>
		<td><%=cr.getString(2) %></td>
		<td><%=cr.getString(3) %></td>
		<td><%=cr.getString(4) %></td>
	<% a=a+1; %>
	</tr>

	<% } 
	%>  
</table>
</div>

<br>
<br>

<% }
else
{
	response.sendRedirect("index.jsp");
}%>

</body>
</html>

