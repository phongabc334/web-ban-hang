package LdStore.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import LdStore.Entity.Comment;
import LdStore.Entity.MapperComment;

@Repository
public class CommentDao extends BaseDao{

	public List<Comment> AllComment(long id_product) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT c.id_cmt,c.id_user,c.id_product,c.content,c.create_date,u.username ");
		sql.append("FROM `comments` c INNER JOIN users u ON c.id_user = u.id_user ");
		sql.append("WHERE id_product = '"+id_product+"' ");
		sql.append("ORDER BY create_date desc  ");
		List<Comment> list = jdbcTemplate.query(sql.toString(), new MapperComment()) ;
		return list;
	}
	public int AddComment(Comment comment) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO `comments`(`id_user`, `id_product`, `content`) VALUES ");
		sql.append("('"+comment.getId_user()+"','"+comment.getId_product()+"','"+comment.getContent()+"') ");
		int list = jdbcTemplate.update(sql.toString());
		return list;
		
	}
	public int DeleteComment(int id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("DELETE FROM `comments` ");
		sql.append("WHERE id_cmt = '"+id+"' ");
		int list = jdbcTemplate.update(sql.toString());
		return list;
	}
}
