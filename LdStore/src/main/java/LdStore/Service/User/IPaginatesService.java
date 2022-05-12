package LdStore.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dto.PaginatesDto;
@Service
public interface IPaginatesService {
	@Autowired
	public PaginatesDto GetInfoPanigates(int totalData, int limit, int curentPage);
}
