<%@ page import = "java.util.*" %>
<%@ page import = "simple.*" %>
<%

RegTo record = new RegTo();
record.setV_number(request.getParameter("V_NUMBER"));
record.setMail_id(request.getParameter("MAIL_ID"));
record.setMobile(request.getParameter("MOBILE"));

RegDAO dbdemo = new RegDAO();
dbdemo.insertCustomer(record);


response.sendRedirect("getCust.jsp");
%>	
Done
