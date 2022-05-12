package LdStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperNews implements RowMapper<News>{
	public News mapRow(ResultSet rs, int rowNum) throws SQLException {
		News news = new News();
		news.setId_news(rs.getInt("id_news"));
		news.setTitle(rs.getString("title"));
		news.setImg(rs.getString("img"));
		news.setContent(rs.getString("content"));
		news.setCreate_date(rs.getTimestamp("create_date"));
		news.setCreate_by(rs.getString("create_by"));
		news.setUpdate_date(rs.getTimestamp("update_date"));
		news.setUpdate_by(rs.getString("update_by"));
		return news;
	}

}
