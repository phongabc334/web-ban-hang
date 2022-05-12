package LdStore.Entity;

import java.sql.Timestamp;

public class Comment {
	private int id_cmt;
	private int id_user;
	private String user;
	private long id_product;
	private String content;
	private Timestamp create_date;
	public Comment() {
		super();
	}
	public Comment(int id_cmt, int id_user, String user, long id_product, String content, Timestamp create_date) {
		super();
		this.id_cmt = id_cmt;
		this.id_user = id_user;
		this.user = user;
		this.id_product = id_product;
		this.content = content;
		this.create_date = create_date;
	}
	public int getId_cmt() {
		return id_cmt;
	}
	public void setId_cmt(int id_cmt) {
		this.id_cmt = id_cmt;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
	}
	
}
