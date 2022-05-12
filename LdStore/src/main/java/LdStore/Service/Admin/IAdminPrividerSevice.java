package LdStore.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import LdStore.Entity.Provider;
@Service
public interface IAdminPrividerSevice {
	public int AddProvder(Provider provider);
	public int EditProvder(Provider provider);
	public int DeleteProvder(int id);
	public List<Provider> SerchProviderByName(String name);
	public List<Provider> SerchProviderByID(int id);
	public List<Provider> AdminSerchProviderByName(String name);
	public List<Provider> AdminSerchProviderPaginate(String name,int start, int totalProductsPage);
}
