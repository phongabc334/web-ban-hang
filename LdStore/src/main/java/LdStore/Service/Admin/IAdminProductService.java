package LdStore.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Dto.ProductsDto;

@Service
public interface IAdminProductService {
	public List<ProductsDto> AdminSearchProductByName(String name);
	public List<ProductsDto> AdminSearchProductByNamePaginate(String name, int start, int totalProductsPage);
	
	public int DeleteProduct(int id);
	public int AddProduct(ProductsDto productsDto) ;
	public int EditProduct(ProductsDto productsDto);
}
