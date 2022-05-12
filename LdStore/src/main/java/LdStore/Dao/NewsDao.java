package LdStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import LdStore.Entity.MapperNews;
import LdStore.Entity.News;

@Repository
public class NewsDao extends BaseDao{
	
	public List<News> GetAllDataNews(){
		List<News> list = new ArrayList<News>();
		String sql = "SELECT * FROM news";
		list = jdbcTemplate.query(sql, new MapperNews());
		return list;
	}
	public List<News> GetAllDataNewsPaginate(int start, int totalProductsPage){
		List<News> list = new ArrayList<News>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM news ");
		if(start < 0) {
			start = 0;
		}else {
			start = start -1;
		}
		sql.append("LIMIT "+start+", "+totalProductsPage+" ");
		list = jdbcTemplate.query(sql.toString(), new MapperNews());
		return list;
	}
	
	public StringBuffer SqlString(int id_news) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM news ");
		sql.append("WHERE 1=1 ");
		sql.append("AND id_news = "+id_news+" ");
		return sql;
	}
	
	public News GetDataNewsById(int id){
		String sql = SqlString(id).toString();
		News list = jdbcTemplate.queryForObject(sql, new MapperNews());
		return list;
	}
	
	public StringBuffer SqlString4News() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM news ");
		sql.append("ORDER BY create_date DESC ");
		sql.append("LIMIT 4  ");
		return sql;
	}
	public List<News> Get4DataNews(){
		List<News> list = new ArrayList<News>();
		String sql = SqlString4News().toString();
		list = jdbcTemplate.query(sql, new MapperNews());
		return list;
	}
	
	public List<News> GetNewsByName(String name){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM news ");
		sql.append("WHERE  id_news LIKE '%"+name+"%' OR title LIKE '%"+name+"%' ");
		List<News> list = jdbcTemplate.query(sql.toString(), new MapperNews());
		return list;
	}
	
	public List<News> GetNewsByNamePaginate(String name,int start, int totalProductsPage){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM news ");
		sql.append("WHERE  id_news LIKE '%"+name+"%' OR title LIKE '%"+name+"%' ");
		if(start < 0) {
			start = 0;
		}else {
			start = start -1;
		}
		sql.append("LIMIT "+start+", "+totalProductsPage+" ");
		List<News> list = jdbcTemplate.query(sql.toString(), new MapperNews());
		return list;
	}
	
	public int AddNews(News news) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO `news`(`title`, `img`, `content`, `create_by`) VALUES ");
		sql.append("('"+news.getTitle()+"','"+news.getImg()+"','"+news.getContent()+"','"+news.getCreate_by()+"') ");
		int list = jdbcTemplate.update(sql.toString());
		return list;
	}
	public int EditNews(News news) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `news` SET  ");
		sql.append(" `title`='"+news.getTitle()+"', ");
		sql.append(" `img`='"+news.getImg()+"', ");
		sql.append(" `content`='"+news.getContent()+"', ");
		sql.append(" `update_by`='"+news.getUpdate_by()+"'  ");
		sql.append(" WHERE id_news = '"+news.getId_news()+"' ");
		int list = jdbcTemplate.update(sql.toString());
		return list;
	}
	public int DeleteNews(int id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("DELETE FROM `news` ");
		sql.append("WHERE id_news = '"+id+"' ");
		int list = jdbcTemplate.update(sql.toString());
		return list;
	}
}
