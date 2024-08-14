<%@ page import = "java.util.*" %>
<%@ page import = "simple.*" %>

<%

RegTo record = new RegTo();

record.setV_number(request.getParameter("V_NUMBER"));

RegDAO dao = new RegDAO();

dao.deleteCustomer(record);

response.sendRedirect("getCust.jsp");

%>

<BR>DONE!