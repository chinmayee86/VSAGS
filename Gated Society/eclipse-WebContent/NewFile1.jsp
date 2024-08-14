<!DOCTYPE html>
<html>

<style>
#frame1
{
background-color:floralwhite;
}
#frame2
{
background-color:snow;
}
#frame3
{
background-color:snow;
}
</style>
<head>

<script>
history.pushState(null, null, document.URL);
window.addEventListener('popstate', function () {
    history.pushState(null, null, document.URL);
});
</script>
<%
String s=(String)session.getAttribute("admail");
if(s!=null)
{
	
%>
<frameset rows="15%,75%">
	<frame id="frame1" src="title.jsp" ">
	
	<frameset cols="15%,75%">
		<frame id="frame2" src="ad_data.jsp">	
		<frame src="content.jsp" id="frame3" name="display">
	</frameset>
</frameset>
<%
}
else
{
	response.sendRedirect("index.jsp");
}%>
</head>
</html>
