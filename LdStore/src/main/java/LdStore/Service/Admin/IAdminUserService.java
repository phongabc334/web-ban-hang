package LdStore.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Entity.ChangePassword;
import LdStore.Entity.User;
@Service
public interface IAdminUserService {
		//admin
		public List<User> AdminSerchUserByName(String name);
		public User AdminUserById(int id);
		
		public String ChangePass(ChangePassword pass);
		
		public int AdminEditUser(User user);
		public int AdminDeleteUser(int id);
		public List<User> AdminSerchUserByNamePaginate(String name,int start, int totalProductsPage);
		
		//thongke
		public List<User> AdminTotolUser();
}
