package LdStore.Controller.User;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Service.User.HomeServiceImpl;
import LdStore.Service.User.NewsServiceImpl;

@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _HomeService;
	
	@Autowired
	NewsServiceImpl newsServiceImpl;
	
	public ModelAndView _mvShare = new ModelAndView();
	
	@PostConstruct
	public ModelAndView Init() {
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
		return _mvShare;
	}
	
}
