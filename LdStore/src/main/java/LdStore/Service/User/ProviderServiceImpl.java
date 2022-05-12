package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.ProductsDao;
import LdStore.Dao.ProviderDao;
import LdStore.Dto.ProductsDto;
@Service
public class ProviderServiceImpl implements IProviderService{
	@Autowired
	ProductsDao productDao;
	
	@Autowired
	ProviderDao providerDao;
	
	public List<ProductsDto> GetDataAllProductsById(int id) {
		return productDao.GetDataAllProductsById(id);
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id, String order, int start, int totalProductsPage) {
		return productDao.GetDataProductPaginate(id,order,start, totalProductsPage);
	}

	
	//tìm kiếm
	@Override
	public List<ProductsDto> SqlProductByName(String name) {
		return productDao.SqlProductByName(name);
	}
	@Override
	public List<ProductsDto> GetProductPaginateByName(String name, String order, int start, int totalProductsPage) {
		return productDao.GetProductPaginateByName(name, order, start, totalProductsPage);
	}

	@Override
	public String SerchProviderByID(int id) {
		return providerDao.SerchProviderByID(id).get(0).getName();
	}


	
}
