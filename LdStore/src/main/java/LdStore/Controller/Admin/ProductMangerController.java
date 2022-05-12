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
import LdStore.Service.Admin.ProductAdminServiceImpl;
import LdStore.Service.User.CommentServiceImpl;
import LdStore.Service.User.HomeServiceImpl;
import LdStore.Service.User.PanigatesServiceImpl;
import LdStore.Service.User.ProductServiceImpl;
@Controller
public class ProductMangerController extends BaseAdminController{
	@Autowired
	ProductAdminServiceImpl productAdminServiceImpl;
	
	@Autowired
	ProductServiceImpl productService; 
	
	@Autowired
	PanigatesServiceImpl paginateService;
	
	@Autowired
	HomeServiceImpl _HomeService;
	
	@Autowired
	ServletContext application;
	
	@Autowired
	CommentServiceImpl commentServiceImpl;
	
	private int totalProductsPage = 30;
	@RequestMapping(value={"/admin/quan-ly-san-pham"})
	public ModelAndView search(@RequestParam(value="s", required = false) String s, @RequestParam(value="page", required = false) String currentPage) {
		_mvShare.setViewName("admin/product/product");
		
		if(s == null) {
			s = "";
		}
		if(currentPage==null) {
			currentPage = "1";
		}
		int totalData = productAdminServiceImpl.AdminSearchProductByName(s).size();
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage, (Integer.parseInt(currentPage)));
		_mvShare.addObject("namesearch",s);
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		_mvShare.addObject("AdminAddProductStatus",null);
		_mvShare.addObject("AdminEditProductStatus",null);
		_mvShare.addObject("AdminProducts",productAdminServiceImpl.AdminSearchProductByNamePaginate(s,paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = {"/admin/chi-tiet-san-pham/{id}"})
	public ModelAndView Product(@PathVariable long id) {
		try {
			_mvShare.setViewName("admin/product/detailproduct");
			_mvShare.addObject("AdminDetailProduct",productService.GetProductById(id));
			int idcatagory = productService.GetProductById(id).getId_hangsx();
			_mvShare.addObject("category",productService.GetProductByIdCategory(id,idcatagory));
			_mvShare.addObject("productstatus",null);
			_mvShare.addObject("statusdeletecomment",null);
		} catch (Exception e) {
			_mvShare.setViewName("admin/product/detailproduct");
			_mvShare.addObject("productstatus","Sản phẩm không tồn tại");
		}
		return _mvShare;
	}
	@RequestMapping(value = {"/admin/binh-luan/{id}"})
	public ModelAndView ProductComment(@PathVariable long id) {
		try {
			_mvShare.setViewName("admin/product/comment");
			_mvShare.addObject("commentbyidpr",commentServiceImpl.AllComment(id));
			_mvShare.addObject("productstatus",null);
		} catch (Exception e) {
			_mvShare.setViewName("admin/product/comment");
			_mvShare.addObject("productstatus","Sản phẩm không tồn tại");
		}
		return _mvShare;
	}
	@RequestMapping(value = {"/admin/bai-viet/{id}"})
	public ModelAndView Productdetail(@PathVariable long id) {
		try {
			_mvShare.setViewName("admin/product/baivietproduct");
			_mvShare.addObject("AdminDetailProduct",productService.GetProductById(id));
		} catch (Exception e) {
		}
		return _mvShare;
	}
	@RequestMapping(value = {"/admin/delete-comment/{id}"})
	public String deletecomment(HttpServletRequest request ,@PathVariable int id) {
		try {
			int del = commentServiceImpl.DeleteComment(id);
			if(del > 0) {
				_mvShare.addObject("statusdeletecomment","ok");
			}else {
				_mvShare.addObject("statusdeletecomment","Xóa thất bại");
			}
			
		} catch (Exception e) {
		}
		return "redirect:"+ request.getHeader("Referer");
	}
	@RequestMapping(value = {"/admin/delete-product/{id}"})
	public String deleteproduct(HttpServletRequest request ,@PathVariable int id) {
		try {
			productAdminServiceImpl.DeleteProduct(id);
		} catch (Exception e) {
		}
		return "redirect:"+ request.getHeader("Referer");
	}
	
	
	@RequestMapping(value={"/admin/them-san-pham"},method = RequestMethod.GET)
	public ModelAndView AddProduct() {
		try {
			_mvShare.setViewName("admin/product/addproduct");
			_mvShare.addObject("AdminAddProudct", new ProductsDto());
			_mvShare.addObject("AdminListProvider", _HomeService.GetDataCategory());
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value = {"/admin/them-san-pham"},method = RequestMethod.POST)
	public String AddProduct(HttpServletRequest request, @ModelAttribute ProductsDto products,@RequestParam CommonsMultipartFile file,HttpSession session) {
		try {
			ProductsDto Addproduct = products;
			Addproduct.setImg(file.getOriginalFilename());
			saveImageForProduct(file, session);
			if(productAdminServiceImpl.AddProduct(Addproduct) > 0) {
				_mvShare.addObject("AdminAddProductStatus","ok");
				
			}else {
				_mvShare.addObject("AdminAddProductStatus","Thêm không thành công");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value={"/admin/cap-nhat-san-pham/{id}"},method = RequestMethod.GET)
	public ModelAndView EditProduct(@PathVariable int id) {
		try {
			_mvShare.addObject("AdminEditProudct",productService.GetProductById(id));
			_mvShare.addObject("AdminListProvider", _HomeService.GetDataCategory());
		} catch (Exception e) {
			// TODO: handle exception
		}
		_mvShare.setViewName("admin/product/updateproduct");
		
		return _mvShare;
	}
	@RequestMapping(value={"/admin/cap-nhat-san-pham/{id}"},method = RequestMethod.POST)
	public String EditProduct(HttpServletRequest request, @PathVariable int id, @ModelAttribute ProductsDto products,@RequestParam CommonsMultipartFile file,HttpSession session) {
		try {
			if(!file.getOriginalFilename().isEmpty()){
				products.setImg(file.getOriginalFilename());
				saveImageForProduct(file, session);
			}else {
				 products.setImg(productService.GetProductById(id).getImg());
			}
			if(productAdminServiceImpl.EditProduct(products) > 0) {
				_mvShare.addObject("AdminEditProductStatus","ok");
			}else {
				_mvShare.addObject("AdminEditProductStatus","Cập nhật thất bại");
			}
		} catch (Exception e) {
			// TODO: handle exception
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
