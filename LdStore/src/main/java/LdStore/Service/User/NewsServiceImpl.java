package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.NewsDao;
import LdStore.Entity.News;
@Service
public class NewsServiceImpl implements INewsService{
	@Autowired
	private NewsDao newsdao;
	
	@Override
	public List<News> GetAllDataNews() {
		return newsdao.GetAllDataNews();
	}

	@Override
	public News GetDataNewsById(int id) {
		return newsdao.GetDataNewsById(id);
	}

	@Override
	public List<News> Get4DataNews() {
		return newsdao.Get4DataNews();
	}

	@Override
	public List<News> GetAllDataNewsPaginate(int start, int totalProductsPage) {
		return newsdao.GetAllDataNewsPaginate(start, totalProductsPage);
	}

}
