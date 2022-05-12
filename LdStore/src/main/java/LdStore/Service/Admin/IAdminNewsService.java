package LdStore.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Entity.News;

@Service
public interface IAdminNewsService {
	public List<News> GetNewsByName(String name);
	public List<News> GetNewsByNamePaginate(String name,int start, int totalProductsPage);
	public News GetDataNewsById(int id);
	
	public int AddNews(News news);
	public int EditNews(News news);
	public int DeleteNews(int id);
}
