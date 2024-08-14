<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://code.jquery.com/jquery-3.3.1.js">
    
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <title>WATCHMAN</title>
  

</head>
<body>




<%
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
Statement st = con.createStatement();
String wname=request.getParameter("wname");
String wpnumber=request.getParameter("wpnumber");
String wmail=request.getParameter("wmail");
String wpwd=request.getParameter("wpwd");
String wadress=request.getParameter("wadress");


String sql="update wdata set w_name=?,ph_no=?,w_password=?,address=? where w_mail='"+wmail+"'";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,wname);
ps.setString(2, wpnumber);
ps.setString(3, wpwd);
ps.setString(4, wadress);

int i = ps.executeUpdate();
if(i==1)
{
    response.sendRedirect("wdata.jsp");
}
else{%>
	<script>alert("Updation has not completed.Please try again!!");
	window.location="wupdate.jsp";</script>
<%}

} catch (SQLException ex) {
	response.sendRedirect("index.jsp");
} 

%>

</body>
</html>