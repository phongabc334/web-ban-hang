package LdStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperComment implements RowMapper<Comment>{

	@Override
	public Comment mapRow(ResultSet rs, int rowNum) throws SQLException {
		Comment comment = new Comment();
		comment.setId_cmt(rs.getInt("id_cmt"));
		comment.setId_user(rs.getInt("id_user"));
		comment.setId_product(rs.getLong("id_product"));
		comment.setUser(rs.getString("username"));
		comment.setContent(rs.getString("content"));
		comment.setCreate_date(rs.getTimestamp("create_date"));
		return comment;
	}

}
