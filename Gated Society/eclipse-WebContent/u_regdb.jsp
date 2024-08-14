<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>




<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wwcd","root","Chinnu");
Statement st = con.createStatement();
String uname=request.getParameter("uname");
String umail=request.getParameter("umail");
String upnumber=request.getParameter("upnumber");
String upwd=request.getParameter("upwd");
String car_no=request.getParameter("car_no");

String apt_no=request.getParameter("apt_no");


PreparedStatement ps=con.prepareStatement("insert into udata values(?,?,?,?,?,?)");
    ps.setString(1,uname);
    ps.setString(2,umail);
    ps.setString(3,upnumber);
    ps.setString(4,car_no);
    ps.setString(5,upwd);

    ps.setString(6,apt_no);
    session.setAttribute("umail",umail);
int r=ps.executeUpdate();
if(r==1)
{
    response.sendRedirect("udata.jsp");
}






%>

</body>
</html>