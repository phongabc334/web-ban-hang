package LdStore.Entity;

import java.sql.Timestamp;

public class News {
	private int id_news;
	private String title;
	private String img;
	private String content;
	private String create_by;
	private Timestamp create_date;
	private String update_by;
	private Timestamp update_date;
	public News() {
		super();
	}
	public News(int id_news, String title, String img, String content, String create_by, Timestamp create_date,
			String update_by, Timestamp update_date) {
		super();
		this.id_news = id_news;
		this.title = title;
		this.img = img;
		this.content = content;
		this.create_by = create_by;
		this.create_date = create_date;
		this.update_by = update_by;
		this.update_date = update_date;
	}
	public int getId_news() {
		return id_news;
	}
	public void setId_news(int id_news) {
		this.id_news = id_news;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreate_by() {
		return create_by;
	}
	public void setCreate_by(String create_by) {
		this.create_by = create_by;
	}
	public Timestamp getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
	}
	public String getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}
	public Timestamp getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Timestamp update_date) {
		this.update_date = update_date;
	}

	
}
