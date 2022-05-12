package LdStore.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.ProductsDao;
import LdStore.Dto.ProductsDto;
@Service
public class ProductAdminServiceImpl implements IAdminProductService {

	@Autowired
	ProductsDao productsDao;
	
	@Override
	public List<ProductsDto> AdminSearchProductByName(String name) {
		return productsDao.AdminSearchProductByName(name);
	}

	@Override
	public List<ProductsDto> AdminSearchProductByNamePaginate(String name, int start, int totalProductsPage) {
		return productsDao.AdminSearchProductByNamePaginate(name, start, totalProductsPage);
	}

	@Override
	public int DeleteProduct(int id) {
		return productsDao.DeleteProduct(id);
	}

	@Override
	public int AddProduct(ProductsDto productsDto) {
		return productsDao.AddProduct(productsDto);
	}

	@Override
	public int EditProduct(ProductsDto productsDto) {
		return productsDao.EditProduct(productsDto);
	}

}
