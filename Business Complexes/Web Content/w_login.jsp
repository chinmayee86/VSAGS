<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
	<style type="text/css">

body
{
background-image: url("z12.jpg ");
background-repeat:no-repeat;
background-size:1540px 750px;
}

.loginbox
{

	background:dodgerblue;
	color:white;
	top:15%;
	left:65%;
	position:absolute;
	padding:70px 50px;
	border-radius:20px;
}
h1
{
	margin:0;
	padding:0 0 20px;
	text-align:center;
}
.loginbox p
{
	margin:0;
	padding:0;
	font-weight:bold;


}
.loginbox input
{
	width:100%;
	margin-bottom:10px;
}
.loginbox input[type="text"],input[type="password"],input[type="email"]
{
	border:white;
	border-bottom:1px solid white;
	background:transparent;
	outline:white;
	height:40px;
	color:white;
	font-size:16px;
}
.loginbox input[type="submit"]
{
	border:none;
	outline:none;
	background:white;
	height:40px;
	color:#000000;
	font-size:16px;	
	border-radius:20px;
}
::placeholder 
{  
    color: black; 
}

</style>
</head>
<body>
<marquee behavior="alternate" direction="left">
<font color="black"><h1>WELCOME TO ABC APARTMENTS</h1></font></marquee>
<center>

<form method="post" action="w_logindb.jsp" autocomplete="off">
<div class="loginbox">
	<h1>Watchman Login</h1>
<table >

	<tr><td><input type="email" name="wmail"style="padding: 0px 20px;" placeholder="Enter mail address..." required></td></tr><br>



	<tr><td><input type="password" name="wpwd"style="padding: 0px 20px;" placeholder="Enter password.."  required></td></tr>
	<tr><td><input type="submit" value="submit"></td></tr>


</table>
</div>
</form>
</body>
</html>