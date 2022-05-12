package LdStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBills implements RowMapper<Bills>{
	public Bills mapRow(ResultSet rs, int rowNum) throws SQLException {
		Bills Bills = new Bills();
		Bills.setId(rs.getInt("id"));
		Bills.setUser(rs.getString("user"));
		Bills.setPhone(rs.getString("phone"));
		Bills.setAddress(rs.getString("address"));
		Bills.setNote(rs.getString("note"));
		Bills.setTotal(rs.getDouble("total"));
		Bills.setQuanty(rs.getInt("quanty"));
		Bills.setStatus(rs.getString("status"));
		Bills.setPayments(rs.getString("payments"));
		Bills.setId_user(rs.getInt("id_user"));
		Bills.setCreate_date(rs.getTimestamp("create_date"));
		Bills.setUpdate_date(rs.getTimestamp("update_date"));
		return Bills;
	}

}
