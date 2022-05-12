<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Đơn hàng của bạn</title>
        <div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="/LdStore/">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i>
                </span>Đơn hàng của bạn</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">
                            <article id="post-27" class="post-27 page type-page status-publish hentry">

                                <header class="entry-header">
                                

                                    <h1 class="entry-title">Chi tiết đơn hàng</h1>
                                </header>
		                                <c:if test="${not empty status }">
		                                <div class="col-auto d-flex justify-content-center align-items-center" >
												<div class="woocommerce-notices-wrapper" style="width:50%; text-align:center">
													<div class="woocommerce-message" role="alert" style="background-color: darkred;">
														 ${ status }	</div>
												</div>
												</div>
											</c:if>
                                
                                <c:if test="${ billdetail.size() <= 0 or billdetail.size() == null }">
                                	<div class="entry-content">
										<div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12">
											<div class="vc_column-inner">
												<div class="wpb_wrapper">
													<div class="woocommerce">
														<div class="woocommerce-notices-wrapper">
															<p class="cart-empty woocommerce-info">Bạn chưa có đơn hàng nào.</p>
														</div>	
														<p class="return-to-shop">
															<a class="button wc-backward" href="<c:url value="/cua-hang"/>">Bắt đầu mua hàng</a>
														</p>
											</div></div></div></div></div>
									</div>
                                </c:if>
                              	
                              	<c:if test="${ billdetail.size() > 0 }">
                                <div class="entry-content">
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <div class="woocommerce row">
                                                        <div class="woocommerce-notices-wrapper"></div>
                                                        <div class="col-md-6">
                                                            <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents" cellspacing="0">
                                                                <tbody>
                                                                	<tr>
                                                                        <th class="product-name">Tên người nhận :</th>
                                                                        <td> ${ userbilldetail.user }</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th class="product-name">Số điện thoại người nhận :</th>
                                                                        <td> ${ userbilldetail.phone }</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th class="product-name">Địa chỉ người nhận :</th>
                                                                        <td> ${ userbilldetail.address }</td>
                                                                    </tr>
                                                                    
                                                                    <tr>
                                                                        <th class="product-name">Hình thức thanh toán : </th>
                                                                        <td>${ userbilldetail.payments }
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th class="product-name">Ghi chú :</th>
                                                                        <td> ${ userbilldetail.note }</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th class="product-name">Tổng tiền:</th>
                                                                        <td> <span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${userbilldetail.total}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							                                                    </span> </span></span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th class="product-name">Trạng thái : </th>
                                                                        <td>${ userbilldetail.status }
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <c:if test="${ userbilldetail.status == 'Đang giao hàng' }">
                                                            	<div class="alert alert-danger" role="alert">
																  Nếu bạn đã nhận được hàng, hãy chọn >> <a href="<c:url value="/cap-nhat-don-hang/${ userbilldetail.id  }/0"/>" class="alert-link">Đã nhận hàng</a>.
																</div>
                                                            </c:if>
                                                            <c:if test="${ userbilldetail.status == 'Đang chờ' }">
                                                            	<div class="alert alert-danger" role="alert">
																  Nếu bạn muốn hủy đơn hàng, hãy chọn >> <a href="<c:url value="/cap-nhat-don-hang/${ userbilldetail.id  }/1"/>" class="alert-link">Hủy đơn hàng</a>.
																</div>
                                                            </c:if>
                                                    	</div>
                                                        
                                                        <div class="col-md-6">
                                                            <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents" cellspacing="0">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="product-remove">&nbsp;</th>
                                                                        <th class="product-thumbnail">&nbsp;</th>
                                                                        <th class="product-name">Tên sản phẩm</th>
                                                                        <th class="product-price">Số lượng</th>
                                                                        <th class="product-price">Giá</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                	<c:forEach var="item" items="${ billdetail }">
	                                                                    <tr class="woocommerce-cart-form__cart-item cart_item">
	
	                                                                        <td class="product-price"></td>
	                                                                        <td class="product-thumbnail" data-title="Ảnh">
	                                                                            <a href="<c:url value="/product/${ item.id_product }"/>"><img width="600" height="600" src="<c:url value="/template/user/images/${item.img }"/>" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" sizes="(max-width: 600px) 100vw, 600px"></a>
	                                                                        </td>
	                                                                        <td class="product-name" data-title="Sản phẩm">
	                                                                            <a href="<c:url value="/product/${ item.id_product }"/>">${ item.name }</a> </td>
	                                                                        <td class="product-price" data-title="Số lượng">
	                                                                        	<p>${ item.quanty }</p>
	                                                                        </td>
	                                                                        <td class="product-price" data-title="Giá">
	                                                                        	<span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.total/item.quanty}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							                                                    </span> </span></span>
	                                                                        </td>
	                                                                    </tr>
                                                                    </c:forEach>
                                                                </tbody>
                                                            </table>
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