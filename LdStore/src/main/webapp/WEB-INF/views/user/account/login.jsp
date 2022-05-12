<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
        <title>Đăng nhập</title>
        <div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="/LdStore/">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>Đăng nhập</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">


                            <article id="post-29" class="post-29 page type-page status-publish hentry">

                                <div class="entry-content">
                                    <div class="woocommerce">
                                        <div class="customer-login-form no-registration-form">
                                            <div class="woocommerce-notices-wrapper"></div>
                                            <h2>Đăng nhập</h2>
                                            <c:if test="${not empty statuslogin }">
												<div class="woocommerce-notices-wrapper">
													<div class="alert alert-danger" role="alert">
														 ${ statuslogin }	</div>
												</div>
											</c:if>

                                            <form:form action="dang-nhap" modelAttribute="user" class="woocommerce-form woocommerce-form-login login"  method="post">
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                    <label for="username">Tên tài khoản hoặc địa chỉ email&nbsp;<span class="required">*</span></label>
                                                    <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="username" placeholder="Mời nhập tên tài khoản" />  
                                                </p>
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                    <label for="password">Mật khẩu&nbsp;<span class="required">*</span></label>
                                                    <span class="password-input">
                                                    	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="password" path="password" placeholder="Mời nhập mật khẩu" />  
                                                    <span class="show-password-input"></span></span>
                                                </p>


                                                <p class="form-row">
                                                    <label class="woocommerce-form__label woocommerce-form__label-for-checkbox woocommerce-form-login__rememberme">
												<input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever"> <span>Ghi nhớ mật khẩu</span>
											</label>
                                            <div class="col-auto d-flex justify-content-center align-items-center">
												<button type="submit" class="woocommerce-button button woocommerce-form-login__submit" style="width:50%" name="login" value="Đăng nhập">Đăng nhập</button>
											</div>
											<div class="col-auto d-flex justify-content-center align-items-center">
                                             	<p class="woocommerce-LostPassword lost_password">
                                             	Bạn chưa có có tài khoản ?
                                                 <a href="<c:url value="/dang-ky"/>" style="color: chocolate;">Đăng ký ngay</a>
                                             	</p>
                                             </div>
                                            </form:form>


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