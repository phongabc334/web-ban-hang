package LdStore.Controller.Admin;

import java.time.LocalDate;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Service.Admin.BillsAdminServiceImpl;
import LdStore.Service.Admin.ProductAdminServiceImpl;
import LdStore.Service.Admin.ThongKeServiceImpl;
import LdStore.Service.Admin.UserAdminServiceImpl;


@Controller
public class HomeAdminController extends BaseAdminController{
	
	@Autowired
	UserAdminServiceImpl adminUserServiceImpl = new UserAdminServiceImpl();
	
	@Autowired 
	ThongKeServiceImpl thongKeServiceImpl;
	
	@Autowired
	BillsAdminServiceImpl billsAdminServiceImpl = new BillsAdminServiceImpl();
	
	@Autowired
	ProductAdminServiceImpl productAdminServiceImpl;
	
	@RequestMapping(value = {"/admin","/admin/index"})
	public ModelAndView Index(HttpSession session,@RequestParam(value="s", required = false) String s) {
		if( s == null) {
			s = "DATE";
		}
		_mvShare.setViewName("admin/index");
		_mvShare.addObject("SoUser", billsAdminServiceImpl.AdminTongSoKH().size());
		_mvShare.addObject("SoDonHang",billsAdminServiceImpl.SearchBills("").size());
		_mvShare.addObject("SPBanChay",thongKeServiceImpl.AdminProductOrderByDaBan());
		_mvShare.addObject("TongDoanhThu",thongKeServiceImpl.DoanhThu());
		_mvShare.addObject("TongDaBan",thongKeServiceImpl.TongSoSPDaBan());
		
		
		//theo ngay,tuan,thang
		LocalDate date = java.time.LocalDate.now();
		_mvShare.addObject("statusDonHang",s);
		_mvShare.addObject("tongdonhang",thongKeServiceImpl.ThongKeBills(date, s, ""));
		_mvShare.addObject("DaHuy",thongKeServiceImpl.ThongKeBills(date, s, "đã hủy").size());
		_mvShare.addObject("DangCho",thongKeServiceImpl.ThongKeBills(date, s,"đang chờ").size());
		_mvShare.addObject("DangGiao",thongKeServiceImpl.ThongKeBills(date, s,"đang giao hàng").size());
		_mvShare.addObject("ChuanBi",thongKeServiceImpl.ThongKeBills(date, s,"đang chuẩn bị").size());
		_mvShare.addObject("ThanhCong",thongKeServiceImpl.ThongKeBills(date, s,"giao hàng thành công").size());
		_mvShare.addObject("DoanhThu",thongKeServiceImpl.ThongKeDoanhThu(date, s, "giao hàng thành công"));
		_mvShare.addObject("DaBan",thongKeServiceImpl.ThongKeSoSp(date, s, "giao hàng thành công"));
		
		int tong =0;
		for(int i=0;i< productAdminServiceImpl.AdminSearchProductByName("").size();i++) {
			tong = tong + productAdminServiceImpl.AdminSearchProductByName("").get(i).getSoluong();
		}
		_mvShare.addObject("TongSoSP",tong);
		return _mvShare;
	}
	
}
