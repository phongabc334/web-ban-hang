package LdStore.Entity;

public class BillDetail {
	private int id;
	private long id_product;
	private long id_bills;
	private int quanty;
	private double total;
	private String name;
	private String img;
	public BillDetail() {
		super();
	}
	
	public BillDetail(int id, long id_product, long id_bills, int quanty, double total, String name, String img) {
		super();
		this.id = id;
		this.id_product = id_product;
		this.id_bills = id_bills;
		this.quanty = quanty;
		this.total = total;
		this.name = name;
		this.img = img;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public long getId_bills() {
		return id_bills;
	}
	public void setId_bills(long id_bills) {
		this.id_bills = id_bills;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
}
