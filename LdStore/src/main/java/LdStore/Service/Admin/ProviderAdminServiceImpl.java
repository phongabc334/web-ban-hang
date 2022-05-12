package LdStore.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LdStore.Dao.ProviderDao;
import LdStore.Entity.Provider;

@Service
public class ProviderAdminServiceImpl implements IAdminPrividerSevice{
	
	@Autowired
	ProviderDao providerDao;
	
	@Override
	public int AddProvder(Provider provider) {
		try {
			return providerDao.AddProvder(provider);
		}catch (Exception e) {
			return 0;
		}
		
	}
	
	@Override
	public int EditProvder(Provider provider) {
		try {
			return providerDao.EditProvder(provider);
		}catch (Exception e) {
			return 0;
		}
	}
	public int DeleteProvder(int id) {
		try {
			return providerDao.DeleteProvder(id);
		}catch (Exception e) {
			return 0;
		}
	}
	
	@Override
	public List<Provider> SerchProviderByName(String name) {
		return providerDao.SerchProviderByName(name);
	}

	@Override
	public List<Provider> SerchProviderByID(int id) {
		return providerDao.SerchProviderByID(id);
	}
	
	@Override
	public List<Provider> AdminSerchProviderByName(String name) {
		return providerDao.AdminSerchProviderByName(name);
	}

	@Override
	public List<Provider> AdminSerchProviderPaginate(String name, int start, int totalProductsPage) {
		return providerDao.AdminSerchProviderPaginate(name, start, totalProductsPage);
	}

}
