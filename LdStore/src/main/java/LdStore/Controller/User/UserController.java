package LdStore.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Entity.ChangePassword;
import LdStore.Entity.User;
import LdStore.Service.User.UserServiceImpl;

@Controller
public class UserController extends BaseController{
	
	@Autowired
	UserServiceImpl userServiceImpl = new UserServiceImpl();
	
	
	@RequestMapping(value={"/dang-ky"},method = RequestMethod.GET)
	public ModelAndView Dangky() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new User());
		_mvShare.addObject("status",null);
		return _mvShare;
	}
	
	@RequestMapping(value={"/dang-ky"},method = RequestMethod.POST)
	public ModelAndView CreateUser(@ModelAttribute User user) {
		User adduser =  user;
		if(userServiceImpl.CheckAddUser(user)) {
			 
			_mvShare.addObject("status","Đăng ký không thành công, user/email đã tồn tại");
			  _mvShare.setViewName("user/account/register"); 	
		}else { 
			if(userServiceImpl.checkvalid(adduser) == null) {
				int count = userServiceImpl.AddUser(adduser); 
				if(count > 0) {
				  _mvShare.addObject("status",null);
				  _mvShare.setViewName("user/account/login"); 
				  }
				else {
				  _mvShare.addObject("status", "Đăng ký không thành công");
				  _mvShare.setViewName("user/account/register"); 
				  } 
			}else {
				_mvShare.addObject("status",userServiceImpl.checkvalid(adduser) );
				_mvShare.setViewName("user/account/register"); 
			}
			
		  }
				 
		return _mvShare;
	}
	
	@RequestMapping(value={"/dang-nhap"},method = RequestMethod.GET)
	public ModelAndView Dangnhap() {
		_mvShare.setViewName("user/account/login");
		_mvShare.addObject("statuslogin",null);
		_mvShare.addObject("user", new User());
		return _mvShare;
	}
	
	@RequestMapping(value={"/dang-nhap"},method = RequestMethod.POST)
	public ModelAndView Dangnhap(HttpSession session,@ModelAttribute User user) {
		
		if(userServiceImpl.checkvalidlogin(user)==null) {
			user = userServiceImpl.CheckUser(user);
			
			if(user != null) {
				if(user.isStatus() == true) {
					_mvShare.addObject("statuslogin","Tài khoản của bạn đang bị khóa");
				}else {
					_mvShare.setViewName("user/index");
					session.setAttribute("InfoUser", user);
					session.setAttribute("id_user", user.getId_user());
				}
			
			}else {
				_mvShare.addObject("statuslogin","Đăng nhập thất bại, tài khoản hoặc mật khẩu không đúng");
			}
		}else {
			_mvShare.addObject("statuslogin",userServiceImpl.checkvalidlogin(user) );
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value={"/dang-xuat"},method = RequestMethod.GET)
	public String Dangxuat(HttpServletRequest request ,HttpSession session) {
		session.removeAttribute("InfoUser");
		return "redirect:trang-chu";
	}
	
	@RequestMapping(value={"/thong-tin-tai-khoan"})
	public ModelAndView Thongtin(HttpSession session) {
		if(session.getAttribute("InfoUser") == null ) {
			_mvShare.setViewName("user/index");
		}else {
			_mvShare.setViewName("user/account/infouser");
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value={"/chinh-sua-tai-khoan"},method = RequestMethod.GET)
	public ModelAndView Edit(HttpSession session) {
		if(session.getAttribute("InfoUser") == null ) {
			_mvShare.setViewName("user/index");
		}else {
			_mvShare.setViewName("user/account/edituser");
			_mvShare.addObject("status", "");
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value={"/chinh-sua-tai-khoan"},method = RequestMethod.POST)
	public ModelAndView Edit(HttpSession session,@ModelAttribute User user) {
		int count = userServiceImpl.EditUser(user); 
		if(count > 0) {
		  _mvShare.setViewName("user/account/infouser"); 
		  session.setAttribute("InfoUser", user);
		  }
		else {
		  _mvShare.addObject("status", "Chỉnh sửa không thành công");
		  _mvShare.setViewName("user/account/edituser"); 
		  } 
		return _mvShare;
	}
	
	@RequestMapping(value={"/doi-mat-khau"},method = RequestMethod.GET)
	public ModelAndView Changepass(HttpSession session) {
		if(session.getAttribute("InfoUser") == null ) {
			_mvShare.setViewName("user/index");
		}else {
			_mvShare.addObject("changepassword", new ChangePassword());
			_mvShare.setViewName("user/account/changepassword");
			_mvShare.addObject("status", "");
		}
		return _mvShare;
	}
	@RequestMapping(value={"/doi-mat-khau"},method = RequestMethod.POST)
	public ModelAndView Changepass(HttpSession session,@ModelAttribute ChangePassword changepassword) {
		String count = userServiceImpl.ChangePass(changepassword); 
		if(count == null ) {
		  _mvShare.setViewName("user/account/changepassword"); 
		  _mvShare.addObject("status", count);
		  }
		else {
		  _mvShare.addObject("status", count);
		  _mvShare.setViewName("user/account/infouser"); 
		  
		  } 
		return _mvShare;
	}
	
	
}
