package LdStore.Dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Repository;

import LdStore.Entity.Bills;
import LdStore.Entity.MapperBills;

@Repository
public class ThongKeDao extends BaseDao{
	
	
	public Bills DoanhThu() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT `id`, `user`, `phone`, `address`, `note`, `status`, `payments`, `id_user`, `create_date`, `update_date`,SUM(total) as total,SUM(quanty) as quanty FROM `bills` WHERE status = 'Giao hàng thành công' ");
		Bills list = jdbcTemplate.query(sql.toString(),new MapperBills()).get(0);
		return list;
	}
	public List<Bills> ThongKeBills(LocalDate date, String datetype, String status) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM `bills` ");
		if(datetype.equals("ALL")) {
			sql.append("WHERE 1 = 1 ");
		}else {
			sql.append("WHERE "+datetype+"(update_date) = "+datetype+"('"+date+"')  ");
		}
		if(status != "") {
			sql.append("AND status LIKE '%"+status+"%' ");
		}
		List<Bills> list = jdbcTemplate.query(sql.toString(), new MapperBills());
		return list;
	}
	public Bills ThongKeDoanhThu(LocalDate date, String datetype, String status) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT `id`, `user`, `phone`, `address`, `note`, `status`, `payments`, `id_user`, `create_date`, `update_date`,SUM(total) as total,SUM(quanty) as quanty FROM `bills` ");
		if(datetype.equals("ALL")) {
			sql.append("WHERE 1 = 1 ");
		}else {
			sql.append("WHERE "+datetype+"(create_date) = "+datetype+"('"+date+"')  ");
		}
		if(status != "") {
			sql.append("AND status LIKE '%"+status+"%' ");
		}
		Bills list = jdbcTemplate.query(sql.toString(),new MapperBills()).get(0);
		return list;
	}
}
