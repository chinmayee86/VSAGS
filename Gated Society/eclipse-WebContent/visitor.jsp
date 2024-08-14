<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
String s=(String)session.getAttribute("wmail");
if(s!=null)
{

String time1=request.getParameter("time1");
String vno=request.getParameter("vno");
%>
<form method="post" action="visitordb.jsp">

<div class="form-group"><BR><BR>
<label for="text">

Visitor entering time<br>

<input type="text" class="form-control" name="time1" value="<%=time1%>" readonly><br>


Visitor car number<br>

<input type="text" class="form-control" name="vno" value="<%=vno%>" readonly><br>

Visitor phone number<br> 
<input type="text" class="form-control" name="vpnumber" maxlength="10" pattern="[6789]{1}[0-9]{9}" title="enter valid 10 digit number" required ><br>

Apartment no/Block no :<br> 
<input type="text" class="form-control" name="bno"><br>

   

<button type="submit" value="submit"> submit</button>

<%}

else{
	response.sendRedirect("index.jsp");
}%>
</label>
</form>
</div>


</body>
</html>