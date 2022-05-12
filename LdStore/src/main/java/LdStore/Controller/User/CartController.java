package LdStore.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Dto.CartDto;
import LdStore.Entity.Bills;
import LdStore.Entity.User;
import LdStore.Service.User.BillsServiceImpl;
import LdStore.Service.User.CartServiceImpl;
 
@Controller
public class CartController extends BaseController{
	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	
	@Autowired
	private BillsServiceImpl billsServiceImpl = new BillsServiceImpl();
	
	@RequestMapping(value = "/gio-hang")
	public ModelAndView Index() {
		_mvShare.addObject("status",null);
		_mvShare.setViewName("user/cart/list_cart");
		return _mvShare;
	}
	
	
	
	@RequestMapping(value = "/AddCart/{id}")
	public String AddCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		try {
			HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
			if(cart == null) {
				cart = new HashMap<Long, CartDto>();
			}
			cartService.AddCart(id, cart);
			session.setAttribute("Cart", cart);
			session.setAttribute("totalPrice", cartService.TotalPrice(cart));
			session.setAttribute("totalQuanty", cartService.TotalQuanty(cart));
		} catch (Exception e) {
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable long id, @PathVariable int quanty) {
		try {
			HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
			if(cart == null) {
				cart = new HashMap<Long, CartDto>();
			}
			cart = cartService.EditCart(id, quanty, cart);
			session.setAttribute("Cart", cart);
			session.setAttribute("totalPrice", cartService.TotalPrice(cart));
			session.setAttribute("totalQuanty", cartService.TotalQuanty(cart));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		try {
			HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
			if(cart == null) {
				cart = new HashMap<Long, CartDto>();
			}
			cart = cartService.DeleteCart(id, cart);
			session.setAttribute("Cart", cart);
			session.setAttribute("totalPrice", cartService.TotalPrice(cart));
			session.setAttribute("totalQuanty", cartService.TotalQuanty(cart));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value={"/checkout"},method = RequestMethod.GET)
	public ModelAndView Checkout(HttpServletRequest request ,HttpSession session) {
		try {
			_mvShare.addObject("status",null);
			Bills bills = new Bills();
			User loginInfo = (User)session.getAttribute("InfoUser");
			if(loginInfo != null) {
				_mvShare.setViewName("user/bills/checkout");
				bills.setAddress(loginInfo.getAddress());
				bills.setId_user(loginInfo.getId_user());
				bills.setPhone(loginInfo.getPhone());
				bills.setUser(loginInfo.getFirstname() +" "+ loginInfo.getLastname());
			}else if(loginInfo == null) {
				_mvShare.addObject("status","Bạn cần đăng nhập trước khi thanh toán");
			}
			_mvShare.addObject("bills",bills);
		} catch (Exception e) {
			_mvShare.setViewName("user/index");
		}
		return _mvShare;
	}

	@RequestMapping(value="checkout", method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request ,HttpSession session, @ModelAttribute Bills bills) {
		try {
			if(billsServiceImpl.AddBills(bills) > 0) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>)session.getAttribute("Cart");
			billsServiceImpl.AddBillsDetail(carts);
			}
			session.removeAttribute("Cart");
			session.removeAttribute("totalPrice");
			session.removeAttribute("totalQuanty");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:gio-hang";
	}
	
}
