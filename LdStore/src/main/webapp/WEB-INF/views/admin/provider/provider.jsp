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
<c:if test="${ InfoAdmin.role == 1 }" >
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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý danh mục&nbsp;&nbsp;</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Danh sách danh mục</h4>
                <c:if test="${ not empty AdminAddUserStatus }">
                	<c:if test="${ AdminAddUserStatus == 'ok' }">
                		<div class="alert alert-success" role="alert">
						  Thêm thành công
						</div>
                	</c:if>
                	<c:if test="${ AdminAddUserStatus != 'ok' }">
                		<div class="alert alert-danger" role="alert">
					  ${ AdminAddUserStatus }
					</div>
                	</c:if>
				</c:if>
                <div class="row">
                	<div class="nav-link col-3">
                		<a  class="nav-link" href="<c:url value="/admin/them-danh-muc"/>">
                  		<span class="menu-title btn btn-primary">Thêm danh mục</span>
                	</a>
                	</div>
                	
                	<form class="nav-link col-md-9" method="get" action="/LdStore/admin/quan-ly-danh-muc/" autocomplete="off">
                        <div class="input-group">
                            <div class="input-search-field col-md-9" style="margin-top:auto; margin-bottom:auto">
                                <input type="search" id="search" style="border-color: black;" class="form-control search-field product-search-field" dir="ltr" value="" name="s" placeholder="Nhập mã hoặc tên danh mục cần tìm" autocomplete="off" />
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
                          Mã danh mục
                        </th>
                        <th>
                          Tên hãng sản xuất
                        </th>
                        <th>
                          Mô tả
                        </th>
                        <th>
                          Hành động
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      
                      	<c:forEach var="item" items="${ danhmuc }">
                        <tr>
	                        <td>
	                          ${ item.id }
	                        </td>
	                        <td>
	                          ${ item.name }
	                        </td>
	                        <td>
	                          ${ item.description }
	                        </td>
	                        <td>
	                          <div class="d-flex justify-content-center">
	                            <a class="nav-link " href="<c:url value="/admin/sua-danh-muc/${ item.id }"/>">
	                              <span class="menu-title btn btn-inverse-warning btn-fw pl-3 pr-3 pt-2 pb-2">Cập nhật</span>
	                            </a>
	                            <a class="nav-link delete">
                                    <button data-id="${ item.id }" class="menu-title btn btn-inverse-danger btn-fw pl-3 pr-3 pt-2 pb-2">Xóa</button>
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
                        		<li class="page-item"><a href='<c:url value="/admin/quan-ly-danh-muc/?s=${namesearch}&page=${loop.index }" />' class="page-link">${loop.index }</a></li>
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
                let text = "Bạn có chắc chắn muốn xóa danh mục có mã là : "+id+" ??? ";
                if (confirm(text) == true) {
                	window.location.assign("<c:url value='/admin/deleteprovider/"+id+"'/>");
                } else {
                }
	            });
	        });
	      </script>
      </content>
</c:if>