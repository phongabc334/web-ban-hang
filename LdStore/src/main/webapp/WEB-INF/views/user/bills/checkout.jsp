<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
        <div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="/LdStore/">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>Đặt hàng</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">
                            <article id="post-28" class="post-28 page type-page status-publish hentry">
                                <header class="entry-header">
                                    <h1 class="entry-title">Đặt hàng</h1>
                                </header>
                                <!-- .entry-header -->
                                <div class="entry-content">
                                    <div class="woocommerce">
                                        <div class="woocommerce-notices-wrapper"></div>
                                        <div class="woocommerce-notices-wrapper"></div>
                                        <form:form action="checkout" modelAttribute="bills" method="POST" class="checkout woocommerce-checkout">
                                            <div class="col2-set" id="customer_details">
                                                <div class="col-1">
                                                    <div class="woocommerce-billing-fields">
                                                        <h3>Thông tin thanh toán</h3>
                                                        <div class="woocommerce-billing-fields__field-wrapper">
                                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                                <label for="username">Tên người nhận&nbsp;<span class="required">*</span></label>
                                                                <form:input path="id_user" type="hidden" value="${ InfoUser.id_user }" />
                                                                <form:input path="total" type="hidden" value="${ totalPrice }" />
                                                                <form:input path="quanty" type="hidden" value="${ totalQuanty }" />
                                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" path="user" placeholder="Mời nhập tên người nhận" autofocus="true" required="required" />
                                                            </p>
                                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                                <label for="username">Số điện thoại người nhận&nbsp;<span class="required">*</span></label>
                                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="number" path="phone" placeholder="Mời nhập số điện thoại người nhận" required="required" />
                                                            </p>
                                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                                <label for="username">Địa chỉ người nhận&nbsp;<span class="required">*</span></label>
                                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="address" placeholder="Mời nhập địa chỉ người nhận" required="required" />
                                                            </p>
                                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                                <label for="username">Ghi chú&nbsp;<span class="required">*</span></label>
                                                                <form:textarea class="woocommerce-Input woocommerce-Input--text input-text" type="text" path="note" />
                                                            </p>
                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="order-review-wrapper">
                                                <h3 id="order_review_heading_v2">Đơn hàng của bạn</h3>
                                                <div id="order_review" class="woocommerce-checkout-review-order">
                                                    <table class="shop_table woocommerce-checkout-review-order-table">
                                                        <thead>
                                                            <tr>
                                                                <th class="product-name">Sản phẩm</th>
                                                                <th class="product-total">Tạm tính</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="item" items="${ Cart }">
                                                                <tr class="cart_item">
                                                                    <td class="product-name">
                                                                        ${ item.value.productsDto.name }&nbsp; <strong class="product-quantity">×&nbsp;${ item.value.quanty }</strong> </td>
                                                                    <td class="product-total">
                                                                        <span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.value.productsDto.price - item.value.productsDto.price*item.value.productsDto.sale*0.01}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                                                        </span>
                                                                        </span>
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr class="cart-subtotal">
                                                                <th>Tạm tính</th>
                                                                <td><span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${totalPrice}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                                                    </span>
                                                                    </span>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr class="order-total">
                                                                <th>Tổng</th>
                                                                <td><span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${totalPrice}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                                                    </span>
                                                                    </span>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>

                                                    <div id="payment" class="woocommerce-checkout-payment">
                                                        <ul class="wc_payment_methods payment_methods methods">
                                                            <li class="wc_payment_method payment_method_cod">
                                                                <form:radiobutton path="payments" id="payment_method_cod" class="input-radio" checked="checked" value="Trả tiền mặt khi nhận hàng" />
                                                                <label for="payment_method_cod">Trả tiền mặt khi nhận hàng 	</label>
                                                            </li>
                                                        </ul>
                                                        <div class="form-row place-order">

                                                            <div class="woocommerce-terms-and-conditions-wrapper">
                                                                <div class="woocommerce-privacy-policy-text"></div>
                                                            </div>


                                                            <button type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Đặt hàng" data-value="Đặt hàng">Đặt hàng</button>
                                                            <div id="woo_pp_ec_button_checkout" style="display: none;"></div>

                                                        </div>

                                                    </div>

                                                </div>
                                                <!-- /.order-review-wrapper -->
                                        </form:form>
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