package LdStore.Controller.User;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Entity.Comment;
import LdStore.Entity.User;
import LdStore.Service.User.CommentServiceImpl;
import LdStore.Service.User.ProductServiceImpl;

@Controller
public class ProductController extends BaseController{
	@Autowired
	ProductServiceImpl productService; 
	
	@Autowired
	CommentServiceImpl commentServiceImpl;
	
	@RequestMapping(value = {"/product/{id}"},method = RequestMethod.GET)
	public ModelAndView Product(@PathVariable long id) {
		try {
			_mvShare.setViewName("user/products/product");
			_mvShare.addObject("product",productService.GetProductById(id));
			int idcatagory = productService.GetProductById(id).getId_hangsx();
			_mvShare.addObject("productstatus",null);
			_mvShare.addObject("category",productService.GetProductByIdCategory(id,idcatagory));
			_mvShare.addObject("commentbyidpr",commentServiceImpl.AllComment(id));
			_mvShare.addObject("comment", new Comment());
		} catch (Exception e) {
			_mvShare.setViewName("user/products/product");
			_mvShare.addObject("productstatus","Sản phẩm không tồn tại");
		}
		return _mvShare;
	}
	@RequestMapping(value = {"/product/{id}"},method = RequestMethod.POST)
	public String comment(@PathVariable long id,@ModelAttribute Comment comment) {
		if(commentServiceImpl.AddComment(comment) > 0) {
			return "redirect:/product/"+id;
		}
		return null;
	}
	@RequestMapping(value = {"/deletecomment/{id}"})
	public String deletecomment(HttpServletRequest request ,@PathVariable int id) {
		try {
			int del = commentServiceImpl.DeleteComment(id);
			if(del > 0) {
			}else {
			}
			
		} catch (Exception e) {
		}
		return "redirect:"+ request.getHeader("Referer");
	}
}
