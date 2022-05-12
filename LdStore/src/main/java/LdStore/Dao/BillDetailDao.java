package LdStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import LdStore.Entity.BillDetail;
import LdStore.Entity.BillDetailMapper;

@Repository
public class BillDetailDao extends BaseDao{
	public List<BillDetail> GetDetailBills(int id_bill) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT  ");
		sql.append(" bd.id as id_billdetail, ");
		sql.append(" bd.id_product, ");
		sql.append(" bd.id_bills, ");
		sql.append(" bd.quanty, ");
		sql.append(" bd.total, ");
		sql.append(" p.name as name_product, ");
		sql.append(" p.img as img_product");
		sql.append(" FROM `billdetail` as bd INNER JOIN products as p ON bd.id_product = p.id ");
		sql.append(" WHERE id_bills = '"+id_bill+"' ");
		List<BillDetail> list = new ArrayList<BillDetail>();
		list = jdbcTemplate.query(sql.toString(), new BillDetailMapper());
		return list;
	}
}
