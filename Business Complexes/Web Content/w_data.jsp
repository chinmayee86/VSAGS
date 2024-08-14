<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
*
{
 box-sizing: border-box ;
 text-decoration:none;
}
a:link
{
 background-color: lavender;
  color: white;
  padding: 10px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  width:"100%";
  }
  a:hover {
  background-color: sandybrown;
}


</style>
</head>
<body>
<% String s=(String)session.getAttribute("wmail");
if(s!=null)
{
%>
<br><Br>

  <a href="customer_reg.jsp" target="display"><h3>Customers(Registered) data</h3></a><br><br>

  <a href="customer.jsp" target="display"><h3>Customers(Not Registered) Data</h3> </a><br><Br>
</div>

<%}
else
{
	response.sendRedirect("w_login.jsp");
}%>
   
</body>
</html> 
