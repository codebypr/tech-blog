package Tech.Data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Tech.Entities.User;

public class User_data {
	private Connection con;
	public User_data(Connection con){
		this.con=con;
	}
	
	public boolean savedata(User user) {
		boolean b=false;
		try {
			String quary="insert into user(name,email,password)  values (?,?,?)";
			PreparedStatement prs= con.prepareStatement(quary);
			prs.setString(1, user.getname());
			prs.setString(2, user.getemail());
			prs.setString(3, user.getpassword());
			prs.executeUpdate();
			b=true;
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		return b;
	}
	
	public User get_userdata(String email, String password) {
		User user=null;
		try {
			String quary="select * from user where email=? and password=?";
			PreparedStatement prs=con.prepareStatement(quary);
			prs.setString(1, email);
			prs.setString(2,password);
			ResultSet rs= prs.executeQuery();
			
			if(rs.next()) {
				 user=new User();
				 user.setid(rs.getInt("id"));
				user.setname(rs.getString("name"));
				user.setemail(rs.getString("email"));
				user.setpassword(rs.getString("password"));
				user.setProfile(rs.getString("profile"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		return user;
	}
	
		public boolean updateUser(User user) {
				boolean b=false;
			String quary="update user set email=?, password=?, profile=? where id=?";
			try {
				PreparedStatement prs=con.prepareStatement(quary);
				prs.setString(1, user.getemail());
				prs.setString(2, user.getpassword());
				prs.setString(3, user.getProfile());
				prs.setInt(4, user.getid());
				prs.executeUpdate();
				b=true;
			}catch(Exception e) {
				e.printStackTrace();
			}
			return b;
		}
}
