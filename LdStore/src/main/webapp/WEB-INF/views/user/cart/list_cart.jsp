<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Giỏ Hàng</title>
        <div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="trang-chu">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i>
                </span>Giỏ hàng</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">
                            <article id="post-27" class="post-27 page type-page status-publish hentry">

                                <header class="entry-header">
                                

                                    <h1 class="entry-title">Giỏ hàng</h1>
                                </header>
		                                <c:if test="${not empty status }">
		                                <div class="col-auto d-flex justify-content-center align-items-center" >
												<div class="woocommerce-notices-wrapper" style="width:50%; text-align:center">
													<div class="woocommerce-message" role="alert" style="background-color: darkred;">
														 ${ status }	</div>
												</div>
												</div>
											</c:if>
                                
                                <c:if test="${ Cart.size() <= 0 or Cart.size() == null }">
                                	<div class="entry-content">
										<div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12">
											<div class="vc_column-inner">
												<div class="wpb_wrapper">
													<div class="woocommerce">
														<div class="woocommerce-notices-wrapper">
															<p class="cart-empty woocommerce-info">Chưa có sản phẩm nào trong giỏ hàng.</p>
														</div>	
														<p class="return-to-shop">
															<a class="button wc-backward" href="<c:url value="/cua-hang"/>">Quay trở lại cửa hàng</a>
														</p>
											</div></div></div></div></div>
									</div>
                                </c:if>
                              	<c:if test="${ Cart.size() > 0 }">
                                <div class="entry-content">
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <div class="woocommerce">
                                                        <div class="woocommerce-notices-wrapper"></div>
                                                        <form class="woocommerce-cart-form" action="" method="post">

                                                            <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents" cellspacing="0">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="product-remove">&nbsp;</th>
                                                                        <th class="product-thumbnail">&nbsp;</th>
                                                                        <th class="product-name">Sản phẩm</th>
                                                                        <th class="product-price">Giá</th>
                                                                        <th class="product-quantity">Số lượng</th>
                                                                        <th class="product-subtotal">Tạm tính</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                	<c:forEach var="item" items="${ Cart }">
	                                                                    <tr class="woocommerce-cart-form__cart-item cart_item">
	
	                                                                        <td class="product-remove">
	                                                                            <a href="<c:url value="DeleteCart/${ item.value.productsDto.id_product  }"/>" class="remove" aria-label="Xóa sản phẩm này" data-product_id="47881" data-product_sku="">×</a>                                                                            </td>
	
	                                                                        <td class="product-thumbnail">
	                                                                            <a href="<c:url value="product/${ item.value.productsDto.id_product }"/>"><img width="600" height="600" src="<c:url value="/template/user/images/${item.value.productsDto.img }"/>" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" sizes="(max-width: 600px) 100vw, 600px"></a>
	                                                                        </td>
	                                                                        <td class="product-name" data-title="Sản phẩm">
	                                                                            <a href="<c:url value="product/${ item.value.productsDto.id_product }"/>">${ item.value.productsDto.name }</a> </td>
	                                                                        <td class="product-price" data-title="Giá">
	                                                                        	<span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.value.productsDto.price - item.value.productsDto.price*item.value.productsDto.sale*0.01}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							                                                    </span> </span></span>
	                                                                        </td>
	                                                                        <td class="product-quantity" data-title="Số lượng">
	                                                                            <div class="quantity">
	                                                                                <input type="number"  data-id="${ item.value.productsDto.id_product }"  id="quanty-cart-${ item.value.productsDto.id_product }" class="input-text qty text edit-cart" step="1" min="0" max="10" name="" value="${ item.value.quanty }" title="Qty" size="4" inputmode="numeric" />
	                                                                            </div>
	                                                                        </td>
	                                                                        <td class="product-subtotal" data-title="Tạm tính">
	                                                                            <span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.value.totalPrice}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							                                                    </span> </span></span>
	                                                                        </td>
	                                                                    </tr>
                                                                    </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </form>
                                                        <div class="cart-collaterals">
                                                            <div class="cart_totals ">
                                                                <h2>Cộng giỏ hàng</h2>
                                                                <table cellspacing="0" class="shop_table shop_table_responsive">
                                                                    <tbody>
                                                                        <tr class="cart-subtotal">
                                                                            <th>Tạm tính</th>
                                                                            <td data-title="Tạm tính">
                                                                            	<span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${totalPrice}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							                                                    </span> </span></span>
                                                                            </td>
                                                                        </tr>
                                                                        <tr class="order-total">
                                                                            <th>Tổng</th>
                                                                            <td data-title="Tổng">
                                                                            	<strong>
                                                                            		<span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${totalPrice}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							                                                    	</span> </span></span>
                                                                           		</strong> 
                                                                           	</td>
                                                                        </tr>
                                                                        <tr>
                                                                        	<td style="width:100%">
                                                                        		<div class="wc-proceed-to-checkout col-auto d-flex justify-content-center align-items-center" style="display:block">
				                                                                    <a href="<c:url value="checkout"/>" class="checkout-button button alt wc-forward">Tiến hành thanh toán</a>
				                                                                </div>
                                                                            </div>
                                                                        	</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
								</c:if>
                            </article>

                        </main>
                    </div>

                </div>
            </div>
        </div>
<content tag="script">
<script>
	$(document).ready(function() {
	    $(".quantity input").on("change", function() {
	        var id = $(this).attr("data-id");
	        var quanty = $("#quanty-cart-"+id).val();
	        if(quanty == 0){
	        	window.location = "DeleteCart/"+id;
	        }else{
	        	window.location = "EditCart/"+id+"/"+quanty;
	        }
	    });
	});
</script>

</content>