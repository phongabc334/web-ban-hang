<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Đơn hành của bạn</title>
        <div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="trang-chu">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i>
                </span>Đơn hàng của bạn</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">
                            <article id="post-27" class="post-27 page type-page status-publish hentry">

                                <header class="entry-header">
                                

                                    <h1 class="entry-title">Đơn hàng của bạn</h1>
                                </header>
		                                <c:if test="${not empty status }">
		                                <div class="col-auto d-flex justify-content-center align-items-center" >
												<div class="woocommerce-notices-wrapper" style="width:50%; text-align:center">
													<div class="woocommerce-message" role="alert" style="background-color: darkred;">
														 ${ status }	</div>
												</div>
												</div>
											</c:if>
                                
                                <c:if test="${ bills.size() <= 0 or bills.size() == null }">
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
                              	<c:if test="${ bills.size() > 0 }">
                                <div class="entry-content">
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <div class="woocommerce">
                                                        <div class="woocommerce-notices-wrapper"></div>
                                                            <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents" cellspacing="0">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="product-remove">&nbsp;</th>
                                                                        <th class="product-name">Người nhận</th>
                                                                        <th class="product-quantity">Số điện thoại</th>
                                                                        <th class="product-quantity">Địa chỉ</th>
                                                                        <th class="product-quantity">Tổng tiền</th>
                                                                        <th class="product-quantity">Trạng thái</th>
                                                                        <th class="product-quantity">&nbsp;</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                	
                                                                	<c:forEach var="item" items="${ bills }">
		                                                                    <tr class="woocommerce-cart-form__cart-item cart_item">
		                                                                        <td class="product-quantity">
		                                                                        </td>
		                                                                        <td class="product-quantity">
		                                                                        	${ item.user }
		                                                                        </td>
		                                                                        <td class="product-quantity" >
		                                                                        	${ item.phone }
		                                                                        </td>
		                                                                        <td class="product-quantity" >
		                                                                        	${ item.address }
		                                                                        </td>
		                                                                        <td class="product-quantity">
		                                                                        	<span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.total}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							                                                    </span> </span></span>
		                                                                        </td>
		                                                                        <td class="product-quantity">
		                                                                       	 	${ item.status }
		                                                                        </td>
		                                                                        <td class="product-quantity">
		                                                                        	<a href="<c:url value="chi-tiet-don-hang/${ item.id }"/>">Chi tiết</a>
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
								</c:if>
                            </article>

                        </main>
                    </div>

                </div>
            </div>
        </div>