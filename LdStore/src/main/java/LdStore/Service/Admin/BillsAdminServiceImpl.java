package LdStore.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.BillsDao;
import LdStore.Entity.Bills;
@Service
public class BillsAdminServiceImpl implements IAdminBillsService{

	@Autowired
	private BillsDao billsDao;
	
	@Override
	public List<Bills> SearchBills(String name) {
		return billsDao.SearchBills(name);
	}

	@Override
	public int AdminUpdateStatusById(int id, int status) {
		return billsDao.AdminUpdateStatusById(id, status);
	}

	@Override
	public List<Bills> SearchBillsPaginate(String name, int start, int totalProductsPage) {
		return billsDao.SearchBillsPaginate(name, start, totalProductsPage);
	}

	@Override
	public List<Bills> AdminTongSoKH() {
		// TODO Auto-generated method stub
		return billsDao.AdminTongSoKH();
	}
	

}
