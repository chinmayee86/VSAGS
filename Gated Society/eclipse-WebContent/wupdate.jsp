<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.sql.*" %>



<html>
<head>
<title>UPDATE WATCHMAN DATA</title>


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
    String a=request.getParameter("wmail");
    record = st.executeQuery("select * from wdata where w_mail='"+a+"'");

    if(record.next())
    {


%>

<center><H3>UPDATE WATCHMAN DATA</H3></center>

<form  method="post" action="wupdatedb.jsp">

<div class="form-group">
<center>
<label for="text">name<input type="text" class="form-control" id="text" name="wname" value="<%= record.getString(1)%>"/>
<br>
<label for="text" >phone number<input type="text" class="form-control" id="text" name="wpnumber" value="<%= record.getString(2)%>">
<br>
<label for="text">mail<input type="text" class="form-control" id="text" name="wmail" value="<%= record.getString(3) %>" readonly>
<br>
<label for="text">password<input type="text" class="form-control" id="text" name="wpwd" value="<%= record.getString(4) %>" />
<br>
<label >address<input type="text" class="form-control" id="text" name="wadress" value="<%= record.getString(5)%>" >
<br>

<center><button type="submit" class="btn btn-default">Submit</button></center>
 
</center>
</div>
 </form>

<%}%>
</BODY>
</html> 