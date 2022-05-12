package LdStore.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Entity.Bills;

@Service
public interface IAdminBillsService {
	public List<Bills> SearchBills(String name);
	public int AdminUpdateStatusById(int id,int status);
	public List<Bills> SearchBillsPaginate(String name,int start, int totalProductsPage);
	
	public List<Bills> AdminTongSoKH();
}
