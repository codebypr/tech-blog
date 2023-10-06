package Tech.Helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvide {
	 private static Connection con;
	 public static Connection getconnection() {
			try {
				if(con==null) {
				 Class.forName("com.mysql.jdbc.Driver");       
		            con=DriverManager.getConnection("jdbc:mysql://localhost/tech","root","1234");
				}
		       }catch(Exception e) {
				 e.printStackTrace();
			 }
		 
		 return con;
	 }
		}
			 
