package LdStore.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Dto.PaginatesDto;
import LdStore.Service.Admin.BillsAdminServiceImpl;
import LdStore.Service.User.BillDetailServiceImpl;
import LdStore.Service.User.BillsServiceImpl;
import LdStore.Service.User.PanigatesServiceImpl;

@Controller
public class HoaDonManagerController extends BaseAdminController {
	
	@Autowired
	BillDetailServiceImpl billDetailServiceImpl = new BillDetailServiceImpl();
	
	@Autowired
	BillsAdminServiceImpl billsAdminServiceImpl = new BillsAdminServiceImpl();
	
	@Autowired
	BillsServiceImpl billsServiceImpl = new BillsServiceImpl();
	
	@Autowired
	PanigatesServiceImpl paginateService;
	
	private int totalProductsPage = 10;
	
	@RequestMapping(value = {"/admin/quan-ly-hoa-don"})
	public ModelAndView Index(@RequestParam(value="s", required = false) String s,@RequestParam(value="page", required = false) String currentPage) {
		if(s == null) {
			s = "";
		}
		if(currentPage==null) {
			currentPage = "1";
		}
		int totalData = billsAdminServiceImpl.SearchBills(s).size();
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage, (Integer.parseInt(currentPage)));
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		_mvShare.addObject("namesearch",s);
		_mvShare.setViewName("admin/donhang/donhang");
		_mvShare.addObject("adminbills",billsAdminServiceImpl.SearchBillsPaginate(s,paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = {"/admin/quan-ly-hoa-don/chi-tiet/{id}"})
	public ModelAndView chitiet(@PathVariable int id) {
		try {
			
			_mvShare.addObject("Adminbilldetail", billDetailServiceImpl.GetDetailBills(id));
			_mvShare.addObject("AdminUserbilldetail",billsServiceImpl.GetBillsById(id));
		} catch (Exception e) {
		}
		_mvShare.setViewName("admin/donhang/chi-tiet-don-hang");
		return _mvShare;
	}
	@RequestMapping(value = {"/admin/cap-nhat-don-hang/{id}"})
	public ModelAndView capnhat(@PathVariable int id, @RequestParam(value="s", required = false) String s ) {
		try {
			if(s == null) {
			s = "0";
			}
			int status = Integer.parseInt(s);
			_mvShare.addObject("AdminUpdateStatusBill",null);
			if(status != 0) {
				billsAdminServiceImpl.AdminUpdateStatusById(id,status);
				_mvShare.addObject("AdminUpdateStatusBill","Cập nhật thành công");
			}
			
			_mvShare.addObject("AdminUserbilldetail",billsServiceImpl.GetBillsById(id));
		} catch (Exception e) {
			// TODO: handle exception
		}
		_mvShare.setViewName("admin/donhang/cap-nhat-don-hang");
		return _mvShare;
	}
}
