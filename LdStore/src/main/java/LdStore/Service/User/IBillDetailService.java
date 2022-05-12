package LdStore.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Entity.BillDetail;

@Service
public interface IBillDetailService {
	public List<BillDetail> GetDetailBills(int id_bill);
}
