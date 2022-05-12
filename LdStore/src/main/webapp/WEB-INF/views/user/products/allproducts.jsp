<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>
	<c:if test="${ name ne 'cua-hang' }">${name }</c:if>
    <c:if test="${ name eq 'cua-hang' }">Tất cả sản phẩm</c:if>
</title>
<style>
	@media (min-width:1200px){ 
	   body .content-area {
	        flex: 0 0 auto;
	        width: calc(100% - 300px) !important;
	    }
    }
</style>
<div class="archive post-type-archive post-type-archive-product theme-electro woocommerce-shop woocommerce woocommerce-page woocommerce-no-js left-sidebar wpb-js-composer js-comp-ver-6.7.0 vc_responsive">

<div id="content" class="site-content" tabindex="-1">
                <div class="container">
                    <nav class="woocommerce-breadcrumb"><a href="<c:url value="/"/>">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>
                    					<c:if test="${ name ne 'cua-hang' }">${name }</c:if>
                                    	<c:if test="${ name eq 'cua-hang' }">Tất cả sản phẩm</c:if></nav>
                    <div class="site-content-inner row woocommerce-page">
                    	<div style="width:150px">
                    	</div>


                        <c:if test="${ ProductsPaginate.size() > 0 }">
						<div id="primary" class="content-area">
                            <main id="main" class="site-main">

                                <div class="woocommerce-notices-wrapper"></div>
                                <header class="page-header">
                                    <h1 class="page-title">
                                    	<c:if test="${ name ne 'cua-hang' }">${name }</c:if>
                                    	<c:if test="${ name eq 'cua-hang' }">Tất cả sản phẩm</c:if>
                                    </h1>

                                    <p class="woocommerce-result-count">
                                        Hiển thị 
                                        <c:if test="${paginateInfo.currentPage == 1 }">1</c:if>
                                        <c:if test="${paginateInfo.currentPage != 1 }">${ totalProductsPage*(paginateInfo.currentPage-1)}</c:if>
                                         &ndash; 
                                         <c:if test="${totalProductsPage*paginateInfo.currentPage > tongso}">${ tongso }</c:if>
                                         <c:if test="${totalProductsPage*paginateInfo.currentPage <= tongso}">${ totalProductsPage*paginateInfo.currentPage }</c:if>
                                          của ${ tongso } kết quả</p>
                                </header>
                                
                                <div class="shop-control-bar">
                                	<div class="col-md-8"></div>
									<div class="col-md-4">
										<select onchange="location.href=this.value" class="nav-link">
								          <option value="<c:url value="?s=${namesearch}&order=menu_order"/>" <c:if test="${ orderby == '' }"> selected</c:if> >Thứ tự mặc định</option>
								          <option value="<c:url value="?s=${namesearch}&order=popularity"/>" <c:if test="${ orderby == 'popularity'  }"> selected</c:if> >Thứ tự theo được mua nhiều nhất</option>
								          <option value="<c:url value="?s=${namesearch}&order=date"/>" <c:if test="${ orderby == 'date'  }"> selected</c:if> >Mới nhất</option>
								          <option value="<c:url value="?s=${namesearch}&order=price"/>" <c:if test="${ orderby == 'price'  }"> selected</c:if> >Thứ tự theo giá: thấp đến cao</option>
								          <option value="<c:url value="?s=${namesearch}&order=price-desc"/>" <c:if test="${ orderby == 'price-desc'  }"> selected</c:if> >Thứ tự theo giá: cao xuống thấp</option>
								        </select>
									</div>
				        		</div>

                                
                                <ul data-view="grid" data-bs-toggle="shop-products" class="products products list-unstyled row g-0 row-cols-2 row-cols-md-3 row-cols-lg-3 row-cols-xl-3 row-cols-xxl-5">
	
									<c:forEach var="item" items="${ ProductsPaginate }">
										<div class="product type-product">
	                                        <div class="product-outer product-item__outer">
	                                            <div class="product-inner product-item__inner">
	                                                <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />"> ${ item.hangsx } </a></span>
	                                                    <c:if test="${ item.sale > 0 }">
	                                                    	<span class="onsale">-<span class="percentage">${item.sale }%</span></span>
	                                                    </c:if>
	                                                    <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
	                                                        <h2 class="woocommerce-loop-product__title">${ item.name }</h2>
	                                                        <div class="product-thumbnail product-item__thumbnail"><img width="600" height="600" src="<c:url value="/template/user/images/${item.img }"/>" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" /></div>
	                                                    </a>
	                                                </div>
	                                                <div class="product-loop-footer product-item__footer">
	                                                    <div class="price-add-to-cart">
	                                                    	<c:if test="${ item.sale == 0 }">
	                                                    		<span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.price}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
		                                                        </span>
		                                                        </span>
		                                                        </span>
	                                                    	</c:if>
	                                                    	<c:if test="${ item.sale > 0 }">
		                                                    	<span class="price"><span class="electro-price"><ins><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price - item.sale*item.price*0.01}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
	                                                             </span>
	                                                             </ins> <del><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.price}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del></span>
	                                                             </span>
                                                             </c:if>
	                                                        
	                                                    </div>
	                                                    <div class="hover-area">
	                                                        <div class="action-buttons"></div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
									</c:forEach>

                                </ul>

                                <div class="shop-control-bar-bottom">
                                    <p class="woocommerce-result-count">
                                        Hiển thị 
                                        <c:if test="${paginateInfo.currentPage == 1 }">1</c:if>
                                        <c:if test="${paginateInfo.currentPage != 1 }">${ totalProductsPage*(paginateInfo.currentPage-1)}</c:if>
                                         &ndash; 
                                         <c:if test="${totalProductsPage*paginateInfo.currentPage > tongso}">${ tongso }</c:if>
                                         <c:if test="${totalProductsPage*paginateInfo.currentPage <= tongso}">${ totalProductsPage*paginateInfo.currentPage }</c:if>
                                          của ${ tongso } kết quả</p>
                                    <c:if test="${ paginateInfo.totalPage > 1 }">
	                                    <nav class="woocommerce-pagination">
	                                        <ul class='page-numbers'>
	                                        <c:forEach var="item" begin="1" end="${paginateInfo.totalPage }" varStatus="loop">
	                                        	<c:if test="${ (loop.index) == paginateInfo.currentPage }">
	                                        		<li><span aria-current="page" class="page-numbers current">${loop.index }</span></li>
	                                        	</c:if>
	                                        	<c:if test="${ (loop.index) != paginateInfo.currentPage }">
	                                        			<li><a class="page-numbers" href='<c:url value="/cua-hang/?s=${ namesearch }&page=${loop.index }&order=${ orderby }" />'>${loop.index }</a></li>
	                                        	</c:if>
	                                        </c:forEach>
	                                        </ul>
	                                    </nav>
                                    </c:if>
                                </div>


                            </main>
                            <!-- #main -->
                        </div>
                        <!-- #primary -->
						</c:if>
						<c:if test="${ ProductsPaginate.size() ==  0 }">
							<div id="primary" class="content-area">
								<main id="main" class="site-main">
					        
					            <p class="woocommerce-info">Không tìm thấy sản phẩm nào</p>
					
					        
				    			</main><!-- #main -->
							</div>
						</c:if>
                    </div>
                </div>
                <!-- .col-full -->
            </div>

</div>
<script type='text/javascript' id='wc-price-slider-js-extra'>
    /* <![CDATA[ */
    var woocommerce_price_slider_params = {
        "currency_format_num_decimals": "0",
        "currency_format_symbol": "\u20ab",
        "currency_format_decimal_sep": ".",
        "currency_format_thousand_sep": ".",
        "currency_format": "%v\u00a0%s"
    };
    /* ]]> */
</script>