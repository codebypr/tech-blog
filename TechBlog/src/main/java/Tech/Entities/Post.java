package Tech.Entities;

public class Post {
	private int id;
	private String title;
	private String contant;
	private String img;
	private String date;
	private int userId;
	private int cid;
	public Post() {

	}

	public Post(String title,String contant, String img,int cid,int userId) {
		this.contant=contant;
		this.userId=userId;
		this.img=img;
		this.title=title;
		this.cid=cid;
	}
	public Post(int id,String title,String contant, String img,String date,int cid,int userId) {
		this.contant=contant;
		this.userId=userId;
		this.img=img;
		this.title=title;
		this.cid=cid;
		this.id=id;
		this.date=date;
	}
	
	public void setTitle(String title) {
		this.title=title;
	}
	public void setImg(String img) {
		this.img=img;
	}
	public void setContant(String description) {
		this.contant=contant;
	}
	
	public int getId() {
		return id;
	}
	public int getCid() {
		return cid;
	}
	public int getuserId() {
		return userId;
	}
	public String getTitle() {
		return title;
	}
	public String getContant() {
		return contant;
	}
	public String getImg() {
		return img;
	}
}
