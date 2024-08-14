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
<body >
<% String s=(String)session.getAttribute("admail");
if(s!=null)
{
%>
<br><Br>

  <a href="udata.jsp" target="display"><h3>User data</h3></a><br><br>

  <a href="wdata.jsp" target="display"><h3>Watchman Data</h3> </a><br><Br>
  
  <a href="visitor1.jsp" target="display"><h3>Visitor data</h3></a><br><br>
</div>

<%}
else
{
	response.sendRedirect("index.jsp");
}%>
   
</body>
</html> 
