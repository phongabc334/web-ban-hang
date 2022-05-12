<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Trang chủ</title>
        	
			<div id="content" class="site-content" tabindex="-1">
                <div class="container">
                    <div class="site-content-inner row">
                        <div id="primary" class="content-area">
                            <main id="main" class="site-main">

                                <div class="entry-content">
                                
                                	<!-- slide and news -->
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <div class="slider-with-da-block">
                                                        <div class="slider-with-da-block-inner row">
                                                            <div class="slider-wrapper mb-xl-0">
																 <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="height: 100%;">
																  <div class="carousel-inner" style="height: 100%;">
																  		 <div class="carousel-item active" style="height: 100%;">
																  		 	<img src="template/user/images/banner_galaxy_watch3_LTE_byHongTS.jpg" class="d-block w-100 h-100" alt="...">
																		 </div>
																  </div>
																</div>
                                                            </div>
                                                            <div class="da-block-wrapper">
                                                                <div class="da-block justify-content-between flex-nowrap align-items-stretch overflow-auto row row-cols-md-2 row-cols-xl-3">
                                                                    <c:forEach var="item" items="${ news }" begin='1' end='3'>
	                                                                    <div class="da">
	                                                                        <div class="da-inner p-3 position-relative">
	                                                                            <a class="da-media d-flex stretched-link" href="<c:url value="tin-tuc/${ item.id_news }"/>">
	                                                                                <div class="da-media-left me-3"><img src="template/user/images/${ item.img }" alt="" /></div>
	                                                                                <div class="da-media-body">
	                                                                                    <div class="">
	                                                                                    	<span class="class-span">${ item.title }</span>
                                                                                        </div>
	                                                                                    <div class="da-action">
	                                                                                        Xem Ngay </div>
	                                                                                </div>
	                                                                            </a>
	                                                                        </div>
	                                                                    </div>
                                                                    </c:forEach>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- số 1 -->
                                    <c:if test="${ newproduct.size() > 0 }">
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <section class="products-8-1  stretch-full-width">
                                                        <div class="container">
                                                            <header class="show-nav">
                                                                <h2 class="h1">${ statusproduct0 }</h2>
                                                            </header>
                                                            <div class="columns-8-1 row g-0">
                                                                <div class="product-main-8-1 col-lg-5 col-xxl-4">
                                                                    <ul class="products exclude-auto-height row g-0">
                                                                        <c:forEach var="item" items="${ newproduct }" varStatus="loop">
                                                                        	<c:if test="${ loop.first }">
                                                                        		<div class="product type-product" style="border: 2px solid #f4f4f4; background-color: #fff;">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="flex-div">
		                                                                                        <div class="product-loop-header product-item__header">
		                                                                                            <span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                            <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                                <h2 class="woocommerce-loop-product__title">${ item.name }</h2>
		                                                                                            </a>
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-header -->
		                                                                                        <div class="images">
		                                                                                            <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-main-image" title=""><img width="600" height="600" src="template/user/images/${item.img }" class="attachment-shop_single size-shop_single wp-post-image"
		                                                                                                    alt="" loading="lazy" title="Gallery-Active2-LTE-44mm-Silver-11" sizes="(max-width: 600px) 100vw, 600px" /></a>
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-body -->
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
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-footer -->
		                                                                                    </div>
		                                                                                    <!-- /.flex-div -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </div>
                                                                        	</c:if>
                                                                        </c:forEach>
                                                                        
                                                                    </ul>
                                                                </div>
                                                                <div class="products-8 col-lg-7 col-xxl-8">
                                                                    <ul class="products exclude-auto-height row g-0 row-cols-2 row-cols-lg-3 row-cols-xxl-4">
                                                                        <c:forEach var="item" items="${ newproduct }" varStatus="loop">
                                                                        	<c:if test="${ not loop.first }">
		                                                                        <li class="product type-product">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                        <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                            <h2 class="woocommerce-loop-product__title">${item.name }</h2>
		                                                                                            <div class="product-thumbnail product-item__thumbnail">
		                                                                                            	<c:if test="${ item.sale > 0 }">
		                                                                                            		<span class="onsale">-<span class="percentage">${ item.sale } %</span></span>
		                                                                                            	</c:if>
		                                                                                            	
		                                                                                                <img width="600" height="600" src="template/user/images/${item.img }" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" />
		                                                                                            </div>
		                                                                                        </a>
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-body -->
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
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-footer -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </li>
                                                                        	</c:if>
                                                                        </c:forEach>
                                                                            
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </c:if>
                                    <!-- Số 2 -->
                                    <c:if test="${ newproduct1.size() > 0 }">
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <section class="products-4-1-4 stretch-full-width" style="margin-top: -3em;">
                                                        <div class="container">

                                                            <header class="show-nav">
                                                                <h2 class="h1">${ statusproduct1 }</h2>
                                                                <ul class="nav nav-inline">
                                                                </ul>
                                                            </header>
                                                            <div class="columns-4-1-4 row g-0">
                                                                <div class="products-4 products-4-left col-md-3 col-xxl-4 d-xl-flex d-xxl-block column">
                                                                    <ul class="products exclude-auto-height list-unstyled flex-md-column flex-xxl-row mb-0">
                                                                        <c:forEach var="item" items="${ newproduct1 }" begin = '1' end = '4'>
                                                                        	<li class="product type-product">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                        <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                            <h2 class="woocommerce-loop-product__title">${item.name }</h2>
		                                                                                            <div class="product-thumbnail product-item__thumbnail">
		                                                                                            	<c:if test="${ item.sale > 0 }">
		                                                                                            		<span class="onsale">-<span class="percentage">${ item.sale } %</span></span>
		                                                                                            	</c:if>
		                                                                                                <img width="600" height="600" src="template/user/images/${item.img }" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" />
		                                                                                            </div>
		                                                                                        </a>
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-body -->
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
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-footer -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </li>
                                                                        </c:forEach>
                                                                        
                                                                    </ul>
                                                                </div>
                                                                <div class="products-1 col-md-6 col-xxl-4 column">
                                                                    <ul class="products list-unstyled product-main-2-1-2 show-btn">
                                                                    <c:forEach var="item" items="${ newproduct1 }" varStatus="loop">
                                                                        	<c:if test="${ loop.first }">
                                                                        		<div class="product type-product" style="border: 2px solid #f4f4f4; background-color: #fff;">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="flex-div">
		                                                                                        <div class="product-loop-header product-item__header">
		                                                                                            <span class="loop-product-categories"><a href="<c:url value="//cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                            <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                                <h2 class="woocommerce-loop-product__title">${ item.name }</h2>
		                                                                                            </a>
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-header -->
		                                                                                        <div class="images">
		                                                                                            <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-main-image" title=""><img width="600" height="600" src="template/user/images/${item.img }" class="attachment-shop_single size-shop_single wp-post-image"
		                                                                                                    alt="" loading="lazy" title="Gallery-Active2-LTE-44mm-Silver-11" sizes="(max-width: 600px) 100vw, 600px" /></a>
		                                                                                        
		                                                                                        	<div class="thumbnails columns-3">
                                                                                        			</div>
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-body -->
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
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-footer -->
		                                                                                    </div>
		                                                                                    <!-- /.flex-div -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </div>
                                                                        	</c:if>
                                                                        </c:forEach>
                                                                    </ul>
                                                                </div>
                                                                <div class="products-4 products-4-right col-md-3 col-xxl-4 d-xl-flex d-xxl-block column">
                                                                    <ul class="products exclude-auto-height list-unstyled flex-md-column flex-xxl-row mb-0">
                                                                    	  <c:forEach var="item" items="${ newproduct1 }" begin = '5' end = '8'>
                                                                        	<li class="product type-product">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                        <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                            <h2 class="woocommerce-loop-product__title">${item.name }</h2>
		                                                                                            <div class="product-thumbnail product-item__thumbnail">
		                                                                                            	<c:if test="${ item.sale > 0 }">
		                                                                                            		<span class="onsale">-<span class="percentage">${ item.sale } %</span></span>
		                                                                                            	</c:if>
		                                                                                                <img width="600" height="600" src="template/user/images/${item.img }" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" />
		                                                                                            </div>
		                                                                                        </a>
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-body -->
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
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-footer -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </li>
                                                                        </c:forEach>
                                                                    
                                                                    </ul>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>
                                    
                                    <c:if test="${ newproduct2.size() > 0 }">

                                    <!-- số 3 -->
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <section class="section-products-carousel trending-products-carousel ">
                                                        <header>
                                                            <h2 class="h1">${ statusproduct2 }</h2>
                                                        </header>

                                                        <div class="rownew">
                                                            <ul class="products row">
                                                            	<c:forEach var="item" items="${ newproduct2 }" begin = '0' end = '5'>
                                                                        	<li class="product type-product">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                        <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                            <h2 class="woocommerce-loop-product__title">${item.name }</h2>
		                                                                                            <div class="product-thumbnail product-item__thumbnail">
		                                                                                            	<c:if test="${ item.sale > 0 }">
		                                                                                            		<span class="onsale">-<span class="percentage">${ item.sale } %</span></span>
		                                                                                            	</c:if>
		                                                                                                <img width="600" height="600" src="template/user/images/${item.img }" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" />
		                                                                                            </div>
		                                                                                        </a>
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-body -->
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
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-footer -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </li>
                                                                        </c:forEach>    
                                                            </ul>

                                                        </div>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>
                                    <c:if test="${ newproduct3.size() > 0 }">
                                    <!-- số 4 -->
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <section class="section-products-carousel trending-products-carousel ">
                                                        <header>
                                                            <h2 class="h1">${ statusproduct3 }</h2>
                                                        </header>

                                                        <div class="rownew">
                                                            <ul class="products row">
                                                            	<c:forEach var="item" items="${ newproduct3 }" begin = '0' end = '5'>
                                                                        	<li class="product type-product">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                        <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                            <h2 class="woocommerce-loop-product__title">${item.name }</h2>
		                                                                                            <div class="product-thumbnail product-item__thumbnail">
		                                                                                            	<c:if test="${ item.sale > 0 }">
		                                                                                            		<span class="onsale">-<span class="percentage">${ item.sale } %</span></span>
		                                                                                            	</c:if>
		                                                                                                <img width="600" height="600" src="template/user/images/${item.img }" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" />
		                                                                                            </div>
		                                                                                        </a>
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-body -->
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
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-footer -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </li>
                                                                        </c:forEach>
                                                            </ul>

                                                        </div>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>
                                    <c:if test="${ newproduct4.size() > 0 }">
                                    <!-- số 5 -->
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <section class="section-products-carousel trending-products-carousel ">
                                                        <header>
                                                            <h2 class="h1">${ statusproduct4 }</h2>
                                                        </header>

                                                        <div class="rownew">
                                                            <ul class="products row">
                                                                <c:forEach var="item" items="${ newproduct4 }" begin = '0' end = '5'>
                                                                 	<li class="product type-product">
                                                                       <div class="product-outer product-item__outer">
                                                                           <div class="product-inner product-item__inner">
                                                                               <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
                                                                                   <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
                                                                                       <h2 class="woocommerce-loop-product__title">${item.name }</h2>
                                                                                       <div class="product-thumbnail product-item__thumbnail">
                                                                                       	<c:if test="${ item.sale > 0 }">
		                                                                                            		<span class="onsale">-<span class="percentage">${ item.sale } %</span></span>
		                                                                                            	</c:if>
                                                                                           <img width="600" height="600" src="template/user/images/${item.img }" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" />
                                                                                       </div>
                                                                                   </a>
                                                                               </div>
                                                                               <!-- /.product-loop-body -->
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
                                                                               </div>
                                                                               <!-- /.product-loop-footer -->
                                                                           </div>
                                                                           <!-- /.product-inner -->
                                                                       </div>
                                                                       <!-- /.product-outer -->
                                                                   </li>
                                                                </c:forEach>
                                                            </ul>

                                                        </div>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>
                                    <c:if test="${ newproduct5.size() > 0 }">
                                    <!-- số 6 -->
                                    <div class="vc_row wpb_row vc_row-fluid">
                                        <div class="wpb_column vc_column_container vc_col-sm-12">
                                            <div class="vc_column-inner">
                                                <div class="wpb_wrapper">
                                                    <section class="products-8-1  stretch-full-width">
                                                        <div class="container">
                                                            <header class="show-nav">
                                                                <h2 class="h1">${ statusproduct5 }</h2>
                                                            </header>
                                                            <div class="columns-8-1 row g-0">
                                                                <div class="products-8 col-lg-7 col-xxl-8">
                                                                    <ul class="products exclude-auto-height row g-0 row-cols-2 row-cols-lg-3 row-cols-xxl-4">
                                                                        <c:forEach var="item" items="${ newproduct5 }" begin = '0' end = '7'>
                                                                        	<li class="product type-product">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="product-loop-header product-item__header"><span class="loop-product-categories"><a href="<c:url value="/cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                        <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                            <h2 class="woocommerce-loop-product__title">${item.name }</h2>
		                                                                                            <div class="product-thumbnail product-item__thumbnail">
		                                                                                            	<c:if test="${ item.sale > 0 }">
		                                                                                            		<span class="onsale">-<span class="percentage">${ item.sale } %</span></span>
		                                                                                            	</c:if>
		                                                                                                <img width="600" height="600" src="template/user/images/${item.img }" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" />
		                                                                                            </div>
		                                                                                        </a>
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-body -->
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
		                                                                                    </div>
		                                                                                    <!-- /.product-loop-footer -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </li>
                                                                        </c:forEach>
                                                                            
                                                                    </ul>
                                                                </div>
                                                                <div class="product-main-8-1 col-lg-5 col-xxl-4">
                                                                    <ul class="products exclude-auto-height row g-0">
                                                                        <c:forEach var="item" items="${ newproduct5 }" varStatus="loop">
                                                                        	<c:if test="${ loop.last }">
                                                                        		<div class="product type-product" style="border: 2px solid #f4f4f4; background-color: #fff;">
		                                                                            <div class="product-outer product-item__outer">
		                                                                                <div class="product-inner product-item__inner">
		                                                                                    <div class="flex-div">
		                                                                                        <div class="product-loop-header product-item__header">
		                                                                                            <span class="loop-product-categories"><a href="<c:url value="//cua-hang/?s=${ item.id_hangsx }" />" rel="tag">${ item.hangsx }</a></span>
		                                                                                            <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
		                                                                                                <h2 class="woocommerce-loop-product__title">${ item.name }</h2>
		                                                                                            </a>
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-header -->
		                                                                                        <div class="images">
		                                                                                            <a href="<c:url value="/product/${ item.id_product }"/>" class="woocommerce-main-image" title=""><img width="600" height="600" src="template/user/images/${item.img }" class="attachment-shop_single size-shop_single wp-post-image"
		                                                                                                    alt="" loading="lazy" title="Gallery-Active2-LTE-44mm-Silver-11" sizes="(max-width: 600px) 100vw, 600px" /></a>
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-body -->
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
		                                                                                        </div>
		                                                                                        <!-- /.product-loop-footer -->
		                                                                                    </div>
		                                                                                    <!-- /.flex-div -->
		                                                                                </div>
		                                                                                <!-- /.product-inner -->
		                                                                            </div>
		                                                                            <!-- /.product-outer -->
		                                                                        </div>
                                                                        	</c:if>
                                                                        </c:forEach>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>
                                </div>

                            </main>
                            <!-- #main -->
                        </div>
                        <!-- #primary -->

                    </div>
                </div>
                <!-- .col-full -->
            </div>
            
<content tag="script">
<script>
	$(document).ready(function ()
		   { $(".class-span").each(function(i){
		        var len=$(this).text().trim().length;
		        if(len>50)
		        {
		            $(this).text($(this).text().substr(0,50)+'...');
		        }
		    });
		 });
</script>
</content>