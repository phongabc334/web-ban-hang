package LdStore.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Entity.Comment;

@Service
public interface ICommentService {
	public List<Comment> AllComment(long id_product);
	
	public int AddComment(Comment comment);
	public int DeleteComment(int id);
}
