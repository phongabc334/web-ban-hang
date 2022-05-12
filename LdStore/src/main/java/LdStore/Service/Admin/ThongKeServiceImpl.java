package LdStore.Service.Admin;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.ProductsDao;
import LdStore.Dao.ThongKeDao;
import LdStore.Dto.ProductsDto;
import LdStore.Entity.Bills;

@Service
public class ThongKeServiceImpl implements IThongKeService{

	@Autowired
	ThongKeDao thongKeDao;
	
	@Autowired
	ProductsDao productsDao;
	
	@Override
	public double DoanhThu() {
		return thongKeDao.DoanhThu().getTotal();
	}

	@Override
	public int TongSoSPDaBan() {
		return thongKeDao.DoanhThu().getQuanty();
	}

	@Override
	public List<ProductsDto> AdminProductOrderByDaBan() {
		return productsDao.AdminProductOrderByDaBan();
	}

	@Override
	public List<Bills> ThongKeBills(LocalDate date, String datetype, String status) {
		return thongKeDao.ThongKeBills(date, datetype, status);
	}

	@Override
	public int ThongKeSoSp(LocalDate date, String datetype, String status) {
		return thongKeDao.ThongKeDoanhThu(date, datetype, status).getQuanty();
	}

	@Override
	public double ThongKeDoanhThu(LocalDate date, String datetype, String status) {
		return thongKeDao.ThongKeDoanhThu(date, datetype, status).getTotal();
	}


}
