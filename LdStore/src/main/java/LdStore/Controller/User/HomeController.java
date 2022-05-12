package LdStore.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Service.User.HomeServiceImpl;

@Controller
public class HomeController extends BaseController{
	@Autowired
	HomeServiceImpl homeService;
	
	@RequestMapping(value = {"/","/trang-chu"})
	public ModelAndView Index() {
		_mvShare.addObject("categorys", _HomeService.GetDataCategory());
		_mvShare.addObject("newproduct", _HomeService.GetDataNewProductDto());
		_mvShare.addObject("statusproduct0","Sản phẩm mới");
		
		_mvShare.addObject("newproduct1", _HomeService.GetHomeProduct(1));
		_mvShare.addObject("statusproduct1","Xiaomi");
		
		_mvShare.addObject("newproduct2", _HomeService.GetHomeProduct(2));
		_mvShare.addObject("statusproduct2","Asus");
		
		_mvShare.addObject("newproduct3", _HomeService.GetHomeProduct(3));
		_mvShare.addObject("statusproduct3","Ticwatch");
		
		_mvShare.addObject("newproduct4", _HomeService.GetHomeProduct(5));
		_mvShare.addObject("statusproduct4","Oppo");
		
		_mvShare.addObject("newproduct5", _HomeService.GetHomeProduct(6));
		_mvShare.addObject("statusproduct5","Samsung");
		
		_mvShare.addObject("news",newsServiceImpl.Get4DataNews());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/gioi-thieu"})
	public ModelAndView gioithieu() {
		_mvShare.setViewName("user/gioi-thieu/gioi-thieu");
		return _mvShare;
	}
	
	
	@RequestMapping(value = {"/chinh-sach-bao-hanh"})
	public ModelAndView baohanh() {
		_mvShare.setViewName("user/gioi-thieu/bao-hanh");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/chinh-sach-bao-mat"})
	public ModelAndView baomat() {
		_mvShare.setViewName("user/gioi-thieu/bao-mat");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/chinh-sach-doi-tra"})
	public ModelAndView doitra() {
		_mvShare.setViewName("user/gioi-thieu/doi-tra");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/chinh-sach-van-chuyen"})
	public ModelAndView vanchuyen() {
		_mvShare.setViewName("user/gioi-thieu/van-chuyen");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/quy-dinh-thanh-toan"})
	public ModelAndView thanhtoan() {
		_mvShare.setViewName("user/gioi-thieu/quy-dinh-thanh-toan");
		return _mvShare;
	}
	@RequestMapping(value = {"/tim-kiem/{name}"})
	public ModelAndView search() {
		_mvShare.setViewName("user/products/searchproduct");
		return _mvShare;
	}
	
}
