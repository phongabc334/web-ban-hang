package LdStore.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Dto.PaginatesDto;
import LdStore.Service.User.NewsServiceImpl;
import LdStore.Service.User.PanigatesServiceImpl;

@Controller
public class NewsController extends BaseController{

	@Autowired
	NewsServiceImpl newsServiceImpl;
	
	@Autowired
	PanigatesServiceImpl paginateService;
	
	private int totalProductsPage = 3;
	
	@RequestMapping(value = {"/tin-tuc"})
	public ModelAndView Index(@RequestParam(value="page", required = false) String currentPage) {
		int totalData = newsServiceImpl.GetAllDataNews().size();
		if(currentPage==null) {
			currentPage = "1";
		}
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage, (Integer.parseInt(currentPage)));
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		_mvShare.setViewName("user/news/allnews");
		_mvShare.addObject("news",newsServiceImpl.GetAllDataNewsPaginate(paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	}
	@RequestMapping(value = {"/tin-tuc/{id}"})
	public ModelAndView NewById(@PathVariable int id) {
		try {
			_mvShare.setViewName("user/news/news");
			_mvShare.addObject("news",newsServiceImpl.GetDataNewsById(id));
		} catch (Exception e) {
		}
		return _mvShare;
	}
}
