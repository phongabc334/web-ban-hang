<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<header id="masthead" class="site-header header-v5">
                <div class="stick-this">
                    <div class="container hidden-lg-down d-none d-xl-block">
                        <div class="masthead row align-items-center">
                            <div class="header-logo-area d-flex justify-content-between align-items-center">
                                <div class="header-site-branding">
                                    <a href="/LdStore/" class="header-logo-link">
                                        <img src="<c:url value="/template/user/images/ld-store-logo-bluemind.png"/>" alt="LD Store" class="img-header-logo" width="447" height="135" />
                                    </a>
                                </div>
                            </div>
                            <form class="navbar-search col" method="get" action="/LdStore/search/" autocomplete="off">
                                <label class="sr-only screen-reader-text visually-hidden" for="search">Search for:</label>
                                <div class="input-group">
                                    <div class="input-search-field">
                                        <input type="text" id="search" class="form-control search-field product-search-field" dir="ltr" value="" name="s" placeholder="Tôi có thể giúp gì cho bạn ..." autocomplete="off" />
                                    </div>
                                    <div class="input-group-btn">
                                        <button type="submit" class="btn btn-secondary"><i class="ec ec-search"></i></button>
                                    </div>
                                </div>
                            </form>
                            <div class="col-auto d-flex justify-content-end align-items-center">
                                 <div class="dropdown">
								  
								  <c:if test="${ empty InfoUser }">
								  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
								    <i class="ec ec-user"></i>
								  </button>
									  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
									    <li><a class="dropdown-item" href="<c:url value="/dang-nhap"/>">Đăng nhập</a></li>
									    <li><a class="dropdown-item" href="<c:url value="/dang-ky"/>">Đăng ký</a></li>
									  </ul>
								  </c:if>
								  <c:if test="${ not empty InfoUser}">
								  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
								    <i class="ec ec-user"></i>${ InfoUser.username }
								  </button>
			  						  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
									    <li><a class="dropdown-item" href="<c:url value="/thong-tin-tai-khoan"/>">Thông tin tài khoản</a></li>
									    <li><a class="dropdown-item" href="<c:url value="/dang-xuat"/>">Đăng xuất</a></li>
									  </ul>
								  </c:if>
								  
								</div>
                            </div>
                            
                            <div class="header-icons col-auto d-flex justify-content-end align-items-center">
                                <div class="header-icon header-icon__cart animate-dropdown dropdown">
                                    <a class="" href="<c:url value="/gio-hang"/>">
                                        <i class="ec ec-shopping-bag"></i>
                                        <span class="cart-items-count count header-icon-counter">
                                        	<c:if test="${ not empty totalQuanty }">${ totalQuanty }</c:if>
                                        	<c:if test="${ empty totalQuanty }">0</c:if>
                                        </span>
                                        <span class="price">
                                        	<span class="electro-price">
                                        		<span class="woocommerce-Price-amount amount">
                                        			<bdi><fmt:formatNumber type="number" groupingUsed="true" value="${totalPrice }" />&nbsp;
                                        			</bdi>
                                        			<c:if test="${ totalPrice == null }"><bdi>0</bdi></c:if>
                                        			<span class="woocommerce-Price-currencySymbol">&#8363;</span>
                                        		</span>
                                        	</span>
                                        </span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-mini-cart border-bottom-0-last-child">
                                        <li>
                                            <div class="widget woocommerce widget_shopping_cart">
                                                <div class="widget_shopping_cart_content"></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- /.header-icons -->
                        </div>
                        <div class="electro-navigation-v5">
                            <div class="container">
                                <div class="electro-navigation row">
                                    <div class="departments-menu-v2">
                                        <div class="dropdown">
                                            <a href="#" class="departments-menu-v2-title" data-bs-toggle="dropdown">
                                                <span>Danh mục sản phẩm<i class="departments-menu-v2-icon ec ec-arrow-down-search"></i></span>
                                            </a>
                                            <ul id="menu-danh-muc-san-pham-1" class="dropdown-menu yamm">
                                            	<c:forEach var="item" items="${ categorys }" varStatus="category">
                                                	<li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-11020"><a title="${ item.name }" href="<c:url value="/cua-hang/?s=${item.id}" />">${ item.name }</a></li>
                                                </c:forEach>
                                                </ul>
                                        </div>
                                    </div>
                                    <div class="secondary-nav-menu col electro-animate-dropdown position-relative">
                                        <ul id="menu-about-ldstore" class="secondary-nav yamm">
                                            <li id="menu-item-47144" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-47144"><a title="Giới thiệu" href="<c:url value="/gioi-thieu"/>">Giới thiệu</a></li>
                                            <li id="menu-item-47145" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-47145"><a title="Tất cả sản phẩm" href="<c:url value="/cua-hang"/>" >Tất cả sản phẩm</a></li>
                                            <li id="menu-item-47146" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-47146"><a title="Tin tức Smartwatch" href="<c:url value="/tin-tuc"/>">Tin tức Smartwatch</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- menu phone -->
                    <div class="handheld-header-wrap container hidden-xl-up d-xl-none">
                        <div class="handheld-header-v2 row align-items-center handheld-stick-this ">
                            <div class="off-canvas-navigation-wrapper off-canvas-hide-in-desktop d-xl-none">
                                <div class="off-canvas-navbar-toggle-buttons clearfix">
                                    <button class="navbar-toggler navbar-toggle-hamburger " type="button">
                                            <i class="ec ec-menu"></i>
                                        </button>
                                    <button class="navbar-toggler navbar-toggle-close " type="button">
                                            <i class="ec ec-close-remove"></i>
                                        </button>
                                </div>

                                <div class="off-canvas-navigation light" id="default-oc-header">
                                    <ul id="menu-danh-muc-san-pham-2" class="nav nav-inline yamm">
                                        <c:forEach var="item" items="${ categorys }" varStatus="category">
                                       		<li id="menu-item-11020" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-11020"><a title="${ item.name }" href="">${ item.name }</a></li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <div class="header-logo">
                                <a href="index.html" class="header-logo-link">
                                    <img src="<c:url value="/template/user/images/ld-store-logo-bluemind.png"/>" alt="LD Store" class="img-header-logo" width="447" height="135" />
                                </a>
                            </div>
                            <div class="handheld-header-links">
                                <ul class="columns-3">
                                    <li class="search">
                                        <a href="#">Search</a>
                                        <div class="site-search">
                                            <div class="widget woocommerce widget_product_search">
                                                <form role="search" method="get" class="woocommerce-product-search" action="https://ldstore.vn/">
                                                    <label class="screen-reader-text" for="woocommerce-product-search-field-0">Tìm kiếm:</label>
                                                    <input type="search" id="woocommerce-product-search-field-0" class="search-field" placeholder="Tìm sản phẩm&hellip;" value="" name="s" />
                                                    <button type="submit" value="Tìm kiếm">Tìm kiếm</button>
                                                    <input type="hidden" name="post_type" value="product" />
                                                </form>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="my-account">
                                        <a href="my-account/index.html"><i class="ec ec-user"></i></a> </li>
                                    <li class="cart">
                                        <a class="footer-cart-contents" href="cart/index.html" title="View your shopping cart">
                                            <i class="ec ec-shopping-bag"></i>
                                            <span class="cart-items-count count">${ Cart.size() }</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </header>