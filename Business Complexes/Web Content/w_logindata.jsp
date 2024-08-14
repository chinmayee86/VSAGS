<!DOCTYPE html>
<html>
<script>
history.pushState(null, null, document.URL);
window.addEventListener('popstate', function () {
    history.pushState(null, null, document.URL);
});
</script>
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
<%
String s=(String)session.getAttribute("wmail");
if(s!=null)
{
	
%>
<frameset rows="15%,75%">
	<frame id="frame1" src="title.jsp" noresize>
	
	<frameset cols="25%,*">
		<frame id="frame2" src="w_data.jsp" noresize>	
		<frame src="content.jsp" id="frame3" name="display">
	</frameset>
</frameset>
<%
}
else
{
	response.sendRedirect("w_login.jsp");
}%>
</html>
