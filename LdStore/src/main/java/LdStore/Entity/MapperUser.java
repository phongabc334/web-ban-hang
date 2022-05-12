package LdStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUser implements RowMapper<User>{
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setId_user(rs.getInt("id_user"));
		user.setUsername(rs.getString("username"));
		user.setFirstname(rs.getString("firstname"));
		user.setLastname(rs.getString("lastname"));
		user.setPassword(rs.getString("password"));
		user.setEmail(rs.getString("email"));
		user.setPhone(rs.getString("phone"));
		user.setAddress(rs.getString("address"));
		user.setStatus(rs.getBoolean("status"));
		user.setRole(rs.getInt("role"));
		return user;
	}
}
