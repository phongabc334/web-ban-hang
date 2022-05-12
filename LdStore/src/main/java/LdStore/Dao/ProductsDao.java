package LdStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import LdStore.Dto.MapperProductsDto;
import LdStore.Dto.ProductsDto;
@Repository
public class ProductsDao extends BaseDao{
	
	public final boolean YES = true;
	public final boolean NO = false;
	
	public StringBuffer SqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append(" p.id as id_product ");
		sql.append(", p.id_hangsx ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.detail ");
		sql.append(", p.os ");
		sql.append(", p.cpu ");
		sql.append(", p.screen ");
		sql.append(", p.size ");
		sql.append(", p.weight ");
		sql.append(", p.waterproof ");
		sql.append(", p.mic ");
		sql.append(", p.pin ");
		sql.append(", p.strap ");
		sql.append(", p.img ");
		sql.append(", p.soluong ");
		sql.append(", p.daban ");
		sql.append(", p.create_date ");
		sql.append(", p.create_by ");
		sql.append(", p.update_date ");
		sql.append(", p.update_by ");
		sql.append(", ca.name as hangsx ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("provider AS ca ");
		sql.append("ON p.id_hangsx = ca.id ");
		return sql;
	}
	
	public String SqlProduct(boolean newproduct) {
		StringBuffer  sql = SqlString();
		if(newproduct) {
			sql.append("ORDER BY p.create_date DESC ");
			sql.append("LIMIT 9 ");
		}
		
		return sql.toString();
	}
	
	public String SqlGetAllProduct() {
		StringBuffer  sql = SqlString();
		return sql.toString();
	}
	
	public List<ProductsDto> GetDataProductDto(){
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		String sql = SqlProduct(NO);
		list = jdbcTemplate.query(sql, new MapperProductsDto());
		return list;
	}
	
	public List<ProductsDto> GetDataNewProductDto(){
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		String sql = SqlProduct(YES);
		list = jdbcTemplate.query(sql, new MapperProductsDto());
		return list;
	}
	
	//lay danh sach sp theo id_hangsx
	public List<ProductsDto> GetDataAllProductsById(int id){
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		StringBuffer  sql = SqlString();
		if(id != 0) {
			sql.append("WHERE p.id_hangsx = "+id+" ");
		}
		list = jdbcTemplate.query(sql.toString(), new MapperProductsDto());
		return list;
	}
	
	// lay danh sach sp theo id_hangsx, start,totalpage
	public List<ProductsDto> GetDataProductPaginate(int id, String order, int start, int totalProductsPage){
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		StringBuffer  sql = SqlString();
		if(id != 0) {
			sql.append("WHERE p.id_hangsx = "+id+"  ");
		}
		if(start < 0) {
			start = 0;
		}else {
			start = start -1;
		}
		if(order.equals("popularity")) {
			sql.append(" ORDER BY daban DESC ");
		}
		if(order.equals("date")) {
			sql.append(" ORDER BY create_date DESC ");
		}
		if(order.equals("price")) {
			sql.append(" ORDER BY price ASC ");
		}
		if(order.equals("price-desc")) {
			sql.append(" ORDER BY price DESC ");
		}
		
		sql.append("LIMIT "+start+", "+totalProductsPage+" ");
		list = jdbcTemplate.query(sql.toString(), new MapperProductsDto());
		return list;
	}
	
