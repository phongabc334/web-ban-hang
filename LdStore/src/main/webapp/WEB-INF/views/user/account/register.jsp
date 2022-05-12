<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
        <title>Đăng ký</title>
        <div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="/LdStore/">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>Đăng ký</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">
                        
                            <article id="post-29" class="post-29 page type-page status-publish hentry">

                                <div class="entry-content">
                                    <div class="woocommerce">
                                        <div class="customer-login-form no-registration-form">
                                            <div class="woocommerce-notices-wrapper"></div>

                                            <h2>Đăng ký tài khoản</h2>
                                            <c:if test="${ status != null }">
												<div class="woocommerce-notices-wrapper">
													<div class="alert alert-danger" role="alert">
														 ${ status }	</div>
												</div>
											</c:if>
                                            <form:form action="dang-ky" modelAttribute="user" method="POST">  
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                    <label for="username">Tên tài khoản&nbsp;<span class="required">*</span></label>
                                                    <form:input class="woocommerce-Input woocommerce-Input--text input-text" path="username" placeholder="Mời nhập tên tài khoản" autofocus="true" required="required"/>  
                                                </p>
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                    <label for="password">Mật khẩu&nbsp;<span class="required">*</span></label>
                                                    <span class="password-input">
                                                    	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="password" path="password" placeholder="Mời nhập mật khẩu" required="required"/>  
                                                    <span class="show-password-input"></span></span>
                                                </p>
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
	                                                 <label for="username">Email&nbsp;<span class="required">*</span></label>
	                                                 <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="email" path="email" placeholder="Mời nhập email" required="required"/>  
                                                </p>
                                                <div class="row woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
	                                                 <div class="col-md-6">
	                                                 	<label for="username">Họ&nbsp;<span class="required">*</span></label>
	                                                 	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="firstname" placeholder="Mời nhập họ" required="required"/>  
                                                	</div>
                                                	<div class="col-md-6">
	                                                 	<label for="username">Tên&nbsp;<span class="required">*</span></label>
	                                                 	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="lastname" placeholder="Mời nhập tên" required="required"/>  
                                                	</div>
                                                </div>	
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
	                                                <label for="username">Số điện thoại&nbsp;<span class="required">*</span></label>
	                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="number" path="phone" placeholder="Mời nhập số điện thoại" required="required"/>  
                                               	</p>
                                               	<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
	                                                <label for="username">Địa chỉ&nbsp;<span class="required">*</span></label>
	                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="address" placeholder="Mời nhập địa chỉ" required="required"/>  
                                               	</p>
												<div class="col-auto d-flex justify-content-center align-items-center">
													<button type="submit" class="woocommerce-button button woocommerce-form-login__submit" style="width:50%" name="register" value="Đăng ký">Đăng ký</button>
												</div>
                                                 <div class="col-auto d-flex justify-content-center align-items-center">
                                                 	<p class="woocommerce-LostPassword lost_password">
	                                                	Bạn đã có tài khoản ?
	                                                    <a href="<c:url value="/dang-nhap"/>" style="color: chocolate;">Đăng nhập</a>
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
