package LdStore.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import LdStore.Entity.Bills;
import LdStore.Entity.ChangePassword;
import LdStore.Entity.MapperBills;
import LdStore.Entity.MapperUser;
import LdStore.Entity.User;

@Repository
public class UserDao extends BaseDao{

	public int AddUser(User user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO users ");
		sql.append("(`username`,`firstname`,`lastname`, `password`, `email`, `phone`, `address`,`status`,`role`) ");
		sql.append("VALUES ( ");
		sql.append(" '"+ user.getUsername() +"', ");
		sql.append(" '"+ user.getFirstname() +"', ");
		sql.append(" '"+ user.getLastname() +"', ");
		sql.append(" '"+ user.getPassword() +"', ");
		sql.append(" '"+ user.getEmail() +"', ");
		sql.append(" '"+ user.getPhone() +"', ");
		sql.append(" '"+ user.getAddress()+"', ");
		sql.append(" '0', ");
		sql.append(" '"+user.getRole()+"' )");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	
	public List<User> GetUserByAcc(User user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `users` WHERE ");
		sql.append("username = '"+user.getUsername()+"' ");
		sql.append("OR email = '"+user.getEmail()+"' ");
		List<User> checkuser = jdbcTemplate.query(sql.toString(), new MapperUser());
		return checkuser;
	}
	
	public User CheckAddAcc(User user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `users` WHERE ");
		sql.append("username = '"+user.getUsername()+"' ");
		sql.append("OR email = '"+user.getUsername()+"' ");
		User checkuser = jdbcTemplate.queryForObject(sql.toString(), new MapperUser());
		return checkuser;
	}
	public int EditUser(User user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `users` SET  ");
		sql.append("`firstname` ='"+ user.getFirstname() +"', ");
		sql.append("`lastname` ='"+ user.getLastname() +"', ");
		sql.append("`phone` ='"+ user.getPhone() +"', ");
		sql.append("`address` ='"+ user.getAddress()+"' ");
		sql.append("WHERE id_user = '"+ user.getId_user()+"'");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	
	public int ChangePass(ChangePassword pass) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `users` SET  ");
		sql.append("`password` ='"+ pass.getNewppass()+"' ");
		sql.append("WHERE id_user = '"+ pass.getId() +"'");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	
	//don-hang
	public List<Bills> bills(int id_user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `bills` WHERE ");
		sql.append("id_user = '"+id_user+"' ");
		sql.append("ORDER BY create_date DESC ");
		List<Bills> list = jdbcTemplate.query(sql.toString(), new MapperBills()) ;
		return list;
	}
	
	//admin
	public List<User> AdminTotolUser(){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `users`  ");
		sql.append("WHERE  role = 0 ");
		List<User>  list = jdbcTemplate.query(sql.toString(), new MapperUser());
		return list;
	}
	
	
	public List<User> AdminSerchUserByName(String name){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `users`  ");
		sql.append("WHERE  id_user LIKE  '%"+name+"%' OR username LIKE '%"+name+"%' ");
		sql.append("OR  email LIKE  '%"+name+"%' ");
		List<User>  list = jdbcTemplate.query(sql.toString(), new MapperUser());
		return list;
	}
	public List<User> AdminSerchUserByNamePaginate(String name,int start, int totalProductsPage){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `users`  ");
		sql.append("WHERE  id_user LIKE  '%"+name+"%' OR username LIKE '%"+name+"%' ");
		sql.append("OR  email LIKE  '%"+name+"%'  ");
		if(start < 0) {
			start = 0;
		}else {
			start = start -1;
		}
		sql.append("LIMIT "+start+", "+totalProductsPage+" ");
		List<User>  list = jdbcTemplate.query(sql.toString(), new MapperUser());
		return list;
	}
	
	public User AdminUserById(int id){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `users`  ");
		sql.append("WHERE  id_user = '"+id+"' ");
		User  list = jdbcTemplate.queryForObject(sql.toString(), new MapperUser());
		return list;
	}
	public int AdminEditUser(User user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `users` SET  ");
		sql.append("`username` ='"+ user.getUsername() +"', ");
		sql.append("`email` ='"+ user.getEmail() +"', ");
		sql.append("`firstname` ='"+ user.getFirstname() +"', ");
		sql.append("`lastname` ='"+ user.getLastname() +"', ");
		sql.append("`phone` ='"+ user.getPhone() +"', ");
		if(user.isStatus()==true) {
			sql.append("`status` ='0', ");
		}else if(user.isStatus()==false) {
			sql.append("`status` ='1', ");
		}
		sql.append("`role` ='"+ user.getRole() +"', ");
		sql.append("`address` ='"+ user.getAddress()+"' ");
		sql.append("WHERE id_user = '"+ user.getId_user()+"'");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	
	public int AdminDeleteUser(int id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("DELETE FROM `users` WHERE   ");
		sql.append("`id_user`='"+id+"' ");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	
}
