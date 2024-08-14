<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
</head>
<body>




<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
Statement st = con.createStatement();
String uname=request.getParameter("uname");
String umail=request.getParameter("umail");
String upnumber=request.getParameter("upnumber");
String car_no=request.getParameter("car_no");
String apt_no=request.getParameter("apt_no");
String upwd=request.getParameter("upwd");
session.setAttribute("umail", umail);


String sql="Update udata set uname=?,mobile=?,password=?,car_no=?,ap_no=? where umail='"+umail+"'";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,uname);
ps.setString(2, upnumber);
ps.setString(3, upwd);
ps.setString(4, car_no);
ps.setString(5, apt_no);

int i = ps.executeUpdate();
if(i==1)
{
    response.sendRedirect("udata.jsp");
}

%>

</body>
</html>