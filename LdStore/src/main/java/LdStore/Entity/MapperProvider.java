package LdStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProvider implements RowMapper<Provider>{

	public Provider mapRow(ResultSet rs, int rowNum) throws SQLException {
		Provider provider = new Provider();
		provider.setId(rs.getInt("id"));
		provider.setName(rs.getString("name"));
		provider.setDescription(rs.getString("description"));
		return provider;
	}

}
