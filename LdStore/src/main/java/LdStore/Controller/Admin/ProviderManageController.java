package LdStore.Controller.Admin;

import java.util.HashMap;
import java.util.List;

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
import LdStore.Entity.Provider;
import LdStore.Service.Admin.ProviderAdminServiceImpl;
import LdStore.Service.User.HomeServiceImpl;
import LdStore.Service.User.PanigatesServiceImpl;
@Controller
public class ProviderManageController extends BaseAdminController{
	@Autowired
	HomeServiceImpl _HomeService;
	
	@Autowired
	ProviderAdminServiceImpl providerServiceImpl;
	
	@Autowired
	PanigatesServiceImpl paginateService;
	
	//sp trong 1 page
	private int totalProductsPage = 10;
	
	@RequestMapping(value = {"/admin/quan-ly-danh-muc"})
	public ModelAndView ProviderSearch(@RequestParam(value="s", required = false) String s ,@RequestParam(value="page", required = false) String currentPage) {
		if(s == null) {
			s = "";
		}
		if(currentPage==null) {
			currentPage = "1";
		}
		int totalData = providerServiceImpl.AdminSerchProviderByName(s).size();
		PaginatesDto paginatesDto = paginateService.GetInfoPanigates(totalData, totalProductsPage, (Integer.parseInt(currentPage)));
		_mvShare.addObject("paginateInfo", paginatesDto);
		_mvShare.addObject("tongso", totalData);
		_mvShare.addObject("totalProductsPage", totalProductsPage);
		_mvShare.setViewName("admin/provider/provider");
		_mvShare.addObject("statusAddProviser","");
		_mvShare.addObject("danhmuc", providerServiceImpl.AdminSerchProviderPaginate(s,paginatesDto.getStart(),totalProductsPage));
		return _mvShare;
	} 
	
	@RequestMapping(value = {"/admin/them-danh-muc"},method = RequestMethod.GET)
	public ModelAndView AddProvider() {
		try {
			_mvShare.setViewName("admin/provider/addprovider");
			_mvShare.addObject("provider", new Provider());
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return _mvShare;
	}
	@RequestMapping(value = {"/admin/them-danh-muc"},method = RequestMethod.POST)
	public String AddProvider(HttpServletRequest request,@ModelAttribute Provider provider) {
		try {
			Provider Addprovider = provider;
			String nameProvider = Addprovider.getName();
			List<Provider> list = providerServiceImpl.SerchProviderByName(nameProvider);
			if(list.size() > 0) {
				_mvShare.addObject("statusAddProviser","Thêm không thành công, danh mục đã tồn tại");
				_mvShare.setViewName("admin/provider/addprovider");
			}else {
				if(providerServiceImpl.AddProvder(Addprovider) > 0) {
					
					_mvShare.addObject("statusAddProviser","ok");
					
				}else {
					_mvShare.addObject("statusAddProviser","Thêm không thành công");
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	@RequestMapping(value = {"/admin/sua-danh-muc/{id}"},method = RequestMethod.GET)
	public ModelAndView EditProvider(@PathVariable int id) {
		try {
			Provider list = providerServiceImpl.SerchProviderByID(id).get(0);
			_mvShare.setViewName("admin/provider/updateprovider");
			_mvShare.addObject("editprovider", list);
		} catch (Exception e) {
		}
		
		return _mvShare;
	}
	@RequestMapping(value = {"/admin/sua-danh-muc/{id}"},method = RequestMethod.POST)
	public String EditProvider(HttpServletRequest request,@ModelAttribute Provider provider) {
		try {
			String nameProvider = provider.getName();
			List<Provider> list = providerServiceImpl.SerchProviderByName(nameProvider);
			if(list.size() > 1) {
				_mvShare.addObject("statusEditProviser","Sửa không thành công, tên danh mục đã tồn tại");
				_mvShare.setViewName("admin/provider/addprovider");
			}else {
				if(providerServiceImpl.EditProvder(provider) > 0) {
					
					_mvShare.addObject("statusEditProviser","ok");
					
				}else {
					_mvShare.addObject("statusEditProviser","Sửa không thành công");
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = "admin/deleteprovider/{id}")
	public String DeleteProvider(HttpServletRequest request, @PathVariable int id) {
		try {
			if(providerServiceImpl.DeleteProvder(id) > 0) {
				_mvShare.addObject("statusOkProviser","Xóa thành công");
			}else {
				_mvShare.addObject("statusNoProviser","Xóa không thành công");
			}
			_mvShare.setViewName("admin/provider/provider");
			_mvShare.addObject("danhmuc", _HomeService.GetDataCategory());
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:"+ request.getHeader("Referer");
	}
}
