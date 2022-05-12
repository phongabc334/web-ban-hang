package LdStore.Service.Admin;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.UserDao;
import LdStore.Entity.ChangePassword;
import LdStore.Entity.User;

@Service
public class UserAdminServiceImpl implements IAdminUserService {

	@Autowired
	UserDao userDao = new UserDao();
	
	@Override
	public List<User> AdminSerchUserByName(String name) {
		return userDao.AdminSerchUserByName(name);
	}

	@Override
	public User AdminUserById(int id) {
		return userDao.AdminUserById(id);
	}

	@Override
	public int AdminEditUser(User user) {
		return userDao.AdminEditUser(user);
	}

	@Override
	public List<User> AdminSerchUserByNamePaginate(String name, int start, int totalProductsPage) {
		return userDao.AdminSerchUserByNamePaginate(name, start, totalProductsPage);
	}

	@Override
	public int AdminDeleteUser(int id) {
		return userDao.AdminDeleteUser(id);
	}

	@Override
	public String ChangePass(ChangePassword pass) {
		pass.setNewppass(BCrypt.hashpw(pass.getNewppass(), BCrypt.gensalt(15)));
		 int x = userDao.ChangePass(pass);
		 if(x > 0) {
			 return null;
		 }else {
			 return "Đổi mật khẩu thất bại";
		 }
	}

	@Override
	public List<User> AdminTotolUser() {
		return userDao.AdminTotolUser();
	}

}
