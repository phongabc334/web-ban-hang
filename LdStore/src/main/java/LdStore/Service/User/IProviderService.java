package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dto.ProductsDto;
import LdStore.Entity.Provider;
@Service
public interface IProviderService {
	@Autowired
	public List<ProductsDto> GetDataAllProductsById(int id);
	public List<ProductsDto> GetDataProductsPaginate(int id, String order,int start, int totalProductsPage);
	public String SerchProviderByID(int id);
	
	//tìm kiếm
	public List<ProductsDto> SqlProductByName(String name);
	public List<ProductsDto> GetProductPaginateByName(String name , String order, int start, int totalProductsPage);
	
}
