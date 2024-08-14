<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="simple.*"%>

<!DOCTYPE html>
<html>
<% 
RegDAO db=new RegDAO();
ArrayList result = db.getCustomers("select * from customer_reg");
%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://code.jquery.com/jquery-3.3.1.js">
    
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <title>CUSTOMER</title>
  
  <script language="javascript">
	function deleteRecord(recid)
	{
		if (!confirm('Are you sure you want to delete?')) return;
		document.DELFORM.V_NUMBER.value=recid;
		document.DELFORM.submit();
	}
	</script>
	
	
</head>
<body>
<h1 style="text-align:center;">CUSTOMER DATA </h1><br>


<FORM NAME="INSFORM" METHOD="POST" ACTION="Custreg.jsp" style="text-align:center;">
<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-plus"></i></button>
</FORM>


<FORM NAME="DELFORM" METHOD="POST" ACTION="Custdel2.jsp">
<INPUT TYPE="HIDDEN" NAME="V_NUMBER" VALUE="" />
</FORM>


<div class="container">

<table id="example" class="display" style="width:100%">
<thead>
	<tr>
		<th>VEHICLE NUMBER</th>
		<th>MAIL ID</th>
		<th>MOBILE</th>
	</tr>
</thead>
	<%
	for(int i=0;i<result.size();i++)
	{
		RegTo cr= (RegTo)result.get(i);
	%>
	
	<tr>
		<td><%=cr.getV_number() %></td>
		<td><%=cr.getMail_id() %></td>
		<td><%=cr.getMobile() %></td>
		<td><button class="btn btn-default" onClick="javascript:deleteRecord('<%= cr.getV_number() %>')" type="submit"><i class="glyphicon glyphicon-trash"></i></button></td>
		</tr>
    <%
	}
    %>
	
</table>
</div>


</body>
</html>