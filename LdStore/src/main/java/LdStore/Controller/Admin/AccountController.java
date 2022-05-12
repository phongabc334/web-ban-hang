package LdStore.Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Entity.User;
import LdStore.Service.User.UserServiceImpl;

@Controller
public class AccountController extends BaseAdminController{
	@Autowired
	UserServiceImpl userServiceImpl = new UserServiceImpl();
	
	@RequestMapping(value={"/admin/login"},method = RequestMethod.GET)
	public ModelAndView Dangnhap() {
		_mvShare.setViewName("admin/account/login");
		_mvShare.addObject("admin", new User());
		return _mvShare;
	}
	@RequestMapping(value={"/admin/login"},method = RequestMethod.POST)
	public String Dangnhap(HttpServletRequest request, HttpSession session,@ModelAttribute User admin) {
		_mvShare.addObject("statusloginAdmin",null);
		if(userServiceImpl.checkvalidlogin(admin)==null) {
			admin = userServiceImpl.CheckUser(admin);
			
			if(admin != null) {
				if(admin.isStatus() == true) {
					_mvShare.addObject("statusloginAdmin","Tài khoản của bạn đang bị khóa");
				}else {
					if(admin.getRole() != 0) {
						session.setAttribute("InfoAdmin", admin);
						session.setAttribute("id_user", admin.getId_user());
						_mvShare.addObject("statusloginAdmin",null);
						return "redirect:index";
					}else {
						_mvShare.addObject("statusloginAdmin","Tài khoản của bạn không phải là tài khoản admin");
					}
				}
			
			}else {
				_mvShare.addObject("statusloginAdmin","Đăng nhập thất bại, tài khoản hoặc mật khẩu không đúng");
			}
		}else {
			_mvShare.addObject("statusloginAdmin",userServiceImpl.checkvalidlogin(admin) );
		}
		
		return "redirect:login";
	}
	@RequestMapping(value={"/admin/dang-xuat"},method = RequestMethod.GET)
	public String Dangxuat(HttpServletRequest request ,HttpSession session) {
		session.removeAttribute("InfoAdmin");
		return "redirect:login";
	}
}
