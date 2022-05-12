package LdStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import LdStore.Entity.Provider;
import LdStore.Entity.MapperProvider;

@Repository
public class ProviderDao extends BaseDao{

	public List<Provider> GetDataCategory(){
		List<Provider> list = new ArrayList<Provider>();
		String sql = "SELECT * FROM provider";
		list = jdbcTemplate.query(sql, new MapperProvider());
		return list;
	}
	public int AddProvder(Provider provider) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO `provider`(`name`, `description`) VALUES (  ");
		sql.append("'"+provider.getName()+"' , ");
		sql.append("'"+provider.getDescription()+"' ) ");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	public List<Provider> SerchProviderByName(String name){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `provider` WHERE   ");
		sql.append("name = '"+name+"' ");
		List<Provider>  list1 = jdbcTemplate.query(sql.toString(), new MapperProvider());
		return list1;
	}
	public List<Provider> SerchProviderByID(int id){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `provider` WHERE   ");
		sql.append("id = '"+id+"' ");
		List<Provider>  list1 = jdbcTemplate.query(sql.toString(), new MapperProvider());
		return list1;
	}
	
	public int EditProvder(Provider provider) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `provider` SET   ");
		sql.append("`name`='"+provider.getName()+"' , ");
		sql.append("`description`='"+provider.getDescription()+"' ");
		sql.append("WHERE id = '"+provider.getId()+"' ");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	
	public int DeleteProvder(int id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("DELETE FROM `provider` WHERE   ");
		sql.append("`id`='"+id+"' ");
		int insert = jdbcTemplate.update(sql.toString()) ;
		return insert;
	}
	
	public List<Provider> AdminSerchProviderByName(String name){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `provider`  ");
		sql.append("WHERE  name LIKE  '%"+name+"%' OR id LIKE  '%"+name+"%' ");
		List<Provider>  list = jdbcTemplate.query(sql.toString(), new MapperProvider());
		return list;
	}
	public List<Provider> AdminSerchProviderPaginate(String name,int start, int totalProductsPage){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM `provider`  ");
		sql.append("WHERE  name LIKE  '%"+name+"%' OR id LIKE  '%"+name+"%' ");
		if(start < 0) {
			start = 0;
		}else {
			start = start -1;
		}
		sql.append("LIMIT "+start+", "+totalProductsPage+" ");
		List<Provider>  list = jdbcTemplate.query(sql.toString(), new MapperProvider());
		return list;
	}
	
}
