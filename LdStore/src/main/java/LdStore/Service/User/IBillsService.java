package LdStore.Service.User;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Dto.CartDto;
import LdStore.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
	
	public Bills GetBillsById(int id_bill);
	
	public int UpdateStatusById(int id, int status);
	
	public List<Bills> GetAllBills();
	
}
