package LdStore.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Entity.Bills;
import LdStore.Entity.ChangePassword;
import LdStore.Entity.User;

@Service
public interface IUserService {
	public int AddUser(User user);
	public User CheckUser(User user);
	public boolean CheckAddUser(User user);
	public String checkvalid(User user);
	public String checkvalidlogin(User user);
	public int EditUser(User user);
	public String ChangePass(ChangePassword pass);
	
	public List<Bills> bills(int id_user);
}
