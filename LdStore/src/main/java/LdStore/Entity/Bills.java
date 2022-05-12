package LdStore.Entity;

import java.sql.Timestamp;

public class Bills {
	private int id;
	private String user;
	private String phone;
	private String address;
	private String note;
	private double total;
	private int quanty;
	private String status;
	private String payments;
	private int id_user;
	private Timestamp create_date;
	private Timestamp update_date;
	public Bills() {
		super();
	}
	
	
	public Bills(int id, String user, String phone, String address, String note, double total, int quanty, String status,
			String payments, int id_user, Timestamp create_date, Timestamp update_date) {
		super();
		this.id = id;
		this.user = user;
		this.phone = phone;
		this.address = address;
		this.note = note;
		this.total = total;
		this.quanty = quanty;
		this.status = status;
		this.payments = payments;
		this.id_user = id_user;
		this.create_date = create_date;
		this.update_date = update_date;
	}


	public Timestamp getUpdate_date() {
		return update_date;
	}


	public void setUpdate_date(Timestamp update_date) {
		this.update_date = update_date;
	}


	public Timestamp getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPayments() {
		return payments;
	}

	public void setPayments(String payments) {
		this.payments = payments;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	
}
