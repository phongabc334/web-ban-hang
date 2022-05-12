package LdStore.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Dto.ProductsDto;

@Service
public interface IProductService {
	public ProductsDto GetProductById(long id);
	
	public List<ProductsDto> GetProductByIdCategory(long id, int id_hangsx);
	
}	
