package LdStore.Dto;

public class CartDto {

	private int quanty;
	private double totalPrice;
	private ProductsDto productsDto;
	public CartDto() {
		super();
	}
	public CartDto(int quanty, double totalPrice, ProductsDto productsDto) {
		super();
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.productsDto = productsDto;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductsDto getProductsDto() {
		return productsDto;
	}
	public void setProductsDto(ProductsDto productsDto) {
		this.productsDto = productsDto;
	}
	
}
