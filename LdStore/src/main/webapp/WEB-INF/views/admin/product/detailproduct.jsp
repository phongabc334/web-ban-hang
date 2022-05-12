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
                <h4 class="card-title">Thông tin chi tiết sản phẩm</h4>
                <div class="form-sample">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label"><b>Ảnh sản phẩm</b></label>
                        <div class="col-sm-9">
                          <img src="<c:url value="/template/user/images/${AdminDetailProduct.img }"/>" alt="default" width="200">
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Mã sản phẩm</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.id_product }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tên sản phẩm</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.name }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Hãng sản xuất</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.hangsx }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Số lượng còn</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.soluong }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Số lượng đã bán</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.daban }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Giá bán</label>
                        <div class="col-sm-9">
                          <label class="col-form-label"><fmt:formatNumber type="number" groupingUsed="true" value="${AdminDetailProduct.price}" /> đ</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Giảm giá</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.sale } %</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Hệ điều hành</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.os }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">CPU</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.cpu }</label>
                        </div>
                      </div>
                    </div>
                  </div><div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Màn hình</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.screen }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Kích thước</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.size }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Trọng lượng</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.weight }</label>
                        </div>
                      </div>
                    </div>
                    
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Chuẩn chống nước,kháng bụi</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.waterproof }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Loa, mic</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.mic }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Pin</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.pin }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Dây đeo</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.strap }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tiêu đề</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.title }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Ngày tạo</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.create_date }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Người tạo</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.create_by }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Ngày cập nhật</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.update_date }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Người cập nhật</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailProduct.update_by }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="d-flex justify-content-center">
                    <a class="nav-link" href="/LdStore/admin/quan-ly-san-pham">
	                      <span class="menu-title btn btn-outline-danger btn-fw">Quay lại</span>
	                    </a>
                    <a class="nav-link" href="/LdStore/admin/bai-viet/${AdminDetailProduct.id_product }">
                      <span class="menu-title btn btn-outline-warning btn-fw ">Xem bài viết</span>
                    </a>
                    <a class="nav-link" href="/LdStore/admin/binh-luan/${AdminDetailProduct.id_product }">
                      <span class="menu-title btn btn-outline-success btn-fw ">Xem bình luận</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- main-panel ends -->
      </c:if>
    </div>
      
</c:if>