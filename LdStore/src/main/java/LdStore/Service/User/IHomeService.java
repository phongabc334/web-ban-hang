package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dto.ProductsDto;
import LdStore.Entity.Provider;
@Service
public interface IHomeService {
	@Autowired
	public List<Provider> GetDataCategory();
	public List<ProductsDto> GetDataProductDto();
	public List<ProductsDto> GetDataNewProductDto();
	public List<ProductsDto> GetHomeProduct( int id_hangsx);
}
