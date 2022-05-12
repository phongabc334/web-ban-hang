package LdStore.Controller.Admin;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Dto.PaginatesDto;
import LdStore.Dto.ProductsDto;
import LdStore.Entity.News;
import LdStore.Service.Admin.NewsAdminServiceImpl;
import LdStore.Service.User.PanigatesServiceImpl;

@Controller
public class NewsManagerController extends BaseAdminController{
	@Autowired
	NewsAdminServiceImpl newsAdminServiceImpl;
	
	@Autowired
	PanigatesServiceImpl paginateService;
	
	private int totalProductsPage = 10;
	
	@RequestMapping(value = {"/admin/quan-ly-tin-tuc"})
	public ModelAndView NewsSearch(@RequestParam(value="s", required = false) String s ,@RequestParam(value="page", required = false) String currentPage) {
		if(s == null) {
			s = "";
		}
		if(currentPage==null) {
			currentPage = "1";
		}
		int totalData = newsAdminServiceImpl.GetNewsByName(s).size();
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage, (Integer.parseInt(currentPage)));
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		_mvShare.setViewName("admin/news/allnews");
		_mvShare.addObject("statusAddProviser","");
		_mvShare.addObject("AdminAddNewsStatus",null);
		_mvShare.addObject("AdminEditNewsStatus",null);
		_mvShare.addObject("AdminAllNews", newsAdminServiceImpl.GetNewsByNamePaginate(s,paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	}
	@RequestMapping(value = {"/admin/chi-tiet-tin-tuc/{id}"})
	public ModelAndView Product(@PathVariable int id) {
		try {
			_mvShare.setViewName("admin/news/detailnews");
			_mvShare.addObject("AdminDetailNews",newsAdminServiceImpl.GetDataNewsById(id));
		} catch (Exception e) {
		}
		return _mvShare;
	}
	
	@RequestMapping(value={"/admin/them-tin-tuc"},method = RequestMethod.GET)
	public ModelAndView AddNews() {
		_mvShare.setViewName("admin/news/addnews");
		_mvShare.addObject("AdminAddNews", new News());
		return _mvShare;
	}
	
	@RequestMapping(value = {"/admin/them-tin-tuc"},method = RequestMethod.POST)
	public String AddNews(HttpServletRequest request, @ModelAttribute News news,@RequestParam CommonsMultipartFile file,HttpSession session) {
		try {
			News addnews = news;
			addnews.setImg(file.getOriginalFilename());
			saveImageForProduct(file, session);
			if(newsAdminServiceImpl.AddNews(addnews) > 0) {
				_mvShare.addObject("AdminAddNewsStatus","ok");
				
			}else {
				_mvShare.addObject("AdminAddNewsStatus","Thêm không thành công");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value={"/admin/cap-nhat-tin-tuc/{id}"},method = RequestMethod.GET)
	public ModelAndView EditProduct(@PathVariable int id) {
		try {
			_mvShare.addObject("AdminEditNews",newsAdminServiceImpl.GetDataNewsById(id));
			_mvShare.setViewName("admin/news/updatenews");
		} catch (Exception e) {
		}
		
		
		return _mvShare;
	}
	
	@RequestMapping(value={"/admin/cap-nhat-tin-tuc/{id}"},method = RequestMethod.POST)
	public String EditProduct(HttpServletRequest request, @PathVariable int id, @ModelAttribute News news,@RequestParam CommonsMultipartFile file,HttpSession session) {
		try {
			if(!file.getOriginalFilename().isEmpty()){
				news.setImg(file.getOriginalFilename());
				saveImageForProduct(file, session);
			}else {
				news.setImg(newsAdminServiceImpl.GetDataNewsById(id).getImg());
			}
			if(newsAdminServiceImpl.EditNews(news) > 0) {
				_mvShare.addObject("AdminEditNewsStatus","ok");
			}else {
				_mvShare.addObject("AdminEditNewsStatus","Cập nhật thất bại");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = {"/admin/xoa-tin-tuc/{id}"})
	public String deleteproduct(HttpServletRequest request ,@PathVariable int id) {
		try {
			newsAdminServiceImpl.DeleteNews(id);
		} catch (Exception e) {
		}
		return "redirect:"+ request.getHeader("Referer");
	}
	
	
	public void saveImageForProduct(@RequestParam CommonsMultipartFile file, HttpSession session) {

		ServletContext context = session.getServletContext();  
	    String path = context.getRealPath("/template/user/images");  
	    String filename = file.getOriginalFilename();  
	    byte[] bytes = file.getBytes();  
	    BufferedOutputStream stream;
		try {
			stream = new BufferedOutputStream(  
	                 new FileOutputStream(path+"/"+filename));  
			try {
				stream.write(bytes);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
		    try {
				stream.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
		    try {
				stream.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	}
	
	
}
