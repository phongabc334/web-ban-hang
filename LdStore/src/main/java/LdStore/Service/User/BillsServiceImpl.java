package LdStore.Service.User;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.BillsDao;
import LdStore.Dto.CartDto;
import LdStore.Entity.BillDetail;
import LdStore.Entity.Bills;

@Service
public class BillsServiceImpl implements IBillsService{

	@Autowired
	private BillsDao billsDao;
	
	@Override
	public int AddBills(Bills bill) {
		
		return billsDao.AddBills(bill);
	}

	@Override
	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		
		long idBill = billsDao.GetIDLastBills();
		
		for (Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBill);
			billDetail.setId_product(itemCart.getValue().getProductsDto().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.UpdateProduct(billDetail.getId_product(), billDetail.getQuanty());
			billsDao.AddBillsDetail(billDetail);
		}
	}

	@Override
	public Bills GetBillsById(int id_bill) {
		return billsDao.GetBillsById(id_bill);
	}

	@Override
	public int UpdateStatusById(int id, int status) {
		return billsDao.UpdateStatusById(id, status);
	}

	@Override
	public List<Bills> GetAllBills() {
		
		return billsDao.GetAllBills();
	}

}
