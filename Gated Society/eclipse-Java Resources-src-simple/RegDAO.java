package simple;
import java.sql.*;


import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;


public class RegDAO {

	 	
	 	public Connection getConn() throws Exception
	 	{
	 		Class.forName("com.mysql.jdbc.Driver");
	 		Connection con = DriverManager.getConnection(
	 				"jdbc:mysql://localhost:3306/wwcd",
	 				"root",
	 				"Chinnu");
	 		return con;
	 	}

	 	public RegTo getCustomer(String id) throws Exception
	 	{
	 		Connection con = getConn();
	 		String inputQuery = "SELECT * FROM customer_reg WHERE v_number = ?";
	 		PreparedStatement ps = con.prepareStatement(inputQuery);
	 		ps.setString(1, id);
	 		ResultSet rs = ps.executeQuery();

	 		if(rs.next()) 
	 		{
	 			RegTo cust = new RegTo();
	 			cust.setV_number((rs.getString("V_NUMBER")));
	 			cust.setMail_id(rs.getString("MAIL_ID"));
	 			cust.setMobile((rs.getString("MOBILE")));

	 			ps.close();
	 			con.close();
	 			return cust;
	 		}
	 		
	 		ps.close();
	 		con.close();
	 		return null;
	 	}
	 	
	 	public ArrayList getCustomers(String sql) throws Exception
	 	{
	 		Connection con = getConn();
	 		PreparedStatement ps = con.prepareStatement(sql);
	 		ResultSet rs = ps.executeQuery();
	 		ArrayList al = new ArrayList();
	 		
	 		while(rs.next())
	 		{
	 			RegTo cust = new RegTo();
	 			
	 			cust.setV_number(rs.getString("V_NUMBER"));
	 			cust.setMail_id(rs.getString("MAIL_ID"));
	 			cust.setMobile(rs.getString("MOBILE"));

	 			al.add(cust);
	 			
	 		}
	 		
	 		ps.close();
	 		con.close();
	 		
	 		return al;
	 	}
	 	
	
	 	
	 	public void deleteCustomer(RegTo cust) throws Exception
	 	{
	 		
	 		Connection con = getConn();
	 		
	 		String deleteStatement = "delete from customer_reg where v_number=?";
	 		   
	 		   	    
	 		PreparedStatement ps = con.prepareStatement(deleteStatement);
	 			
	 		ps.setString(1, cust.getV_number());
	 			
	 		ps.execute();
	 		
	 		ps.close();
	 		con.close();
	 		
	 	}

	 	
	 	
	 	
	 	public void insertCustomer(RegTo cust) throws Exception
	 	{
	 		Connection con = getConn();
	 		
	 		String query = "insert into customer_reg"
	 				+"(v_number,mail_id,mobile)"
	 				+"values(?,?,?)";
	 				
	 		PreparedStatement ps = con.prepareStatement(query);
	 		
	 		ps.setString(1, cust.getV_number());
	 		ps.setString(2, cust.getMail_id());
	 		ps.setString(3, cust.getMobile());
	 		
	 		 ps.execute();
	 		
	 		ps.close();
	 		con.close();
	 			
	 		
	 	}
	 	public static void main(String[] args) throws Exception,IOException
	 	{
	 		RegDAO dao = new RegDAO();
	 		if(dao.getConn()!=null)
	 			{
	 				System.out.println("Connection Created");
	 			}
	 		
	 		ArrayList al = dao.getCustomers("select * from customer_reg");
	 		
	 	}
	 	

	 }


