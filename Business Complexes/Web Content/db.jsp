<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%
		Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/business_complexes","root","password");
			    Statement st= con.createStatement();
			    ResultSet cr;

			    cr = st.executeQuery("select space_no from alloc_reg where v_no='' or v_no is NULL");
			    
				
				
				while(cr.next())
				{
				    String sno=cr.getString(1);
				    String sql1="select * from customer_reg";
				    ResultSet rs = st.executeQuery(sql1);
				    while(rs.next())
				    {
				    String v_no = rs.getString(1);
					String sql="update alloc_reg set v_no=? where space_no=?";
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setString(1,v_no);
					ps.setString(2,sno);
					int i=ps.executeUpdate();
					if(i==1){
				    out.print(sno);}
					String sql2="delete from customer_reg where v_number=?";
				    PreparedStatement ps1 = con.prepareStatement(sql2);
					ps1.setString(1,v_no);
					ps1.execute();
		
				 
				    }
				    
				    break;
				}
				 %>
				 

</body>
</html>