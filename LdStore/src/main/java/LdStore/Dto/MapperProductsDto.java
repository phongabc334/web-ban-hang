package LdStore.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProductsDto implements RowMapper<ProductsDto>{

	@Override
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto product = new ProductsDto();
		product.setId_product(rs.getLong("id_product"));
		product.setId_hangsx(rs.getInt("id_hangsx"));
		product.setName(rs.getString("name"));
		product.setPrice(rs.getDouble("price"));
		product.setSale(rs.getInt("sale"));
		product.setTitle(rs.getString("title"));
		product.setDetail(rs.getString("detail"));
		product.setCreate_date(rs.getDate("create_date"));
		product.setCreate_by(rs.getString("create_by"));
		product.setUpdate_date(rs.getDate("update_date"));
		product.setUpdate_by(rs.getString("update_by"));
		product.setHangsx(rs.getString("hangsx"));
		product.setOs(rs.getString("os"));
		product.setCpu(rs.getString("cpu"));
		product.setScreen(rs.getString("screen"));
		product.setSize(rs.getString("size"));
		product.setWeight(rs.getString("weight"));
		product.setWaterproof(rs.getString("waterproof"));
		product.setMic(rs.getString("mic"));
		product.setPin(rs.getString("pin"));
		product.setStrap(rs.getString("strap"));
		product.setImg(rs.getString("img"));
		product.setSoluong(rs.getInt("soluong"));
		product.setDaban(rs.getInt("daban"));
		return product;
	}
	
	
}
