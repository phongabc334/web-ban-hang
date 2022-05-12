package LdStore.Dto;

import java.sql.Date;

public class ProductsDto {
	private long id_product;
	private int id_hangsx ;
	private String name;
	private double price;
	private int sale;
	private String title;
	private String detail ;
	private Date create_date;
	private String create_by  ;
	private Date update_date;
	private String update_by  ;
	private String os;
	private String cpu;
	private String screen;
	private String size;
	private String weight;
	private String waterproof;
	private String mic;
	private String pin;
	private String strap;
	private String img;
	private int soluong;
	private int daban;
	private String hangsx;
	public ProductsDto() {
		super();
	}
	public ProductsDto(long id_product, int id_hangsx, String name, double price, int sale, String title, String detail,
			Date create_date, String create_by, Date update_date, String update_by, String os,
			String cpu, String screen, String size, String weight, String waterproof, String mic, String pin,
			String strap, String img, int soluong, int daban, String hangsx) {
		super();
		this.id_product = id_product;
		this.id_hangsx = id_hangsx;
		this.name = name;
		this.price = price;
		this.sale = sale;
		this.title = title;
		this.detail = detail;
		this.create_date = create_date;
		this.create_by = create_by;
		this.update_date = update_date;
		this.update_by = update_by;
		this.os = os;
		this.cpu = cpu;
		this.screen = screen;
		this.size = size;
		this.weight = weight;
		this.waterproof = waterproof;
		this.mic = mic;
		this.pin = pin;
		this.strap = strap;
		this.img = img;
		this.soluong = soluong;
		this.daban = daban;
		this.hangsx = hangsx;
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public int getId_hangsx() {
		return id_hangsx;
	}
	public void setId_hangsx(int id_hangsx) {
		this.id_hangsx = id_hangsx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getCreate_by() {
		return create_by;
	}
	public void setCreate_by(String create_by) {
		this.create_by = create_by;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public String getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public String getScreen() {
		return screen;
	}
	public void setScreen(String screen) {
		this.screen = screen;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getWaterproof() {
		return waterproof;
	}
	public void setWaterproof(String waterproof) {
		this.waterproof = waterproof;
	}
	public String getMic() {
		return mic;
	}
	public void setMic(String mic) {
		this.mic = mic;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getStrap() {
		return strap;
	}
	public void setStrap(String strap) {
		this.strap = strap;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getDaban() {
		return daban;
	}
	public void setDaban(int daban) {
		this.daban = daban;
	}
	public String getHangsx() {
		return hangsx;
	}
	public void setHangsx(String hangsx) {
		this.hangsx = hangsx;
	}
	
	
	
}
