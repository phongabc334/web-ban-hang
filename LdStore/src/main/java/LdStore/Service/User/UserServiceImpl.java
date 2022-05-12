package LdStore.Service.User;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.BillsDao;
import LdStore.Dao.UserDao;
import LdStore.Entity.Bills;
import LdStore.Entity.ChangePassword;
import LdStore.Entity.User;

@Service
public class UserServiceImpl implements IUserService{

	
	@Autowired
	UserDao userDao = new UserDao();
	
	
	@Override
	public int AddUser(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(15)) );
		
		return userDao.AddUser(user);
	}

	@Override
	public User CheckUser(User user) {
		try {
			String pass = user.getPassword();
			user = userDao.CheckAddAcc(user);
			if(user != null) {
				if(BCrypt.checkpw(pass,user.getPassword())) {
					return user;
				}else {
					return null;
				}
			}
			return null;
		} catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public boolean CheckAddUser(User user) {
		List<User> usercheck = userDao.GetUserByAcc(user);
		if(usercheck.size() > 0) {
			return true;
		}
		return false;
	}
	public boolean AdminCheckAddUser(User user) {
		List<User> usercheck = userDao.GetUserByAcc(user);
		if(usercheck.size() > 1) {
			return true;
		}
		return false;
	}

	@Override
	public String checkvalid(User user) {
		if("".equals(user.getUsername())) {
			return "Không được để trống tên tài khoản";
		}else if("".equals(user.getPassword())) {
			return "Không được để trống mật khẩu";
		}else if("".equals(user.getEmail())) {
			return "Không được để trống email";
		}else if("".equals(user.getFirstname())) {
			return "Không được để trống họ";
		}else if("".equals(user.getLastname())) {
			return "Không được để trống tên";
		}else if("".equals(user.getPhone())) {
			return "Không được để trống số điện thoại";
		}else if("".equals(user.getAddress())) {
			return "Không được để trống địa chỉ";
		}
		
		return null;
	}

	@Override
	public String checkvalidlogin(User user) {
		if("".equals(user.getUsername())) {
			return "Không được để trống tên tài khoản";
		}else if("".equals(user.getPassword())) {
			return "Không được để trống mật khẩu";
		}
		return null;
	}

	@Override
	public int EditUser(User user) {
		return userDao.EditUser(user);
	}

	@Override
	public List<Bills> bills(int id_user) {
		return userDao.bills(id_user);
	}

	@Override
	public String ChangePass(ChangePassword pass) {
		if(BCrypt.checkpw(pass.getOldpass(), pass.getConfirmoldpass())) {
			if(pass.getNewppass().equals(pass.getConfirmpass())) {
				if(pass.getOldpass().equals(pass.getNewppass())) {
					return "Mật khẩu mới không được trùng mật khẩu cũ";
				}else {
					pass.setNewppass(BCrypt.hashpw(pass.getNewppass(), BCrypt.gensalt(15)));
					 int x = userDao.ChangePass(pass);
					 if(x > 0) {
						 return null;
					 }else {
						 return "Đổi mật khẩu thất bại";
					 }
				}
				
			}else {
				return "Mật khẩu xác nhận không đúng";
			}
		}else {
			return "Nhập sai mật khẩu cũ";
		}
	}

}
