<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<c:if test="${ empty InfoAdmin }">
	<div>
        <p style="margin-top: 50vh;text-align: center;font-size: x-large;"> Bạn phải <a href="<c:url value="/admin/dang-xuat"/>">Đăng nhập</a> mới có quyền truy cập </p>
    </div>
</c:if>
<style>
	.table td img {
    width: 60px;
    height: 60px;
	}
</style>
<c:if test="${ not empty InfoAdmin }" >
<%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>
<!-- partial -->
<div class="container-fluid page-body-wrapper">

<%@include file="/WEB-INF/views/layouts/admin/menu.jsp" %>
<c:if test="${ InfoAdmin.role == 1 || InfoAdmin.role == 2 }" >
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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý sản phẩm&nbsp;&nbsp;</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Danh sách sản phẩm</h4>
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
                	<div class="nav-link col-3">
                		<a  class="nav-link" href="<c:url value="/admin/them-san-pham"/>">
                  		<span class="menu-title btn btn-primary">Thêm sản phẩm</span>
                	</a>
                	</div>
                	
                	<form class="nav-link col-md-9" method="get" action="/LdStore/admin/quan-ly-san-pham/" autocomplete="off">
                        <div class="input-group">
                            <div class="input-search-field col-md-9" style="margin-top:auto; margin-bottom:auto">
                                <input type="search" id="search" style="border-color: black;" class="form-control search-field product-search-field" dir="ltr" value="" name="s" placeholder="Nhập mã hoặc tên sản phẩm cần tìm" autocomplete="off" />
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
                          Mã sản phẩm
                        </th>
                        <th>
                          Tên sản phẩm
                        </th>
                        <th>
                          Số lượng còn
                        </th>
                        <th>
                          Đã bán
                        </th>
                        <th>
                          Hành động
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      	<c:forEach var="item" items="${ AdminProducts }" varStatus="loop">
                        <tr>
	                        <td>
	                          ${ item.id_product }
	                        </td>
	                        <td>
	                          <img id="output" class="img-rounded" alt="Ảnh" width="200px" src='<c:url value="/template/user/images/${ item.img }" />' />
	                          ${ item.name }
	                        </td>
	                        <td>
	                          ${ item.soluong }
	                        </td>
	                        <td>
	                          ${ item.daban }
	                        </td>
	                        <td>
	                          <div class="d-flex justify-content-center">
	                          	<a class="nav-link " href="<c:url value="/admin/chi-tiet-san-pham/${ item.id_product }"/>">
	                              <span class="menu-title btn btn-inverse-primary  btn-fw pl-3 pr-3 pt-2 pb-2">Chi tiết</span>
	                            </a>
	                            <a class="nav-link " href="<c:url value="/admin/cap-nhat-san-pham/${ item.id_product }"/>">
	                              <span class="menu-title btn btn-inverse-warning btn-fw pl-3 pr-3 pt-2 pb-2">Cập nhật</span>
	                            </a>
	                            <a class="nav-link delete">
                                    <button data-id="${ item.id_product }" class="menu-title btn btn-inverse-danger btn-fw pl-3 pr-3 pt-2 pb-2">Xóa</button>
                                </a>
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
                        		<li class="page-item"><a href='<c:url value="/admin/quan-ly-san-pham/?s=${namesearch}&page=${loop.index }" />' class="page-link">${loop.index }</a></li>
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
      <content tag="scriptadmin">
      	<script>
	      $(document).ready(function() {
            $(".delete button").on("click", function() {
                var id = $(this).attr("data-id");
                let text = "Bạn có chắc chắn muốn xóa sản phẩm có mã là : "+id+" ??? ";
                if (confirm(text) == true) {
                	window.location.assign("<c:url value='/admin/delete-product/"+id+"'/>");
                } else {
                }
	            });
	        });
	      </script>
      </content>
</c:if>