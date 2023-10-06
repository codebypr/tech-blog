package Tech.Data;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Tech.Entities.Category;
import Tech.Entities.Post;

public class PostData {
	private Connection con;
	
	public PostData(Connection con) {
		this.con=con;
	}
	public ArrayList<Category> getCategory(){
		ArrayList<Category> list=new ArrayList<Category>();
		try {
			String quary="select * from categry";
			Statement st=this.con.createStatement();
			ResultSet rs=st.executeQuery(quary);
			while(rs.next()) {
				int id=rs.getInt("cid");
				String name=rs.getString("name");
				String description=rs.getString("desc");
				Category c=new Category(id, name, description);
				list.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
		public boolean savePost(Post p) {
			boolean f=false;
			try {
				
				String quary="insert into post(title,content,img,catid,userid) values(?,?,?,?,?)";
				PreparedStatement prs=this.con.prepareStatement(quary);
				prs.setString(1, p.getTitle());
				prs.setString(2, p.getContant());
				prs.setString(3, p.getImg());
				prs.setInt(4, p.getCid());
				prs.setInt(5, p.getuserId());
				prs.executeUpdate();
				f=true;
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return f;
		}
			
		public List<Post> getAllPost() {
			List<Post> list=new ArrayList<Post>();
			try {
				
				PreparedStatement prs=con.prepareStatement("select * from post");
				ResultSet rs=prs.executeQuery();
				while(rs.next()) {
					int id=rs.getInt("id");
					String titel=rs.getString("title");
					String content=rs.getString("content");
					String img=rs.getString("img");
					String date=rs.getString("date");
					int catid=rs.getInt("catid");
					int userid=rs.getInt("userid");
					
					Post p=new Post(id, titel, content, img, date, catid, userid);
					list.add(p);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}

			public String getUserName(int id) {
				String uName=null;
				try {
					PreparedStatement pr=con.prepareStatement("Select name from user where id=?");
					pr.setInt(1, id);
					ResultSet rs=  pr.executeQuery();
					if(rs.next()) {
						uName=rs.getString("name");
					}
					
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				return uName;
			}
}