	// lay 1 danh sach sp theo id
	public String SqlProductById(long id) {
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id = " + id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}
	// lay 1 danh sach sp theo name
	public List<ProductsDto> SqlProductByName(String name) {
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		if(!name.equals("")) {
		sql.append("AND p.name LIKE '%" + name + "%' ");
		}
		return jdbcTemplate.query(sql.toString(), new MapperProductsDto());
	}
	// lay danh sach sp theo name phan trang
	public List<ProductsDto> GetProductPaginateByName(String name,String order, int start, int totalProductsPage){
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		if(start < 0) {
			start = 0;
		}else {
			start = start -1;
		}
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		if(!name.equals("")) {
			sql.append("AND p.name LIKE '%" + name + "%' ");
		}
		if(order.equals("popularity")) {
			sql.append(" ORDER BY daban DESC ");
		}
		if(order.equals("date")) {
			sql.append(" ORDER BY create_date DESC ");
		}
		if(order.equals("price")) {
			sql.append(" ORDER BY price ASC ");
		}
		if(order.equals("price-desc")) {
			sql.append(" ORDER BY price DESC ");
		}
		sql.append("LIMIT "+start+", "+totalProductsPage+" ");
		list = jdbcTemplate.query(sql.toString(), new MapperProductsDto());
		return list;
	}
	
	//lay 1 sp theo id
	public List<ProductsDto> GetProductById(long id) {
		
		String sql = SqlProductById(id);
		List<ProductsDto> list = jdbcTemplate.query(sql, new MapperProductsDto());
		
		return list;
	}
	
	public StringBuffer SqlProductIdCatagory(long id, int id_hangsx) {
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id_hangsx = " + id_hangsx + " ");
		sql.append("AND p.id != " + id + " ");
		sql.append("ORDER BY RAND() ");
		sql.append("LIMIT 5 ");
	
		return sql;
	}
	public List<ProductsDto> GetProductByIdCatagory(long id, int id_hangsx) {
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		String sql = SqlProductIdCatagory(id,id_hangsx).toString();
		list = jdbcTemplate.query(sql, new MapperProductsDto());
		return list;
	}
	
	public ProductsDto FindProductById(long id) {
		String sql = SqlProductById(id);
		ProductsDto product = jdbcTemplate.queryForObject(sql, new MapperProductsDto());
		return product;
	}
	
	public StringBuffer SqlHomeProduct(int id_hangsx) {
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id_hangsx = " + id_hangsx + " ");
		sql.append("ORDER BY RAND() ");
		sql.append("LIMIT 9 ");
		return sql;
	}
	public List<ProductsDto> GetHomeProduct( int id_hangsx) {
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		String sql = SqlHomeProduct(id_hangsx).toString();
		list = jdbcTemplate.query(sql, new MapperProductsDto());
		return list;
	}
	
	
	//admin
	public List<ProductsDto> AdminSearchProductByName(String name) {
		StringBuffer  sql = SqlString();
		sql.append("WHERE ");
		sql.append(" p.name LIKE '%" + name + "%' OR p.id LIKE '%"+name+"%' ");
		List<ProductsDto> list = jdbcTemplate.query(sql.toString(), new MapperProductsDto());
		return list;
	}
	public List<ProductsDto> AdminSearchProductByNamePaginate(String name, int start, int totalProductsPage) {
		StringBuffer  sql = SqlString();
		sql.append("WHERE ");
		sql.append(" p.name LIKE '%" + name + "%' OR p.id LIKE '%"+name+"%' ");
		if(start < 0) {
			start = 0;
		}else {
			start = start -1;
		}
		sql.append("ORDER BY id_product DESC ");
		sql.append("LIMIT "+start+", "+totalProductsPage+" ");
		List<ProductsDto> list = jdbcTemplate.query(sql.toString(), new MapperProductsDto());
		return list;
	}
	public int DeleteProduct(int id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("DELETE FROM `products` ");
		sql.append("WHERE id = '"+id+"' ");
		int list = jdbcTemplate.update(sql.toString());
		return list;
	}
	public int AddProduct(ProductsDto productsDto) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO `products`(`id_hangsx`, `name`, `price`, `sale`, `title`, `detail`, `os`, `cpu`, `screen`, `size`, `weight`,  ");
		sql.append("`waterproof`, `mic`, `pin`, `strap`, `create_by`, `img`, `soluong`) VALUES ( ");
		sql.append(" '"+ productsDto.getId_hangsx() +"', ");
		sql.append(" '"+ productsDto.getName() +"', ");
		sql.append(" '"+ productsDto.getPrice() +"', ");
		sql.append(" '"+ productsDto.getSale() +"', ");
		sql.append(" '"+ productsDto.getTitle() +"', ");
		sql.append(" '"+ productsDto.getDetail() +"', ");
		sql.append(" '"+ productsDto.getOs() +"', ");
		sql.append(" '"+ productsDto.getCpu() +"', ");
		sql.append(" '"+ productsDto.getScreen() +"', ");
		sql.append(" '"+ productsDto.getSize() +"', ");
		sql.append(" '"+ productsDto.getWeight() +"', ");
		sql.append(" '"+ productsDto.getWaterproof() +"', ");
		sql.append(" '"+ productsDto.getMic() +"', ");
		sql.append(" '"+ productsDto.getPin() +"', ");
		sql.append(" '"+ productsDto.getStrap() +"', ");
		sql.append(" '"+ productsDto.getCreate_by() +"', ");
		sql.append(" '"+ productsDto.getImg() +"', ");
		sql.append(" '"+ productsDto.getSoluong() +"') ");
		int list = jdbcTemplate.update(sql.toString());
		return list;
	}
	public int EditProduct(ProductsDto productsDto) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `products` SET  ");
		sql.append(" `id_hangsx` = '"+ productsDto.getId_hangsx() +"', ");
		sql.append(" `name` = '"+ productsDto.getName() +"', ");
		sql.append(" `price` = '"+ productsDto.getPrice() +"', ");
		sql.append(" `sale`= '"+ productsDto.getSale() +"', ");
		sql.append(" `title` = '"+ productsDto.getTitle() +"', ");
		sql.append(" `detail`= '"+ productsDto.getDetail() +"', ");
		sql.append(" `os` = '"+ productsDto.getOs() +"', ");
		sql.append(" `cpu`='"+ productsDto.getCpu() +"', ");
		sql.append(" `screen`='"+ productsDto.getScreen() +"', ");
		sql.append(" `size`='"+ productsDto.getSize() +"', ");
		sql.append(" `weight`='"+ productsDto.getWeight() +"', ");
		sql.append(" `waterproof`='"+ productsDto.getWaterproof() +"', ");
		sql.append(" `mic`= '"+ productsDto.getMic() +"', ");
		sql.append(" `pin`= '"+ productsDto.getPin() +"', ");
		sql.append(" `strap`= '"+ productsDto.getStrap() +"', ");
		sql.append(" `update_by`='"+ productsDto.getUpdate_by() +"', ");
		sql.append(" `img`='"+ productsDto.getImg() +"', ");
		sql.append(" `soluong`='"+ productsDto.getSoluong() +"' ");
		sql.append(" WHERE id = '"+ productsDto.getId_product() +"' ");
		int list = jdbcTemplate.update(sql.toString());
		return list;
	}
	
	public List<ProductsDto> AdminProductOrderByDaBan() {
		StringBuffer  sql = SqlString();
		sql.append("ORDER BY p.daban DESC ");
		List<ProductsDto> list = jdbcTemplate.query(sql.toString(), new MapperProductsDto());
		return list;
	}
}
