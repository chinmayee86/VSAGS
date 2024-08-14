<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body >
<% String s=(String)session.getAttribute("admail");
if(s!=null)
{
%>
<center>
<marquee behavior="alternate"><h1>WELCOME TO ABC APARTMENTS</marquee></h1>
<p>A brand new variety of villas located neaar airport with 2BHK and 3BHK flats.Also with a great interior work.
tcjgvnfjg chgvvkbkeurb vaubrsvuabu rjbbwgbdhaw 4uejfbkusbjv aiheujubfki sbekiu
ekrhbkvhbwaseky ioijdvlsuhvksbj uahuah wlrughlwirh UWHRGOUHWUH brgusedb  kiuebeuhble t
 ergahliurhaurhg luga urhgausbfaelnjg aeyrugnvjshrrgina hrugbali ehrnlajrn</p>
</center>
<%}
else
{
	response.sendRedirect("index.jsp");
}%>
</body>
</html>