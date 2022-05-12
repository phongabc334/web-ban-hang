package LdStore.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Dto.PaginatesDto;
import LdStore.Service.User.ProviderServiceImpl;
import LdStore.Service.User.HomeServiceImpl;
import LdStore.Service.User.PanigatesServiceImpl;

@Controller
public class CategoryController extends BaseController{
	@Autowired
	HomeServiceImpl homeService;
	@Autowired
	ProviderServiceImpl categoryService;
	@Autowired
	PanigatesServiceImpl paginateService;
	
	private int totalProductsPage = 25;
	
	@RequestMapping(value = {"/cua-hang"})
	public ModelAndView Products(@RequestParam(value="s", required = false) String s,@RequestParam(value="page", required = false) String currentPage, @RequestParam(value="order", required = false) String order) {
		_mvShare.setViewName("user/products/allproducts");
		
		if(s == null) {
			s = "0";
		}
		if(s == "") {
			s = "0";
			
		}
		if(currentPage==null) {
			currentPage = "1";
		}
		if(order == null) {
			order = "";
		}
		int id = Integer.parseInt(s);
		int totalData = categoryService.GetDataAllProductsById(id).size();
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage,(Integer.parseInt(currentPage)));
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		if(id != 0) {
			_mvShare.addObject("name",categoryService.SerchProviderByID(id));
		}else {
			_mvShare.addObject("name","Tất cả sản phẩm");
		}
		_mvShare.addObject("orderby",order);
		_mvShare.addObject("namesearch",s);
		_mvShare.addObject("ProductsPaginate",categoryService.GetDataProductsPaginate(id,order,paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	}
	@RequestMapping(value = {"/search"})
	public ModelAndView search(@RequestParam(value="s", required = false) String s, @RequestParam(value="page", required = false) String currentPage, @RequestParam(value="order", required = false) String order) {
		_mvShare.setViewName("user/products/searchproduct");
		int totalData = categoryService.SqlProductByName(s).size();
		if(currentPage==null) {
			currentPage = "1";
		}
		if(order == null) {
			order = "";
		}
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage, (Integer.parseInt(currentPage)));
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		_mvShare.addObject("namesearch",s);
		_mvShare.addObject("orderby",order);
		_mvShare.addObject("ProductsPaginate",categoryService.GetProductPaginateByName(s,order,paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	}
	
}
