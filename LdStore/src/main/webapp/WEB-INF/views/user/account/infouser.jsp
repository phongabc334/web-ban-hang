<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Thông tin tài khoản</title>
<div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="/LdStore/">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>Thông tin tài khoản</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">


                            <article id="post-29" class="post-29 page type-page status-publish hentry">

                                <div class="entry-content">
                                    <div class="woocommerce">
                                        <div class="customer-login-form no-registration-form">
                                            <div class="woocommerce-notices-wrapper"></div>
                                            <c:if test="${not empty status }">
		                                <div class="col-auto d-flex justify-content-center align-items-center" >
												<div class="woocommerce-notices-wrapper" style="width:50%; text-align:center">
													<div class="woocommerce-message" role="alert" style="background-color: darkred;">
														 ${ status }	</div>
												</div>
												</div>
											</c:if>
                                            <h2>Thông tin tài khoản</h2>
                                            <table >
                                            	<tr>
			                                        <td>Tên tài khoản</td>
			                                        <td>${ InfoUser.username }</td>
			                                    </tr>
			                                    <tr>
			                                        <td>Email</td>
			                                        <td>${ InfoUser.email }</td>
			                                    </tr>
			                                    <tr>
			                                        <td>Họ tên</td>
			                                        <td>${ InfoUser.firstname } ${ InfoUser.lastname }</td>
			                                    </tr>
			                                    <tr>
			                                        <td>Số điện thoại</td>
			                                        <td>${ InfoUser.phone }</td>
			                                    </tr>
			                                    <tr>
			                                        <td>Địa chỉ</td>
			                                        <td>${ InfoUser.address }</td>
			                                    </tr>
                                            </table>
                                            <div class="row">
											<div class="col-4 align-items-center">
												<a href="<c:url value="/chinh-sua-tai-khoan"/>" class="woocommerce-button button woocommerce-form-login__submit" >Chỉnh sửa thông tin</a>
											</div>
											<div class="col-4 align-items-center">
												<a href="<c:url value="/doi-mat-khau"/>" class="woocommerce-button button woocommerce-form-login__submit" >Đổi mật khẩu</a>
											</div>
											<div class="col-4 align-items-center">
												<a href="<c:url value="/thong-tin-don-hang"/>" class="woocommerce-button button woocommerce-form-login__submit">Đơn hàng</a>
											</div>
											</div>
                                        </div>
                                        <!-- /.customer-login-form -->
                                    </div>
                                </div>
                                <!-- .entry-content -->

                            </article>
                            <!-- #post-## -->

                        </main>
                        <!-- #main -->
                    </div>
                    <!-- #primary -->

                </div>
            </div>
            <!-- .col-full -->
        </div>