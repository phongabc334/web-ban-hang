package LdStore.Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import LdStore.Dto.PaginatesDto;
import LdStore.Entity.ChangePassword;
import LdStore.Entity.User;
import LdStore.Service.Admin.UserAdminServiceImpl;
import LdStore.Service.User.PanigatesServiceImpl;
import LdStore.Service.User.UserServiceImpl;

@Controller
public class UserManagerController extends BaseAdminController{
	@Autowired
	UserAdminServiceImpl adminUserServiceImpl = new UserAdminServiceImpl();
	
	@Autowired
	UserServiceImpl userServiceImpl = new UserServiceImpl();
	
	@Autowired
	PanigatesServiceImpl paginateService;
	
	private int totalProductsPage = 10;
	
	@RequestMapping(value={"/admin/quan-ly-tai-khoan"})
	public ModelAndView AllUser(@RequestParam(value="s", required = false) String s ,@RequestParam(value="page", required = false) String currentPage) {
		if(s == null) {
			s = "";
		}
		if(currentPage==null) {
			currentPage = "1";
		}
		int totalData = adminUserServiceImpl.AdminSerchUserByName(s).size();
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage, (Integer.parseInt(currentPage)));
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		_mvShare.setViewName("admin/account/alluser");
		_mvShare.addObject("AdminEditUserStatus",null);
		_mvShare.addObject("namesearch",s);
		_mvShare.addObject("AdminUser", adminUserServiceImpl.AdminSerchUserByNamePaginate(s,paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	}
	@RequestMapping(value={"/admin/them-tai-khoan"},method = RequestMethod.GET)
	public ModelAndView adduser() {
		try {
			_mvShare.setViewName("admin/account/adduser");
			_mvShare.addObject("AdminAddUser", new User());
			_mvShare.addObject("AdminAddUserStatus",null);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value={"/admin/them-tai-khoan"},method = RequestMethod.POST)
	public ModelAndView adduser(HttpServletRequest request ,@ModelAttribute User user) {
		try {
			User adduser =  user;
			if(userServiceImpl.CheckAddUser(user)) {
				 
				_mvShare.addObject("AdminAddUserStatus","Tên User hoặc Email đã tồn tại");
			}else { 
				if(userServiceImpl.checkvalid(adduser) == null) {
					int count = userServiceImpl.AddUser(adduser); 
					if(count > 0) {
					  _mvShare.addObject("AdminAddUserStatus","ok");
					  }
					else {
					  _mvShare.addObject("AdminAddUserStatus", "Thêm không thành công");
					  } 
				}else {
					_mvShare.addObject("AdminAddUserStatus",userServiceImpl.checkvalid(adduser) );
				}
				
			  }
			_mvShare.setViewName("admin/account/adduser");
			_mvShare.addObject("AdminAddUser", new User());
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value={"/admin/thong-tin-tai-khoan/{id}"})
	public ModelAndView chitiet( @PathVariable int id ) {
		try {
			_mvShare.setViewName("admin/account/detailuser");
			_mvShare.addObject("AdmindetailUser",adminUserServiceImpl.AdminUserById(id));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	@RequestMapping(value={"/admin/cap-nhat-tai-khoan/{id}"},method = RequestMethod.GET)
	public ModelAndView edituser(@PathVariable int id) {
		try {
			_mvShare.addObject("AdminEditUser", adminUserServiceImpl.AdminUserById(id));
			_mvShare.addObject("AdminEditPassUserStatus", null);
			_mvShare.setViewName("admin/account/updateuser");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	@RequestMapping(value={"/admin/cap-nhat-tai-khoan/{id}"},method = RequestMethod.POST)
	public ModelAndView edituser(@PathVariable int id,@ModelAttribute User user,HttpSession session) {
		try {
			User adduser =  user;
			if(userServiceImpl.AdminCheckAddUser(user)) {
				 
				_mvShare.addObject("AdminEditUserStatus","Tên User hoặc Email đã tồn tại");
			}else { 
				if(userServiceImpl.checkvalid(adduser) == null) {
					int count = adminUserServiceImpl.AdminEditUser(adduser); 
					if(count > 0) {
					  _mvShare.addObject("AdminEditUserStatus","ok");
					  }
					else {
					  _mvShare.addObject("AdminEditUserStatus", "Cập nhật không thành công");
					  } 
				}else {
					_mvShare.addObject("AdminEditUserStatus",userServiceImpl.checkvalid(adduser) );
				}
			  }
			_mvShare.setViewName("admin/account/updateuser");
			_mvShare.addObject("AdminEditUser", adminUserServiceImpl.AdminUserById(id));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	@RequestMapping(value={"admin/doi-mat-khau/{id}"},method = RequestMethod.GET)
	public ModelAndView Changepass(HttpSession session,@PathVariable int id) {
		try {
			_mvShare.addObject("changepassword", new ChangePassword());
			_mvShare.setViewName("admin/account/changepassword");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return _mvShare;
	}
	@RequestMapping(value={"admin/doi-mat-khau/{id}"},method = RequestMethod.POST)
	public String Changepass(HttpServletRequest request ,HttpSession session,@PathVariable int id,@ModelAttribute ChangePassword changepassword) {
		try {
			String count = adminUserServiceImpl.ChangePass(changepassword); 
			if(count != null ) {
				_mvShare.addObject("AdminEditPassUserStatus", count);
			}
			else {
			  _mvShare.addObject("AdminEditPassUserStatus", "ok");
			  }
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = "admin/deleteuser/{id}")
	public String DeleteProvider(HttpServletRequest request, @PathVariable int id) {
		try {
			if(adminUserServiceImpl.AdminDeleteUser(id) > 0) {
				_mvShare.addObject("statusOkDeleteUser","Xóa thành công");
			}else {
				_mvShare.addObject("statusNoDeleteUser","Xóa không thành công");
			}
		} catch (Exception e) {
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
}
