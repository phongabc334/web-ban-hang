package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.ProviderDao;
import LdStore.Dao.ProductsDao;
import LdStore.Dto.ProductsDto;
import LdStore.Entity.Provider;

@Service
public class HomeServiceImpl implements IHomeService{
	
	@Autowired
	private ProviderDao categorysDao;
	
	@Autowired
	private ProductsDao productDao;
	
	@Override
	public List<Provider> GetDataCategory() {
		return categorysDao.GetDataCategory();
	}

	@Override
	public List<ProductsDto> GetDataProductDto() {
		List<ProductsDto> list = productDao.GetDataProductDto();
		return list;
	}

	@Override
	public List<ProductsDto> GetDataNewProductDto() {
		List<ProductsDto> list = productDao.GetDataNewProductDto();
		return list;
	}

	@Override
	public List<ProductsDto> GetHomeProduct(int id_hangsx) {
		return productDao.GetHomeProduct(id_hangsx);
	}
}
