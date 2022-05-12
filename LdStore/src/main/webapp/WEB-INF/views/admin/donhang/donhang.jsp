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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý đơn hàng&nbsp;&nbsp;</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Danh sách đơn hàng</h4>
                
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
                	<form class="nav-link col-12" method="get" action="/LdStore/admin/quan-ly-hoa-don/" autocomplete="off">
                        <div class="input-group">
                            <div class="input-search-field col-md-8" style="margin-top:auto; margin-bottom:auto">
                                <input type="search" id="search" style="border-color: black;" class="form-control search-field product-search-field" dir="ltr" value="" name="s" placeholder="Nhập mã, tên, trạng thái hoặc số điện thoại cần tìm" autocomplete="off" />
                            </div>
                            <div class="nav-link">
                                <button type="submit" class="menu-title btn btn-secondary">Tìm kiếm</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="table-responsive pt-3">
                  <table id="recent-purchases-listing" class="table table-bordered">
                    <thead>
                      <tr>
                        <th>
                          Mã hóa đơn
                        </th>
                        <th>
                          Tên người nhận
                        </th>
                        <th>
                          Ngày tạo
                        </th>
                        <th>
                          Hình thức thanh toán
                        </th>
                        <th>
                          Tổng tiền
                        </th>
                        <th>
                          Trạng thái
                        </th>
                        <th>
                          Hành động
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      
                      	<c:forEach var="item" items="${ adminbills }">
                        <tr>
	                        <td>
	                          ${ item.id }
	                        </td>
	                        <td>
	                          ${ item.user }
	                        </td>
	                        <td>
	                          <fmt:formatDate type="both" dateStyle="short" timeStyle="short"  value="${item.create_date}" />  
	                        </td>
	                        <td>
	                          ${ item.payments }
	                        </td>
	                        <td>
	                        <span class="price"><span class="electro-price"><span class="woocommerce-Price-amount amount"><bdi><fmt:formatNumber type="number" groupingUsed="true" value="${item.total}" />&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
							</span> </span></span>
	                        </td>
	                        <td>
	                          	<c:if test="${ item.status == 'Đang chờ' }"><p style="margin: auto;" class="alert alert-secondary">${ item.status }</p></c:if>
	                       		<c:if test="${ item.status == 'Đang chuẩn bị hàng' }"><p style="margin: auto;" class="alert alert-warning">${ item.status }</p></c:if>
	                       		<c:if test="${ item.status == 'Đang giao hàng' }"><p style="margin: auto;" class="alert alert-info">${ item.status }</p></c:if>
	                       		<c:if test="${ item.status == 'Giao hàng thành công' }"><p style="margin: auto;" class="alert alert-success">${ item.status }</p></c:if>
	                       		<c:if test="${ item.status == 'Đơn hàng đã hủy' }"><p style="margin: auto;" class="alert alert-danger">${ item.status }</p></c:if>
	                        </td>
	                        <td>
	                          <div class="d-flex justify-content-left">
	                            <a class="nav-link " href="<c:url value="/admin/quan-ly-hoa-don/chi-tiet/${ item.id }"/>">
	                              <span class="menu-title btn btn-inverse-warning btn-fw pl-3 pr-3 pt-2 pb-2">Chi tiết</span>
	                            </a>
	                            <c:if test="${ item.status == 'Đang chờ' }">
		                            <a class="nav-link " href="<c:url value="/admin/cap-nhat-don-hang/${ item.id }"/>">
		                              <span class="menu-title btn btn-inverse-primary btn-fw pl-3 pr-3 pt-2 pb-2">Cập nhật</span>
		                            </a>
	                            </c:if>
	                            <c:if test="${ item.status == 'Đang chuẩn bị hàng' }">
		                            <a class="nav-link " href="<c:url value="/admin/cap-nhat-don-hang/${ item.id }"/>">
		                              <span class="menu-title btn btn-inverse-primary btn-fw pl-3 pr-3 pt-2 pb-2">Cập nhật</span>
		                            </a>
	                            </c:if>
	                            <c:if test="${ item.status == 'Đang giao hàng' }">
		                            <a class="nav-link " href="<c:url value="/admin/cap-nhat-don-hang/${ item.id }"/>">
		                              <span class="menu-title btn btn-inverse-primary btn-fw pl-3 pr-3 pt-2 pb-2">Cập nhật</span>
		                            </a>
	                            </c:if>
	                          </div>
	                        </td>
	                      </tr>
                      	</c:forEach>
                    </tbody>
                  </table>
                </div>
                <c:if test="${paginateInfo.totalPage > 1 }">
                <div class="mt-3">
	                <nav aria-label="...">
					  <ul class="pagination">
					  	<c:forEach var="item" begin="1" end="${paginateInfo.totalPage }" varStatus="loop">
                        	<c:if test="${ (loop.index) == paginateInfo.currentPage }">
	                        	<li class="page-item active" aria-current="page">
						      		<span class="page-link">${loop.index }</span>
						    	</li>
                        	</c:if>
                        	<c:if test="${ (loop.index) != paginateInfo.currentPage }">
                        		<li class="page-item"><a href='<c:url value="/admin/quan-ly-hoa-don/?s=${namesearch}&page=${loop.index }" />' class="page-link">${loop.index }</a></li>
                        	</c:if>
                        </c:forEach>
					  </ul>
					</nav>
					<p class="woocommerce-result-count">
                    Hiển thị 
                    <c:if test="${paginateInfo.currentPage == 1 }">1</c:if>
                    <c:if test="${paginateInfo.currentPage != 1 }">${ totalProductsPage*(paginateInfo.currentPage-1)}</c:if>
                     &ndash; 
                     <c:if test="${totalProductsPage*paginateInfo.currentPage > tongso}">${ tongso }</c:if>
                     <c:if test="${totalProductsPage*paginateInfo.currentPage <= tongso}">${ totalProductsPage*paginateInfo.currentPage }</c:if>
                      của ${ tongso } kết quả
                 </p>
                </div>
                </c:if>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      </c:if>
      </div>
</c:if>