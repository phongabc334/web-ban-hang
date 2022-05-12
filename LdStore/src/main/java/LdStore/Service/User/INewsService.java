package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Entity.News;

@Service
public interface INewsService {
	@Autowired
	public List<News> GetAllDataNews();
	public News GetDataNewsById(int id);
	public List<News> Get4DataNews();
	public List<News> GetAllDataNewsPaginate(int start, int totalProductsPage);
}
