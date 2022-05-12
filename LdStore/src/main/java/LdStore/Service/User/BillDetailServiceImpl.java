package LdStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.BillDetailDao;
import LdStore.Entity.BillDetail;

@Service
public class BillDetailServiceImpl implements IBillDetailService{

	@Autowired
	BillDetailDao billDetailDao = new BillDetailDao();
	
	@Override
	public List<BillDetail> GetDetailBills(int id_bill) {
		return billDetailDao.GetDetailBills(id_bill);
	}

}
