package Tech.Entities;

public class User {
	private int id;
	private String name;
	private String email;
	private String password;
	private String profile;
	
	public User(){
		
	}
	public User(String name ,  String email ,String password ){
		this.name=name;
		this.password=password;
		this.email=email;
	}
	
	public void setid(int id) {
		this.id=id;
	}
	public void setname(String name) {
		this.name=name;
	}
	public void setemail(String email) {
		this.email=email;
	}
	public void setpassword(String password) {
		this.password=password;
	}
	public void setProfile(String profile) {
		this.profile=profile;
	}
	
	public int getid() {
		return id;
	}
	public String getname() {
		return name;
	}
	public String getpassword() {
		return password;
	}
	public String getemail() {
		return email;
	}
	public String getProfile() {
		return profile;
	}
}
