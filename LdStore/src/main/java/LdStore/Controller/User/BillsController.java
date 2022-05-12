package LdStore.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Service.User.BillDetailServiceImpl;
import LdStore.Service.User.BillsServiceImpl;
import LdStore.Service.User.UserServiceImpl;

@Controller
public class BillsController extends BaseController{
	
	@Autowired
	UserServiceImpl userServiceImpl = new UserServiceImpl();
	
	@Autowired
	BillDetailServiceImpl billDetailServiceImpl = new BillDetailServiceImpl();
	
	@Autowired
	BillsServiceImpl billsServiceImpl = new BillsServiceImpl();
	
	@RequestMapping(value={"/thong-tin-don-hang"})
	public ModelAndView donhang(HttpSession session) {
		if(session.getAttribute("InfoUser") == null ) {
			_mvShare.setViewName("user/index");
		}else {
			_mvShare.setViewName("user/account/userbills");
			int id = (Integer)session.getAttribute("id_user");
			_mvShare.addObject("bills", userServiceImpl.bills(id));
			_mvShare.addObject("status", "");
		}
		return _mvShare;
	}
	
	@RequestMapping(value={"/chi-tiet-don-hang/{id}"})
	public ModelAndView chitietdonhang(HttpSession session,@PathVariable int id) {
		try {
			if(session.getAttribute("InfoUser") == null ) {
				_mvShare.setViewName("user/index");
			}else {
				_mvShare.addObject("billdetail", billDetailServiceImpl.GetDetailBills(id));
				session.setAttribute("userbilldetail",billsServiceImpl.GetBillsById(id));
				_mvShare.setViewName("user/account/detailuserbill");
			}
		} catch (Exception e) {
			_mvShare.setViewName("user/index");
		}
		return _mvShare;
	}
	
	@RequestMapping(value={"/cap-nhat-don-hang/{id}/{statusbill}"})
	public String suadonhang(HttpServletRequest request ,HttpSession session, @PathVariable int id, @PathVariable int statusbill) {
		try {
			if(session.getAttribute("InfoUser") == null ) {
				return "redirect:trang-chu";
			}else {
				billsServiceImpl.UpdateStatusById(id,statusbill);
			}
		} catch (Exception e) {
			return "redirect:"+ request.getHeader("Referer");
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
}
