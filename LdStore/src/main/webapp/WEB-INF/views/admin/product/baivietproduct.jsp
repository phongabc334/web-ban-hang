<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<c:if test="${ empty InfoAdmin }">
	<div>
        <p style="margin-top: 50vh;text-align: center;font-size: x-large;"> Bạn phải <a href="<c:url value="/admin/dang-xuat"/>">Đăng nhập</a> mới có quyền truy cập </p>
    </div>
</c:if>
<style>
	.col-sm-3{
	    font-weight: bold;
	}
	.form-group {
    margin-bottom: 0;
	}
	img{
		max-width:100%;
		height:auto;
	}
	iframe{
		max-width:100%;
	}
	.view-more .more-text{
		display:block;
	}
	.view-more .less-text{
		display:none;
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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý sản phẩm&nbsp;&nbsp;/&nbsp;Thông tin chi tiết sản phẩm</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Bài viết</h4>
                <div class="form-sample">
                <c:if test="${empty AdminDetailProduct.detail }">
                	
                	<h4>Sản phẩm này chưa có bài viết</h4>
                
                </c:if> 
                  <div class="row">
                  	${ AdminDetailProduct.detail }
                  </div>
                  
                  <div class="d-flex justify-content-center">
                    <a class="nav-link" href="/LdStore/admin/chi-tiet-san-pham/${ AdminDetailProduct.id_product }">
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
      <!-- main-panel ends -->
    </div>
      
</c:if>