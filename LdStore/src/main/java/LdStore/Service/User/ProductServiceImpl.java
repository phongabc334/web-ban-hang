package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.ProductsDao;
import LdStore.Dto.ProductsDto;
@Service
public class ProductServiceImpl implements IProductService{

	@Autowired
	ProductsDao productsDao = new ProductsDao();
	
	@Override
	public ProductsDto GetProductById(long id) {
		List<ProductsDto> list = productsDao.GetProductById(id);
		return list.get(0);
	}

	@Override
	public List<ProductsDto> GetProductByIdCategory(long id, int id_hangsx) {
		return productsDao.GetProductByIdCatagory(id,id_hangsx);
	}

	
	
}
