<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>${ product.name }</title>
<c:if test="${not empty productstatus }">
	<div class="col-auto d-flex justify-content-center align-items-center" style="margin-top: 3em;">
	<div class="woocommerce-notices-wrapper" style="width:50%; text-align:center">
		<div class="woocommerce-message" role="alert" style="background-color: darkred;">
			 ${ productstatus }	</div>
	</div>
	</div>
</c:if>
<c:if test="${ empty productstatus }">
<div class="product-template-default single single-product postid-44473 theme-electro woocommerce woocommerce-page woocommerce-no-js full-width normal wpb-js-composer js-comp-ver-6.7.0 vc_responsive">
	<div id="content" class="site-content" tabindex="-1">
                    <div class="container">
                        <nav class="woocommerce-breadcrumb"><a href="<c:url value="/"/>">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span><a href="<c:url value="/cua-hang/?s=${ product.id_hangsx }" />"> ${ product.hangsx } </a><span class="delimiter"><i class="fa fa-angle-right"></i></span>${ product.name }</nav>
                        <div class="site-content-inner row">
                            <div id="primary" class="content-area">
                                <main id="main" class="site-main">
                                    <div id="product-44473" class="product type-product">

                                        <div class="single-product-wrapper row">
                                            <div class="product-images-wrapper">

                                                <c:if test="${product.sale != 0 }">
                                                	<span class="onsale">-<span class="percentage">${ product.sale }</span>%</span>
                                                </c:if>
                                                
                                                <div class="woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-5 images electro-carousel-loaded" data-columns="5" style="opacity: 0; transition: opacity .25s ease-in-out;">
                                                    <figure class="woocommerce-product-gallery__wrapper">
                                                        
                                                        	<div class="woocommerce-product-gallery__image">
                                                            <a href=""><img width="600" height="600" src="<c:url value="/template/user/images/${product.img }"/>" class="" alt="" loading="lazy" title=""
                                                                    sizes="(max-width: 600px) 100vw, 600px" /></a>
                                                        	</div>
                                                        
                                                        
                                                        
                                                    </figure>
                                                </div>
                                            </div>
                                            <!-- /.product-images-wrapper -->

                                            <div class="summary entry-summary">
                                                <span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ product.id_hangsx }" />"> ${ product.hangsx } </a></span>
                                                <h1 class="product_title entry-title">${product.name }</h1>
                                                <hr class="single-product-title-divider" />
                                                <div class="action-buttons"></div>
                                                <div class="woocommerce-product-details__short-description">
                                                    <p>${ product.title }</p>
                                                    <div class="nhom-qua">
                                                        <div><i class="fa fa-gift"></i> Khuyến mại<i class="fa fa-check-circle"></i></div>
                                                        <ul class="qua">
                                                            <li><i class="fa fa-check-circle"></i>Dán màn hình PPF trị giá 100.000đ</li>
                                                            <li><i class="fa fa-check-circle"></i>Dây da trị giá 350.000đ</li>
                                                            <li><i class="fa fa-check-circle"></i>Giảm 100.000đ khi mua 2 sản phẩm</li>
                                                            <li><i class="fa fa-check-circle"></i>Trả góp lãi suất 0% qua thẻ tín dụng</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <c:if test="${ product.soluong <= 0 }">
                                                	<h1>Hết hàng</h1>
                                               	</c:if>
                                               	<c:if test="${ product.soluong > 0 }">
                                               	<p>Còn : ${ product.soluong }</p>
                                                <c:if test="${ product.sale == 0 }">
                                               		<span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${product.price}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                                    </span>
                                                    </span>
                                                    </span>
                                               	</c:if>
                                               	<c:if test="${ product.sale > 0 }">
                                           			<span class="price"><span class="electro-price"><ins><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${ product.price - product.sale*product.price*0.01}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                                   	</span>
                                                   	</ins> <del><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${product.price}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del></span>
                                                   	</span>
                                                  </c:if>
                                                  

                                                <form class="variations_form cart" action='<c:url value="/AddCart/${ product.id_product }"/>' method="get" enctype='multipart/form-data' >
                                                    <div class="single_variation_wrap">
                                                        <div class="woocommerce-variation single_variation"></div>
                                                        <div class="woocommerce-variation-add-to-cart variations_button">
                                                            <button type="submit" class="single_add_to_cart_button button alt" style="width:100% !important">Thêm vào giỏ hàng</button>
                                                        </div>
                                                    </div>

                                                </form>
                                                </c:if>

                                            </div>

                                            <div class="right-single-product">
                                                <div class="widget">
                                                    <div class="textwidget">
                                                        <ul class="servies">
                                                            <li><i class="far fa-check-square"></i><strong>Cam kết 100%</strong><br /> Sản phẩm chính hãng</li>
                                                            <li><i class="far fa-paper-plane"></i><strong>SHIP COD toàn quốc</strong><br /> Nhận hàng thanh toán.</li>
                                                            <li><i class="fas fa-phone-alt"></i><strong>Gọi 0924049999</strong><br /> Để hỗ trợ 24/7.</li>
                                                            <li><i class="far fa-credit-card"></i><strong>Hỗ trợ trả góp 0%</strong><br /> qua thẻ tín dụng</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="widget">
                                                    <div class="textwidget">
                                                        <div class="order-other row">
                                                            <div class="col-sm-12">
                                                                <div class="order-tel"><a title="Gọi LD Store" href="tel:0924049999" target="_blank" rel="noopener">Đặt hàng qua điện thoại<br />
																<strong>092 404 9999</strong></a></div>
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <div class="order-fb"><a title="LD Store" href="https://www.facebook.com/ldstore.shop/" target="_blank" rel="noopener nofollow" class="external">Đặt hàng qua facebook<br />
																<strong>LD Store</strong></a></div>
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <a title="Video đánh giá smartwatch mới nhất" href="https://www.youtube.com/channel/UCyoQY5n_Q6xoLTxf0g6fPDw?sub_confirmation=1" rel="nofollow" class="external" target="_blank"><img class="wp-image-13533 aligncenter" src="<c:url value="/template/user/images/yout_lamsmart.png"/>" alt="Video đánh giá smartwatch mới nhất" /></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.single-product-wrapper -->
                                        <div class="row">


                                            <div class="woocommerce-tabs wc-tabs-wrapper">
                                                <ul class="tabs wc-tabs" role="tablist">
                                                    <li class="description_tab" id="tab-title-description" role="tab" aria-controls="tab-description">
                                                        <a href="#tab-description">Mô tả</a>
                                                    </li>
                                                    <li class="specification_tab" id="tab-title-specification" role="tab" aria-controls="tab-specification">
                                                        <a href="#tab-specification">Cấu hình</a>
                                                    </li>
                                                    <li class="specification_tab" id="tab-title-comment" role="tab" aria-controls="tab-comment">
                                                        <a href="#tab-comments">Bình luận</a>
                                                    </li>
                                                </ul>
                                                <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content wc-tab" id="tab-description" role="tabpanel" aria-labelledby="tab-title-description">
                                                    <div class="electro-description clearfix">

                                                        ${ product.detail }
                                                        
                                                    </div>
                                                    
                                                </div>
                                                <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--specification panel entry-content wc-tab" id="tab-specification" role="tabpanel" aria-labelledby="tab-title-specification">
                                                    <table class="woocommerce-product-attributes shop_attributes">
                                                        <c:if test="${not empty product.os }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Hệ Điều Hành</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.os }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                        <c:if test="${not empty product.cpu }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Thông tin phần cứng</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.cpu }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                        <c:if test="${not empty product.screen }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Màn hình</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.screen }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                        <c:if test="${not empty product.size }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Kích thước</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.size }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                        <c:if test="${not empty product.weight }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Trọng lượng</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.weight }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                        <c:if test="${not empty product.waterproof }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Chuẩn chống nước - Kháng bụi</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.waterproof }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                        <c:if test="${not empty product.mic }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Loa/Mic</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.mic }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                        <c:if test="${not empty product.pin }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Pin</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.pin }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                        <c:if test="${not empty product.strap }">
	                                                        <tr class="woocommerce-product-attributes-item ">
	                                                            <th class="woocommerce-product-attributes-item__label">Quai đeo</th>
	                                                            <td class="woocommerce-product-attributes-item__value">
	                                                                <p>${ product.strap }</p>
	                                                            </td>
	                                                        </tr>
                                                        </c:if>
                                                    </table>
                                                </div>
                                                <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content wc-tab" id="tab-comments" role="tabpanel" aria-labelledby="tab-title-comment">
                                                    <div class="electro-description clearfix">
                                                    	<p>Comments (${ commentbyidpr.size() })</p>
                                                    	<c:if test="${ not empty InfoUser }">
                                                    	<div class="form-group mt-2">
                                                    		<form:form action="" modelAttribute="comment" method="POST">
                                                    			<form:input type="hidden" path="id_user" value="${ InfoUser.id_user }"/>
                                                    			<form:input type="hidden" path="id_product" value="${ product.id_product }"/>
                                                    			<form:textarea path="content" type="text" class="form-control" required="required"></form:textarea>
                                                    			<button type="submit" class="btn btn-primary mt-2">Bình luận</button>
                                                    		</form:form>
                                                    	</div>
                                                    	</c:if>
                                                    	<c:if test="${ empty InfoUser }">
                                                    	<div class="form-group mt-2" style="text-align:center">
                                                    		<h3><a href="<c:url value="/dang-nhap"/>" style="color:blue">Đăng nhập</a> để bình luận</h3>
                                                    	</div>
                                                    	</c:if>
                                                    	<c:forEach var="item" items="${ commentbyidpr }">
	                                                        <div class="form-group mt-2">
	                                                        	<br>
														    	<div class="entry-meta row">
											                        <span class="cat-links col-md-10 form-group"><strong style="font-size: large;"><i class="ec ec-user"></i> ${ item.user }</strong>
											                        		<c:if test="${ not empty InfoUser }">
											                        			<c:if test="${ InfoUser.username == item.user || InfoUser.role == 1 || InfoUser.role == 2}">
											                        				<a href="<c:url value="/deletecomment/${ item.id_cmt }"/>" style="coler:blue" class="ml-3">Xóa</a>
											                        			</c:if>
										                        			</c:if>
											                        </span>
											                        <span class="posted-on col-md-2">
											                       			<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${ item.create_date }" />  
											                       	</span>
											                    </div>
											                    <p style="background: #f6f6f7;border: 1px solid #edeff2;padding: 15px 20px 20px 20px;">
											                    	 	${ item.content }
											                    </p>
														  	</div>
													  	</c:forEach>
                                                    </div>
                                                    
                                                </div>

                                                <a class="view-more">
                                                    <span class="more-text">Xem thêm <i class="fa fa-chevron-down"></i></span>
                                                    <span class="less-text">Thu gọn <i class="fa fa-chevron-up"></i></span>
                                                </a>
                                            </div>
                                            <script>
                                                jQuery(document).ready(function() {
                                                    jQuery('body').on('click', '.view-more', function(e) {

                                                        if (jQuery('.view-more').hasClass('active')) {
                                                            jQuery('.view-more').removeClass("active");
                                                            jQuery('.woocommerce-tabs').removeClass("expanded");

                                                        } else {
                                                            jQuery('.view-more').addClass("active");
                                                            jQuery('.woocommerce-tabs').addClass("expanded");
                                                        }


                                                    });
                                                });
                                            </script>
                                            <div class="right-detail-product">
                                                <div class="widget">
                                                    <h3>Bài viết mới nhất</h3>
                                                    <ul>
                                                    	<c:forEach var="item" items="${ news }">
	                                                    	<li>
	                                                            <a class="post-thumbnail" href="<c:url value="/tin-tuc/${item.id_news }"/>"><img width="150" height="150" src="<c:url value="/template/user/images/${item.img }"/>" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" loading="lazy" sizes="(max-width: 150px) 100vw, 150px" /></a>
	                                                            <div class="post-content">
	                                                                <a class="post-name" href="<c:url value="/tin-tuc/${item.id_news }"/>">${ item.title }</a>
	                                                                <span class="post-date"><fmt:formatDate  value="${ item.create_date }" type="date" dateStyle="short" />  </span>
	                                                            </div>
	                                                        </li>
                                                    	</c:forEach>
                                                        
                                                        
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <section class="related products">

                                            <h2>Sản phẩm tương tự</h2>

                                            <ul data-view="grid" data-bs-toggle="regular-products" class="products products list-unstyled row g-0 row-cols-2 row-cols-md-3 row-cols-lg-5 row-cols-xl-5 row-cols-xxl-5">
												<c:forEach var="item" items="${ category }">
	                                                <li class="product type-product">
	                                                    <div class="product-outer product-item__outer">
	                                                        <div class="product-inner product-item__inner">
	                                                            <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/product/${ product.hangsx }/${ product.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
	                                                                <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
	                                                                    <h2 class="woocommerce-loop-product__title">${item.name }</h2>
	                                                                    <div class="product-thumbnail product-item__thumbnail">
	                                                                        <c:if test="${ item.sale > 0 }">
						                                                    	<span class="onsale">-<span class="percentage">${item.sale }%</span></span>
						                                                    </c:if>
	                                                                        <img width="600" height="600" src="<c:url value="/template/user/images/${item.img }"/>" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" /></div>
	                                                                </a>
	                                                            </div>
	                                                            <!-- /.product-loop-header -->
	                                                            
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
	                                                                <!-- /.price-add-to-cart -->
	                                                                <div class="hover-area">
	                                                                    <div class="action-buttons"></div>
	                                                                </div>
	                                                            </div>
	                                                            <!-- /.product-loop-footer -->
	                                                        </div>
	                                                        <!-- /.product-inner -->
	                                                    </div>
	                                                    <!-- /.product-outer -->
	                                                </li>
                                                </c:forEach>


                                            </ul>

                                        </section>
                                    </div>



                                </main>
                                <!-- #main -->
                            </div>
                            <!-- #primary -->



                        </div>
                    </div>
                    <!-- .col-full -->
                </div>
                
</div>
</c:if>