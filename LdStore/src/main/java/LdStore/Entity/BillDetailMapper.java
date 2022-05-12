package LdStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BillDetailMapper implements RowMapper<BillDetail>{

	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail billDetail = new BillDetail();
		billDetail.setId(rs.getInt("id_billdetail"));
		billDetail.setId_bills(rs.getLong("id_bills"));
		billDetail.setId_product(rs.getLong("id_product"));
		billDetail.setQuanty(rs.getInt("quanty"));
		billDetail.setTotal(rs.getDouble("total"));
		billDetail.setImg(rs.getString("img_product"));
		billDetail.setName(rs.getString("name_product"));
		return billDetail;
	}

}
