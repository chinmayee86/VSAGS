<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.sql.*" %>



<html>
<head>
<title>UPDATE USER</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<BODY>
<% 

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
    Statement st= con.createStatement();
    ResultSet record;
    String umail=request.getParameter("umail");
    session.setAttribute("umail", umail);
    record = st.executeQuery("select * from udata where umail='"+umail+"'");
    if(record.next())
    {


%>
<center><H3>UPDATE A USER</H3></center>
<div class="form-group">
<form  method="post" action="uupdatedb.jsp">


<center>
<label for="text" >Name<input type="text" class="form-control" id="text" name="uname" value="<%= record.getString(1)%>"  >
<br>
<label for="text">Mail<input type="text" class="form-control" id="text" name="umail" value="<%= record.getString(2)%>" readonly ><br>
<label for="text">Mobile<input type="text" class="form-control" id="text" name="upnumber" value="<%= record.getString(3) %>">
<br>
<label for="text">Car Number<input type="text" class="form-control" id="text" name="car_no" value="<%= record.getString(4) %>" >
<br>
<label for="text">Apartment No<input type="text" class="form-control" id="text" name="apt_no" value="<%= record.getString(6) %>" >
<br>
<label for="text">Password<input type="text" class="form-control" id="text" name="upwd" value="<%= record.getString(5) %>" />
<br>


<center><button type="submit" class="btn btn-default">Submit</button></center>
  </form>
</center>
</div>

<%}%>
</BODY>
</html> 