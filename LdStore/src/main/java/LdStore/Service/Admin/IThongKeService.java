package LdStore.Service.Admin;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Dto.ProductsDto;
import LdStore.Entity.Bills;

@Service
public interface IThongKeService {
	public double DoanhThu();
	public int TongSoSPDaBan();
	public List<ProductsDto> AdminProductOrderByDaBan();
	
	public List<Bills> ThongKeBills(LocalDate date, String datetype, String status);
	public int ThongKeSoSp(LocalDate date, String datetype, String status);
	public double ThongKeDoanhThu(LocalDate date, String datetype, String status);
}
