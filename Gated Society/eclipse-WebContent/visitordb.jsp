<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
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
  <title>VISITOR</title>
 

</head>
<body>


<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","password");
Statement st = con.createStatement();
String vno=request.getParameter("vno");
String vpnumber=request.getParameter("vpnumber");
String aptno=request.getParameter("aptno");
String out_time="NULL";


PreparedStatement ps=con.prepareStatement("update visitor set phone_num=? , apt_no=? where v_number=?");
	ps.setString(1,vpnumber);
	ps.setString(2,aptno);
    ps.setString(3,vno);
int r=ps.executeUpdate();
if(r==1)
{
	response.sendRedirect("w_logindata.jsp");
}


%>

</body>
</html>