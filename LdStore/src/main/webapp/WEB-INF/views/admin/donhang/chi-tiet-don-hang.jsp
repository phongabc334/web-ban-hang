<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<c:if test="${ empty InfoAdmin }">
	<div>
        <p style="margin-top: 50vh;text-align: center;font-size: x-large;"> Bạn phải <a href="<c:url value="/admin/dang-xuat"/>">Đăng nhập</a> mới có quyền truy cập </p>
    </div>
</c:if>

<c:if test="${ not empty InfoAdmin }" >
<%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>
<!-- partial -->
<div class="container-fluid page-body-wrapper">

<%@include file="/WEB-INF/views/layouts/admin/menu.jsp" %>
<c:if test="${ InfoAdmin.role == 1 || InfoAdmin.role == 3 }" >
	<div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h2>Xin chào, ${ InfoAdmin.username }</h2>
                    <div class="d-flex">
                      <i class="mdi mdi-home text-muted hover-cursor"></i>
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý đơn hàng&nbsp;&nbsp;/&nbsp;Chi tiết đơn hàng</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Chi tiết đơn hàng</h4>
                
                <c:if test="${ not empty statusNoProviser }">
	                <div class="alert alert-danger" role="alert">
					  ${ statusNoProviser }
					</div>
				</c:if>
				<c:if test="${ not empty statusOkProviser }">
	                <div class="alert alert-primary" role="alert">
					  ${ statusOkProviser }
					</div>
				</c:if>
				<div class="row">
				<table  class="col-md-6">
                   <tbody>
                   	<tr>
                           <th class="product-name">Tên người nhận :</th>
                           <td> ${ AdminUserbilldetail.user }</td>
                       </tr>
                       <tr>
                           <th class="product-name">Số điện thoại người nhận :</th>
                           <td> ${ AdminUserbilldetail.phone }</td>
                       </tr>
                       <tr>
                           <th class="product-name">Địa chỉ người nhận :</th>
                           <td> ${ AdminUserbilldetail.address }</td>
                       </tr>
                       
                       <tr>
                           <th class="product-name">Trạng thái : </th>
                           <td>
                          	 ${ AdminUserbilldetail.status }
                           </td>
                       </tr>
                       <tr>
                           <th class="product-name">Tổng số sản phẩm :</th>
                           <td> ${ AdminUserbilldetail.quanty }</td>
                       </tr>
                       <tr>
                           <th class="product-name">Tổng tiền:</th>
                           <td> <span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${AdminUserbilldetail.total}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
              				</span> </span></span></td>
                       </tr>
                   </tbody>
               </table>
               <table class="col-md-6">
                   <tbody>
                   	<tr>
                           <th class="product-name">Mã đơn hàng :</th>
                           <td> ${ AdminUserbilldetail.id }</td>
                       </tr>
                       <tr>
                           <th class="product-name">Mã tài khoản đặt :</th>
                           <td> 
                           <a href="<c:url value="/admin/quan-ly-tai-khoan/?s=${ AdminUserbilldetail.id_user }"/>">${ AdminUserbilldetail.id_user }</a></td>
                       </tr>
                       <tr>
                           <th class="product-name">Ngày đặt :</th>
                           <td> <fmt:formatDate type="both" dateStyle="short" timeStyle="short"  value="${AdminUserbilldetail.create_date}" /></td>
                       </tr>
                       
                       <tr>
                           <th class="product-name">Ngày cập nhật : </th>
                           <td>
                          	 <fmt:formatDate type="both" dateStyle="short" timeStyle="short"  value="${AdminUserbilldetail.update_date}" />
                           </td>
                       </tr>
                       <tr>
                           <th class="product-name">Hình thức thanh toán :</th>
                           <td> ${ AdminUserbilldetail.payments }</td>
                       </tr>
                       <tr>
                           <th class="product-name">Ghi chú:</th>
                           <td>${ AdminUserbilldetail.note } </td>
                       </tr>
                   </tbody>
               </table>
               </div>
                <div class="table-responsive pt-3">
                  <table id="recent-purchases-listing" class="table table-bordered">
                    <thead>
                      <tr>
                        <th>
                          Mã sản phẩm
                        </th>
                        <th>
                          Tên tên sản phẩm
                        </th>
                        <th>
                          Số lượng
                        </th>
                        <th>
                          Đơn giá
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      	<c:forEach var="item" items="${ Adminbilldetail }">
                        <tr>
	                        <td>
	                          <a href="<c:url value="/admin/quan-ly-san-pham/?s=${ item.id_product }"/>">${ item.id_product }</a>
	                        </td>
	                        <td>
	                          <a href="<c:url value="/admin/quan-ly-san-pham/?s=${ item.name }"/>">${ item.name }</a>
	                        </td>
	                        <td>
	                          ${ item.quanty }
	                        </td>
	                        <td>
	                        <span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.total/item.quanty}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							</span> </span></span>
	                        </td>
	                      </tr>
                      	</c:forEach>
                    </tbody>
                  </table>
               	</div>
               	<div class="row mt-4 ml-1">
					<div>
						<a class="mr-2 ml-3" href="/LdStore/admin/quan-ly-hoa-don">
	                      <span class="menu-title btn btn-outline-danger btn-fw">Quay lại</span>
	                    </a>
					</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      </c:if>
      </div>
</c:if>