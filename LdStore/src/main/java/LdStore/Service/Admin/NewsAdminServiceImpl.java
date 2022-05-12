package LdStore.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.NewsDao;
import LdStore.Entity.News;

@Service
public class NewsAdminServiceImpl implements IAdminNewsService{

	@Autowired
	NewsDao newsDao;
	
	@Override
	public News GetDataNewsById(int id) {
		return newsDao.GetDataNewsById(id);
	}

	@Override
	public int AddNews(News news) {
		return newsDao.AddNews(news);
	}

	@Override
	public int EditNews(News news) {
		return newsDao.EditNews(news);
	}

	@Override
	public int DeleteNews(int id) {
		return newsDao.DeleteNews(id);
	}

	@Override
	public List<News> GetNewsByName(String name) {
		return newsDao.GetNewsByName(name);
	}

	@Override
	public List<News> GetNewsByNamePaginate(String name, int start, int totalProductsPage) {
		return newsDao.GetNewsByNamePaginate(name, start, totalProductsPage);
	}
	
}
