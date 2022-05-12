package LdStore.Dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import LdStore.Entity.BillDetail;
import LdStore.Entity.Bills;
import LdStore.Entity.MapperBills;

@Repository
public class BillsDao extends BaseDao{
	public int AddBills(Bills bill) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO `bills`( `user`, `phone`, `address`, `note`, `total`, `quanty`, `status`, `payments`, `id_user`) VALUES  ");
		sql.append("( ");
		sql.append(" '"+ bill.getUser() +"', ");
		sql.append(" '"+ bill.getPhone() +"', ");
		sql.append(" '"+ bill.getAddress() +"', ");
		sql.append(" '"+ bill.getNote() +"', ");
		sql.append(" '"+ bill.getTotal() +"', ");
		sql.append(" '"+ bill.getQuanty() +"', ");
		sql.append(" 'Đang chờ', ");
		sql.append(" '"+ bill.getPayments() +"', ");
		sql.append(" '"+ bill.getId_user() +"' ");
		sql.append("); ");
		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public long GetIDLastBills() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM `bills` ");
		long id = jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	}
	
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO `billdetail`(`id_product`, `id_bills`, `quanty`, `total`) VALUES  ");
		sql.append("( ");
		sql.append(" '"+ billDetail.getId_product() +"', ");
		sql.append(" '"+ billDetail.getId_bills() +"', ");
		sql.append(" '"+ billDetail.getQuanty() +"', ");
		sql.append(" '"+ billDetail.getTotal() +"' ");
		sql.append("); ");
		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public Bills GetBillsById(int id_bill) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM `bills` ");
		sql.append(" WHERE id = '"+id_bill+"' ");
		sql.append(" ORDER BY update_date DESC ");
		Bills list = jdbcTemplate.queryForObject(sql.toString(), new MapperBills());
		return list;
	}
	
	public int UpdateStatusById(int id,int status) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `bills` SET  ");
		if(status == 0) {
			sql.append("`status` ='Giao hàng thành công' ");
		}else if(status == 1) {
			sql.append("`status` ='Đơn hàng đã hủy' ");
		}
		sql.append("WHERE id = '"+ id +"'");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	
	public int UpdateProduct(long id, int soluong) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `products` SET   ");
		sql.append(" `soluong`= soluong - '"+soluong+"' , ");
		sql.append(" `daban`= daban + '"+soluong+"' ");
		sql.append("WHERE id = '"+id+"' ");
		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	}
	public List<Bills> GetAllBills() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM `bills` ");
		List<Bills> list = jdbcTemplate.query(sql.toString(), new MapperBills());
		return list;
	}
	
	//admin
	public List<Bills> AdminTongSoKH() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `bills` GROUP BY id_user ");
		List<Bills> list = jdbcTemplate.query(sql.toString(), new MapperBills());
		return list;
	}
	
	
	public List<Bills> SearchBills(String name) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM `bills` ");
		sql.append("WHERE id LIKE '%"+name+"%' OR user LIKE '%"+name+"%'  OR phone LIKE '%"+name+"%' OR status LIKE '%"+name+"%' ");
		List<Bills> list = jdbcTemplate.query(sql.toString(), new MapperBills());
		return list;
	}
	
	public List<Bills> SearchBillsPaginate(String name,int start, int totalProductsPage) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM `bills` ");
		sql.append("WHERE id LIKE '%"+name+"%' OR user LIKE '%"+name+"%'  OR phone LIKE '%"+name+"%' OR status LIKE '%"+name+"%' ");
		if(start < 0) {
			start = 0;
		}else {
			start = start -1;
		}
		sql.append(" ORDER BY create_date DESC ");
		sql.append("LIMIT "+start+", "+totalProductsPage+" ");
		
		List<Bills> list = jdbcTemplate.query(sql.toString(), new MapperBills());
		return list;
	}
	
	public int AdminUpdateStatusById(int id,int status) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `bills` SET  ");
		if(status == 1) {
			sql.append("`status` ='Đang chuẩn bị hàng' ");
		}else if(status == 2) {
			sql.append("`status` ='Đang giao hàng' ");
		}else if(status == 3) {
			sql.append("`status` ='Giao hàng thành công' ");
		}else if(status == 4) {
			sql.append("`status` ='Đơn hàng đã hủy' ");
		}
		sql.append("WHERE id = '"+ id +"'");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}

}
