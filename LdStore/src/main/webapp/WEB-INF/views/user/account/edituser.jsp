<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
        <title>Chỉnh sửa thông tin tài khoản</title>
        <div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="/LdStore/">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>Chỉnh sửa thông tin tài khoản</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">
							<h1>${ status }</h1>
                            <article id="post-29" class="post-29 page type-page status-publish hentry">

                                <div class="entry-content">
                                    <div class="woocommerce">
                                        <div class="customer-login-form no-registration-form">
                                            <div class="woocommerce-notices-wrapper"></div>

                                            <form:form action="chinh-sua-tai-khoan" modelAttribute="user" method="POST">  
                                                    <form:input class="woocommerce-Input woocommerce-Input--text input-text" path="username" type="hidden" value="${ InfoUser.username }" required="required"/>  
	                                                 <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="hidden" path="email" value="${ InfoUser.email }" required="required"/>  
                                                <div class="row woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
	                                                 <div class="col-md-6">
	                                                 	<label for="username">Họ&nbsp;<span class="required">*</span></label>
	                                                 	<form:input path="id_user" type="hidden" value="${ InfoUser.id_user }" />
	                                                 	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="firstname" value="${ InfoUser.firstname }" />  
                                                	</div>
                                                	<div class="col-md-6">
	                                                 	<label for="username">Tên&nbsp;<span class="required">*</span></label>
	                                                 	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="lastname" value="${ InfoUser.lastname }" />  
                                                	</div>
                                                </div>	
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
	                                                <label for="username">Số điện thoại&nbsp;<span class="required">*</span></label>
	                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="number" path="phone" value="${ InfoUser.phone }" />  
                                               	</p>
                                               	<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
	                                                <label for="username">Địa chỉ&nbsp;<span class="required">*</span></label>
	                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="address" value="${ InfoUser.address }" />  
                                               	</p>
												<div class="col-auto d-flex justify-content-center align-items-center">
													<button type="submit" class="woocommerce-button button woocommerce-form-login__submit" style="width:50%" name="" value="">Lưu lại</button>
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