package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.CommentDao;
import LdStore.Entity.Comment;
@Service
public class CommentServiceImpl implements ICommentService{
	
	@Autowired
	CommentDao commentDao = new CommentDao();
	
	@Override
	public List<Comment> AllComment(long id_product) {
		return commentDao.AllComment(id_product);
	}

	@Override
	public int AddComment(Comment comment) {
		return commentDao.AddComment(comment);
	}

	@Override
	public int DeleteComment(int id) {
		return commentDao.DeleteComment(id);
	}

}
