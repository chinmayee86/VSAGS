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

	background:black;
	color:#fff;
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
	border:none;
	border-bottom:1px solid #fff;
	background:transparent;
	outline:none;
	height:40px;
	color:white;
	font-size:16px;
}
.loginbox input[type="submit"]
{
	border:none;
	outline:none;
	background:#fb2525;
	height:40px;
	color:#fff;
	font-size:16px;	
	border-radius:20px;
}
a {
  color: white;
}
::placeholder 
{  
    color: orange; 
}

</style>
</head>
<body>
<marquee behavior="scroll" direction="left">
<font color="black"><h1>WELCOME TO ABC APARTMENTS</h1></font></marquee>
<center>

<form method="post" action="u_regdb.jsp" autocomplete="off">
<div class="loginbox">
	<h1>User Register Here</h1>
<table >
	<tr><td><input type="text" name="uname" style="padding: 0px 20px;" placeholder="Enter user name..." required ></td></tr>
	<tr><td><input type="text" name="upnumber" style="padding: 0px 20px;" placeholder="Enter Phone number..." maxlength="10" pattern="[6789]{1}[0-9]{9}" title="enter valid 10 digit number" required ></td></tr>
	<tr><td><input type="email" name="umail"style="padding: 0px 20px;" placeholder="Enter mail address..." required></td></tr><br>
	<tr><td><font color="red">mail already exists</font></td></tr>


	<tr><td><input type="password" name="upwd"style="padding: 0px 20px;" placeholder="Enter password.." minlength="8" maxlength="16" required title="length is 8 to 16 characters"></td></tr>
	<tr><td><input type="submit" value="submit"></td></tr>
	

</table>
</div>
</form>
</body>
</html>